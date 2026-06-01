"""新协议 Motor 1 控制 GUI。

功能：
  - 连接 / 断开 PMAC
  - EtherCAT 使能（ECAT[0].enable）
  - 电机 1 使能 / 去使能（#1j/ / #1k）
  - 绝对位置移动（#1J=xx）—— 输入「相对中心」语义，锁死在 [-range, +range] 内
  - 相对位置移动（#1j:xx）—— 由当前物理位置 + 增量后是否仍在物理范围内决定
  - 0.5 s 周期轮询并显示 ActPos / ActVel / AmpEna / AmpFault / SoftLimit
  - 「中心 offset / 活动范围」可在界面里改并保存到 motor_config.json，下次启动自动加载
  - 命令 / 响应日志
  - 「去使能」=> 软急停：取消在飞的运动命令并立即发 #1k
  - 左侧 3D 视图（Qt Quick 3D，单进程，QML 场景在 viewer/Viewer.qml）实时跟随 ActPos 平移升降台

依赖：asyncssh, PySide6（含 QtQuick3D / QtQuickWidgets）, qasync
用法：python gui_motor1.py
"""

import asyncio
import json
import os
import sys
import time
from pathlib import Path

# --- Qt 平台初始化（必须在 QApplication 之前完成） ---
# 1) Ubuntu 22 + Gnome 默认 Wayland。Qt 默认想用 xcb，但缺 libxcb-xinerama 起不来。
#    会话是 Wayland 时优先用 wayland 插件（这个的 system 依赖在本机已经齐全）。
if "QT_QPA_PLATFORM" not in os.environ:
    if (os.environ.get("XDG_SESSION_TYPE") == "wayland"
            or os.environ.get("WAYLAND_DISPLAY")):
        os.environ["QT_QPA_PLATFORM"] = "wayland"

# 2) PySide6 的 wheel 一般已自带 Qt 子目录（PySide6/Qt6/... 或 PySide6/Qt/...），
#    多数情况下不需要手工挂插件路径。但有些 wheel 仍然不主动注册，所以兜底。
import PySide6
_PYSIDE6_ROOT = Path(PySide6.__file__).resolve().parent
# PySide6 6.3+ 的 wheel 把 Qt 文件挪到了 Qt6/ 目录；老版本可能还是 Qt/。两个都试。
for _qt_subdir in ("Qt6", "Qt"):
    _QT_ROOT = _PYSIDE6_ROOT / _qt_subdir
    if (_QT_ROOT / "plugins").is_dir():
        break
else:
    _QT_ROOT = _PYSIDE6_ROOT / "Qt6"   # 兜底

_QT_PLUGIN_DIR = _QT_ROOT / "plugins"
if _QT_PLUGIN_DIR.is_dir():
    os.environ.setdefault("QT_PLUGIN_PATH", str(_QT_PLUGIN_DIR))
    os.environ.setdefault("QT_QPA_PLATFORM_PLUGIN_PATH",
                          str(_QT_PLUGIN_DIR / "platforms"))

# 3) Quick 3D / QML 的 import path：PySide6 wheel 把 QtQuick3D / Helpers /
#    AssetUtils 都放在 Qt(6)/qml/ 下，让 QML 引擎能找到 RuntimeLoader 等元素。
_QML_DIR = _QT_ROOT / "qml"
if _QML_DIR.is_dir():
    os.environ.setdefault("QML2_IMPORT_PATH", str(_QML_DIR))
    os.environ.setdefault("QML_IMPORT_PATH", str(_QML_DIR))

from PySide6.QtCore import Qt, QUrl
from PySide6.QtGui import QDoubleValidator
from PySide6.QtWidgets import (
    QApplication, QWidget, QLabel, QPushButton, QLineEdit, QVBoxLayout,
    QHBoxLayout, QGridLayout, QGroupBox, QPlainTextEdit, QMessageBox,
    QSplitter, QSlider, QDoubleSpinBox, QComboBox, QMainWindow,
)
from qasync import QEventLoop, asyncSlot

from viewer3d import Viewer3DWidget

from pmac import PMAC, PmacError, STATUS_FIELDS


MOTOR = 1
POLL_S = 0.5

# ====== 可配置参数（持久化到 motor_config.json，在界面里改并保存） ======
CONFIG_PATH = Path(__file__).resolve().parent / "motor_config.json"
VIEWER_QML  = Path(__file__).resolve().parent / "viewer" / "Viewer.qml"
VIEWER_GLB  = Path(__file__).resolve().parent / "viewer" / "model.glb"
DEFAULT_CONFIG = {
    "center": 17.0,   # 固件 #1J=0 命令对应的物理 ActPos（offset）
    "range":  6.0,    # 中心两侧各允许的范围（输入域 ±range，物理域 center±range）
    # —— 3D 可视化（不影响电机命令，只控制升降台动画的视觉夸张） ——
    "viz_mm_per_unit": 15.0,  # 1 unit → 多少 mm 的视觉位移（夸张倍率，纯视觉）
    "viz_axis":        "x",   # 'x' | 'y' | 'z'
    "viz_direction":   1,     # +1 | -1
}
_FLOAT_KEYS = ("center", "range", "viz_mm_per_unit")
_INT_KEYS   = ("viz_direction",)
_STR_KEYS   = ("viz_axis",)


def load_config() -> dict:
    cfg = dict(DEFAULT_CONFIG)
    try:
        with open(CONFIG_PATH, encoding="utf-8") as f:
            disk = json.load(f)
        for k in _FLOAT_KEYS:
            if k in disk:
                cfg[k] = float(disk[k])
        for k in _INT_KEYS:
            if k in disk:
                cfg[k] = int(disk[k])
        for k in _STR_KEYS:
            if k in disk and disk[k] in ("x", "y", "z"):
                cfg[k] = disk[k]
    except (OSError, json.JSONDecodeError, ValueError, TypeError):
        pass
    return cfg


def save_config(cfg: dict) -> None:
    payload = {k: float(cfg[k]) for k in _FLOAT_KEYS}
    payload.update({k: int(cfg[k])   for k in _INT_KEYS})
    payload.update({k: str(cfg[k])   for k in _STR_KEYS})
    with open(CONFIG_PATH, "w", encoding="utf-8") as f:
        json.dump(payload, f, indent=2)
        f.write("\n")

_VAL_STYLE = ("font-family:Consolas,'Courier New',monospace;"
              "font-size:13pt;padding:4px 8px;border:1px solid #bbb;"
              "background:#fafafa;min-width:140px;")
_OK_BG = "background:#3fa84a;color:white;"
_BAD_BG = "background:#c0392b;color:white;"


class MotorPanel(QWidget):
    def __init__(self):
        super().__init__()

        self.pmac = PMAC()
        self._poll_task: asyncio.Task | None = None
        self._inflight: asyncio.Task | None = None
        self._last_status: dict[str, float | None] = {}
        self.cfg = load_config()

        # 由 MainWindow 注入；未就绪时 _push_viewer_*() 直接返回
        self._viewer: Viewer3DWidget | None = None

        self._build_ui()
        self._apply_config_to_motion_ui()   # 首次同步标签 / validator
        self._set_connected(False)

    # ------------------------------------------- viewer 桥接

    def attach_viewer(self, viewer: Viewer3DWidget):
        """MainWindow 把 Viewer3DWidget 注入进来。QML Ready 后回调把配置 + 最新位置重发一次。"""
        self._viewer = viewer
        viewer.ready_changed.connect(self._on_viewer_ready)
        # 重要：QQuickWidget.setSource 是同步的，statusChanged(Ready) 可能已经
        # 在 Viewer3DWidget.__init__ 里就发完了；这时我们才 connect 是接不到的。
        # 检查一下，如果已经 Ready，立刻手动调一次回调，把初始配置推下去。
        if viewer.is_ready:
            self._on_viewer_ready(True)

    def _on_viewer_ready(self, ready: bool):
        if not ready:
            return
        self._log("3D viewer 已就绪")
        self._push_viewer_config()
        last = self._last_status.get("ActPos")
        if isinstance(last, (int, float)):
            self._push_viewer_pos(float(last))

    def _push_viewer_config(self):
        if self._viewer is None:
            return
        # Viewer3DWidget 在 QML Ready 前会把这几个 set 缓存住，Ready 后统一回放
        self._viewer.set_center(self.cfg["center"])
        self._viewer.set_scale(self.cfg["viz_mm_per_unit"])
        self._viewer.set_axis(self.cfg["viz_axis"], int(self.cfg["viz_direction"]))

    def _push_viewer_pos(self, phys: float):
        if self._viewer is not None:
            self._viewer.set_motor_position(phys)

    # 几个根据 cfg 计算的常用边界
    @property
    def abs_min(self): return -self.cfg["range"]
    @property
    def abs_max(self): return +self.cfg["range"]
    @property
    def phys_min(self): return self.cfg["center"] - self.cfg["range"]
    @property
    def phys_max(self): return self.cfg["center"] + self.cfg["range"]

    # ---------------------------------------------------------------- UI

    def _build_ui(self):
        root = QVBoxLayout(self)

        # --- 连接
        conn_box = QGroupBox("连接")
        cb = QHBoxLayout(conn_box)
        self.status_lbl = QLabel("未连接")
        self.status_lbl.setStyleSheet("color:#888;padding:4px;font-weight:bold;")
        self.btn_connect = QPushButton("Connect")
        self.btn_disconnect = QPushButton("Disconnect")
        self.btn_connect.clicked.connect(self._on_connect)
        self.btn_disconnect.clicked.connect(self._on_disconnect)
        cb.addWidget(self.status_lbl, stretch=1)
        cb.addWidget(self.btn_connect)
        cb.addWidget(self.btn_disconnect)
        root.addWidget(conn_box)

        # --- 配置（offset / range，可改可存）
        cfg_box = QGroupBox("配置  (改后点「保存」立即生效，写入 motor_config.json)")
        cf = QGridLayout(cfg_box)

        center_validator = QDoubleValidator(self)
        center_validator.setNotation(QDoubleValidator.StandardNotation)
        self.center_input = QLineEdit(f"{self.cfg['center']}")
        self.center_input.setValidator(center_validator)
        self.center_input.setToolTip("固件 #1J=0 命令对应的物理 ActPos（offset）")

        # range 必须 > 0
        range_validator = QDoubleValidator(0.000001, 1e6, 6, self)
        range_validator.setNotation(QDoubleValidator.StandardNotation)
        self.range_input = QLineEdit(f"{self.cfg['range']}")
        self.range_input.setValidator(range_validator)
        self.range_input.setToolTip("中心两侧各允许的范围；输入域 ±range，物理域 center ± range")

        self.btn_save_cfg = QPushButton("保存")
        self.btn_save_cfg.clicked.connect(self._on_save_config)
        self.cfg_status_lbl = QLabel("")
        self.cfg_status_lbl.setStyleSheet("color:#888;padding:0 4px;")

        cf.addWidget(QLabel("中心 offset (center):"), 0, 0, alignment=Qt.AlignRight)
        cf.addWidget(self.center_input, 0, 1)
        cf.addWidget(QLabel("活动范围 ± (range):"), 0, 2, alignment=Qt.AlignRight)
        cf.addWidget(self.range_input, 0, 3)
        cf.addWidget(self.btn_save_cfg, 0, 4)
        cf.addWidget(self.cfg_status_lbl, 1, 0, 1, 5)
        cf.setColumnStretch(1, 1)
        cf.setColumnStretch(3, 1)
        root.addWidget(cfg_box)

        # --- 3D 显示比例 / 方向（不影响电机命令，只调左边动画的视觉夸张程度）
        viz_box = QGroupBox("3D 显示  (只影响左边动画，不影响电机命令)")
        vg = QGridLayout(viz_box)

        # mm/unit 同时给一个 spinbox（精确）和 slider（拖着看）
        self.viz_scale_spin = QDoubleSpinBox()
        self.viz_scale_spin.setRange(0.1, 200.0)
        self.viz_scale_spin.setDecimals(2)
        self.viz_scale_spin.setSingleStep(0.5)
        self.viz_scale_spin.setSuffix(" mm/unit")
        self.viz_scale_spin.setValue(self.cfg["viz_mm_per_unit"])

        self.viz_scale_slider = QSlider(Qt.Horizontal)
        # slider 用 int (0.1 mm 步长)；1 unit → 0.1~200 mm → slider 1~2000
        self.viz_scale_slider.setRange(1, 2000)
        self.viz_scale_slider.setValue(int(round(self.cfg["viz_mm_per_unit"] * 10)))

        # 拉的时候同步 spinbox；改 spinbox 时反向同步 slider；任何一个变都推到 viewer + 写 cfg
        self._viz_sync_lock = False
        self.viz_scale_slider.valueChanged.connect(self._on_viz_slider)
        self.viz_scale_spin.valueChanged.connect(self._on_viz_spin)

        # 运动轴 + 正反方向
        self.viz_axis_combo = QComboBox()
        self.viz_axis_combo.addItems(["x", "y", "z"])
        self.viz_axis_combo.setCurrentText(self.cfg["viz_axis"])
        self.viz_axis_combo.currentTextChanged.connect(self._on_viz_axis)

        self.viz_dir_btn = QPushButton()
        self.viz_dir_btn.setCheckable(False)
        self._refresh_viz_dir_label()
        self.viz_dir_btn.clicked.connect(self._on_viz_flip_dir)

        vg.addWidget(QLabel("显示比例:"), 0, 0, alignment=Qt.AlignRight)
        vg.addWidget(self.viz_scale_slider, 0, 1)
        vg.addWidget(self.viz_scale_spin, 0, 2)
        vg.addWidget(QLabel("运动轴:"), 1, 0, alignment=Qt.AlignRight)
        vg.addWidget(self.viz_axis_combo, 1, 1)
        vg.addWidget(self.viz_dir_btn, 1, 2)
        vg.setColumnStretch(1, 1)
        root.addWidget(viz_box)

        # --- EtherCAT
        ecat_box = QGroupBox("EtherCAT")
        eb = QHBoxLayout(ecat_box)
        self.btn_ecat = QPushButton("启动 EtherCAT  (ECAT[0].enable)")
        self.btn_ecat.clicked.connect(self._on_ecat_enable)
        eb.addWidget(self.btn_ecat)
        eb.addStretch(1)
        root.addWidget(ecat_box)

        # --- 状态
        st_box = QGroupBox(f"Motor {MOTOR} 状态 (轮询 {POLL_S}s)")
        sg = QGridLayout(st_box)
        self.status_vals: dict[str, QLabel] = {}
        for i, name in enumerate(STATUS_FIELDS):
            tag = QLabel(f"Motor[{MOTOR}].{name}")
            tag.setStyleSheet("font-weight:bold;")
            val = QLabel("--")
            val.setStyleSheet(_VAL_STYLE)
            val.setAlignment(Qt.AlignCenter)
            sg.addWidget(tag, i, 0)
            sg.addWidget(val, i, 1)
            self.status_vals[name] = val
        sg.setColumnStretch(1, 1)
        root.addWidget(st_box)

        # --- 控制（标题和 abs_input 的 range/placeholder 跟着 cfg 走，存到 self 方便刷新）
        self.ctl_box = QGroupBox()
        cg = QGridLayout(self.ctl_box)

        self.btn_enable = QPushButton(f"使能  #{MOTOR}j/")
        self.btn_disable = QPushButton(f"去使能  #{MOTOR}k   (软急停)")
        self.btn_disable.setStyleSheet("background:#c0392b;color:white;font-weight:bold;")
        self.btn_enable.clicked.connect(self._on_enable)
        self.btn_disable.clicked.connect(self._on_disable)
        cg.addWidget(self.btn_enable, 0, 0)
        cg.addWidget(self.btn_disable, 0, 1, 1, 2)

        # 绝对：输入范围 [-range, +range]（语义：相对中心），落地物理 = 输入 + center
        self.abs_validator = QDoubleValidator(self)
        self.abs_validator.setNotation(QDoubleValidator.StandardNotation)
        self.abs_input = QLineEdit()
        self.abs_input.setValidator(self.abs_validator)
        self.btn_move_abs = QPushButton(f"绝对移动  #{MOTOR}J=")
        self.btn_move_abs.clicked.connect(self._on_move_abs)
        cg.addWidget(QLabel("Abs (相对中心):"), 1, 0, alignment=Qt.AlignRight)
        cg.addWidget(self.abs_input, 1, 1)
        cg.addWidget(self.btn_move_abs, 1, 2)

        # 相对：增量直接对应物理读数变化；校验 (当前物理 + 增量) ∈ [phys_min, phys_max]
        rel_validator = QDoubleValidator(self)
        rel_validator.setNotation(QDoubleValidator.StandardNotation)
        self.rel_input = QLineEdit()
        self.rel_input.setPlaceholderText("± 增量（直接作用于物理读数）")
        self.rel_input.setValidator(rel_validator)
        self.btn_move_rel = QPushButton(f"相对移动  #{MOTOR}j:")
        self.btn_move_rel.clicked.connect(self._on_move_rel)
        cg.addWidget(QLabel("Rel Delta:"), 2, 0, alignment=Qt.AlignRight)
        cg.addWidget(self.rel_input, 2, 1)
        cg.addWidget(self.btn_move_rel, 2, 2)

        root.addWidget(self.ctl_box)

        # --- 日志
        log_box = QGroupBox("日志")
        lb = QVBoxLayout(log_box)
        self.log = QPlainTextEdit()
        self.log.setReadOnly(True)
        self.log.setMaximumBlockCount(500)
        self.log.setStyleSheet("font-family:Consolas,'Courier New',monospace;font-size:10pt;")
        lb.addWidget(self.log)
        root.addWidget(log_box, stretch=1)

        # 在飞命令进行时禁用这些按钮（不含 disable，它是急停；不含 save_cfg，它独立于连接）
        self._busy_buttons = [
            self.btn_ecat, self.btn_enable,
            self.btn_move_abs, self.btn_move_rel,
        ]
        # 整体使能/禁用控制（连接断开时）
        self._connection_buttons = self._busy_buttons + [self.btn_disable]

    # -------------------------------------------------- 配置同步与保存

    def _apply_config_to_motion_ui(self):
        """把 self.cfg 重新刷到运动控制 UI（标题 / validator / placeholder / 状态显示）。"""
        self.ctl_box.setTitle(
            f"Motor {MOTOR} 控制  "
            f"(绝对输入 [{self.abs_min:+}, {self.abs_max:+}]，"
            f"对应物理读数 [{self.phys_min}, {self.phys_max}]，"
            f"中心 offset = {self.cfg['center']})"
        )
        self.abs_validator.setRange(self.abs_min, self.abs_max, 6)
        self.abs_input.setPlaceholderText(
            f"{self.abs_min:+} ~ {self.abs_max:+}  (0 → 物理 {self.cfg['center']})"
        )
        self.cfg_status_lbl.setText(
            f"当前生效  center={self.cfg['center']}  range=±{self.cfg['range']}  "
            f"→ 物理域 [{self.phys_min}, {self.phys_max}]    "
            f"配置文件: {CONFIG_PATH}"
        )
        # center 变了 → 3D viewer 的归位点也得跟着变
        self._push_viewer_config()
        # 状态面板的 ActPos 显示带 center 换算，刷新一下
        if self._last_status:
            self._render_status(self._last_status)

    def _on_save_config(self):
        try:
            new_center = float(self.center_input.text())
            new_range = float(self.range_input.text())
        except ValueError:
            self._log("配置保存失败：center / range 不是数字")
            return
        if new_range <= 0:
            self._log("配置保存失败：range 必须 > 0")
            return
        self.cfg["center"] = new_center
        self.cfg["range"] = new_range
        try:
            save_config(self.cfg)
        except OSError as err:
            self._log(f"配置保存失败：写文件出错 {err!r}")
            return
        self._apply_config_to_motion_ui()
        self._log(f"配置已保存到 {CONFIG_PATH.name}：center={new_center}, range=±{new_range}")

    # ------------------------------------ 3D 显示控件回调

    def _refresh_viz_dir_label(self):
        self.viz_dir_btn.setText(f"方向：{'+' if self.cfg['viz_direction'] > 0 else '-'}（点击翻转）")

    def _on_viz_slider(self, v: int):
        if self._viz_sync_lock:
            return
        mm = v / 10.0
        self._viz_sync_lock = True
        self.viz_scale_spin.setValue(mm)
        self._viz_sync_lock = False
        self.cfg["viz_mm_per_unit"] = mm
        if self._viewer is not None:
            self._viewer.set_scale(mm)
        self._save_cfg_silently()
        self._repush_pos()

    def _on_viz_spin(self, mm: float):
        if self._viz_sync_lock:
            return
        self._viz_sync_lock = True
        self.viz_scale_slider.setValue(int(round(mm * 10)))
        self._viz_sync_lock = False
        self.cfg["viz_mm_per_unit"] = mm
        if self._viewer is not None:
            self._viewer.set_scale(mm)
        self._save_cfg_silently()
        self._repush_pos()

    def _on_viz_axis(self, axis: str):
        self.cfg["viz_axis"] = axis
        if self._viewer is not None:
            self._viewer.set_axis(axis, int(self.cfg["viz_direction"]))
        self._save_cfg_silently()
        self._repush_pos()

    def _on_viz_flip_dir(self):
        self.cfg["viz_direction"] = -int(self.cfg["viz_direction"])
        self._refresh_viz_dir_label()
        if self._viewer is not None:
            self._viewer.set_axis(self.cfg["viz_axis"], int(self.cfg["viz_direction"]))
        self._save_cfg_silently()
        self._repush_pos()

    def _repush_pos(self):
        v = self._last_status.get("ActPos")
        if isinstance(v, (int, float)):
            self._push_viewer_pos(float(v))

    def _save_cfg_silently(self):
        try:
            save_config(self.cfg)
        except OSError:
            pass

    # ------------------------------------------------------------ state

    def _set_connected(self, ok: bool):
        if ok:
            self.status_lbl.setText(f"已连接  {self.pmac._cfg['host']}")
            self.status_lbl.setStyleSheet("color:#080;padding:4px;font-weight:bold;")
        else:
            self.status_lbl.setText("未连接")
            self.status_lbl.setStyleSheet("color:#888;padding:4px;font-weight:bold;")
            for v in self.status_vals.values():
                v.setText("--")
                v.setStyleSheet(_VAL_STYLE)
            self._last_status = {}
        self.btn_connect.setEnabled(not ok)
        self.btn_disconnect.setEnabled(ok)
        for b in self._connection_buttons:
            b.setEnabled(ok)

    def _set_busy(self, busy: bool):
        # 没连上的时候不解锁按钮；连上后按 busy 切换。
        connected = self.btn_disconnect.isEnabled()
        for b in self._busy_buttons:
            b.setEnabled(connected and not busy)
        # disable 按钮在 busy 中仍可点（软急停）

    def _log(self, msg: str):
        self.log.appendPlainText(f"[{time.strftime('%H:%M:%S')}] {msg}")

    # -------------------------------------------- 非阻塞对话框（关键修复）

    async def _confirm(self, title: str, text: str,
                       icon=QMessageBox.Warning) -> bool:
        """非模态对话框 + Future 桥接，避免 box.exec_() 阻塞 qasync 事件循环导致冻屏。"""
        box = QMessageBox(self)
        box.setIcon(icon)
        box.setWindowTitle(title)
        box.setText(text)
        box.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
        box.setDefaultButton(QMessageBox.Cancel)

        fut: asyncio.Future = asyncio.get_event_loop().create_future()

        def _done(code):
            if not fut.done():
                fut.set_result(code == QMessageBox.Ok)

        box.finished.connect(_done)
        box.open()  # 不用 exec_()，让出主线程
        return await fut

    async def _warn(self, title: str, text: str):
        box = QMessageBox(self)
        box.setIcon(QMessageBox.Critical)
        box.setWindowTitle(title)
        box.setText(text)
        box.setStandardButtons(QMessageBox.Ok)
        fut: asyncio.Future = asyncio.get_event_loop().create_future()
        box.finished.connect(lambda _: fut.done() or fut.set_result(None))
        box.open()
        await fut

    # ------------------------------------------------------------ 区间校验

    def _validate_abs(self, pos: float) -> str | None:
        """pos 是「相对中心」语义；落地物理 = pos + cfg.center。"""
        if self.abs_min <= pos <= self.abs_max:
            return None
        phys = pos + self.cfg["center"]
        return (f"绝对目标 {pos:+} 超出允许范围 [{self.abs_min:+}, {self.abs_max:+}]\n"
                f"（对应物理读数 {phys}，应落在 [{self.phys_min}, {self.phys_max}]）\n\n"
                f"已拒绝发送 #{MOTOR}J= 命令。")

    def _current_pos(self) -> float | None:
        val = self._last_status.get("ActPos")
        return float(val) if val is not None else None

    def _validate_rel(self, delta: float) -> str | None:
        cur = self._current_pos()
        if cur is None:
            return "无法读取当前位置（尚未完成首次轮询），暂不能算相对移动落点。"
        target = cur + delta
        if self.phys_min <= target <= self.phys_max:
            return None
        return (f"当前物理位置 {cur:.6f}，增量 {delta:+}，落点物理 {target:.6f}\n"
                f"超出允许物理范围 [{self.phys_min}, {self.phys_max}]\n\n"
                f"已拒绝发送 #{MOTOR}j: 命令。")

    # ------------------------------------------------------------ slots

    @asyncSlot()
    async def _on_connect(self):
        self.btn_connect.setEnabled(False)
        self._log("连接中 ...")
        try:
            await self.pmac.connect()
        except Exception as err:
            self._log(f"连接失败: {err!r}")
            self.btn_connect.setEnabled(True)
            return
        self._log("已连接，启动轮询")
        self._set_connected(True)
        self._poll_task = asyncio.create_task(self._poll_loop())

    @asyncSlot()
    async def _on_disconnect(self):
        if self._inflight and not self._inflight.done():
            self._inflight.cancel()
        if self._poll_task and not self._poll_task.done():
            self._poll_task.cancel()
            try:
                await self._poll_task
            except asyncio.CancelledError:
                pass
        await self.pmac.close()
        self._log("已断开")
        self._set_connected(False)

    @asyncSlot()
    async def _on_ecat_enable(self):
        if not await self._confirm("启动 EtherCAT",
                                   "将发送 ECAT[0].enable\n继续？"):
            return
        await self._run("ECAT[0].enable", self.pmac.ecat_enable)

    @asyncSlot()
    async def _on_enable(self):
        await self._run(f"#{MOTOR}j/", self.pmac.motor_enable, MOTOR)

    @asyncSlot()
    async def _on_disable(self):
        # 软急停：取消在飞命令，立刻发 #1k
        if self._inflight and not self._inflight.done():
            self._log("取消在飞命令 → 准备发 #{}k".format(MOTOR))
            self._inflight.cancel()
            try:
                await self._inflight
            except (asyncio.CancelledError, Exception):
                pass
        await self._run(f"#{MOTOR}k", self.pmac.motor_disable, MOTOR)

    @asyncSlot()
    async def _on_move_abs(self):
        txt = self.abs_input.text().strip()
        if not txt:
            self._log("Abs Target 为空，已忽略")
            return
        try:
            pos = float(txt)
        except ValueError:
            self._log(f"Abs Target 不是数字: {txt!r}")
            return
        if (err := self._validate_abs(pos)) is not None:
            self._log(f"范围超限: {err.splitlines()[0]}")
            await self._warn("范围超限", err)
            return
        phys = pos + self.cfg["center"]
        if not await self._confirm(
                "绝对移动",
                f"将发送 #{MOTOR}J={pos}\n\n"
                f"⚠️  绝对输入 {pos:+}（相对中心 {self.cfg['center']}）\n"
                f"    预期物理读数收敛到 ≈ {phys}\n"
                f"    允许物理范围 [{self.phys_min}, {self.phys_max}]\n\n"
                f"请现场确认安全。"):
            return
        await self._run(f"#{MOTOR}J={pos}", self.pmac.motor_move_abs, MOTOR, pos)

    @asyncSlot()
    async def _on_move_rel(self):
        txt = self.rel_input.text().strip()
        if not txt:
            self._log("Rel Delta 为空，已忽略")
            return
        try:
            delta = float(txt)
        except ValueError:
            self._log(f"Rel Delta 不是数字: {txt!r}")
            return
        if (err := self._validate_rel(delta)) is not None:
            self._log(f"范围超限: {err.splitlines()[0]}")
            await self._warn("范围超限", err)
            return
        cur = self._current_pos()
        if not await self._confirm(
                "相对移动",
                f"将发送 #{MOTOR}j:{delta}\n\n"
                f"⚠️  当前物理 {cur:.6f}，增量 {delta:+}\n"
                f"    落点物理 ≈ {cur + delta:.6f}\n"
                f"    允许物理范围 [{self.phys_min}, {self.phys_max}]\n\n"
                f"请现场确认安全。"):
            return
        await self._run(f"#{MOTOR}j:{delta}", self.pmac.motor_move_rel, MOTOR, delta)

    # ------------------------------------------------------------ workers

    async def _run(self, label: str, fn, *args):
        """统一跑一条命令；把任务句柄登记到 _inflight 供软急停取消。"""
        self._log(f"→ {label}")
        self._set_busy(True)
        task = asyncio.create_task(fn(*args))
        self._inflight = task
        try:
            res = await task
        except asyncio.CancelledError:
            self._log(f"  {label} 被取消")
            raise
        except PmacError as err:
            self._log(f"  PMAC 报错: {err}")
        except Exception as err:
            self._log(f"  异常: {err!r}")
        else:
            self._log(f"  OK: {res}")
        finally:
            self._inflight = None
            self._set_busy(False)

    async def _poll_loop(self):
        try:
            while True:
                try:
                    st = await self.pmac.motor_status(MOTOR)
                except asyncio.CancelledError:
                    raise
                except Exception as err:
                    self._log(f"poll 失败: {err!r}")
                    await asyncio.sleep(POLL_S)
                    continue
                self._last_status = st
                self._render_status(st)
                await asyncio.sleep(POLL_S)
        except asyncio.CancelledError:
            pass

    def _render_status(self, st: dict[str, float | None]):
        for name, val in st.items():
            lbl = self.status_vals[name]
            if val is None:
                lbl.setText("--")
                lbl.setStyleSheet(_VAL_STYLE)
                continue
            if name == "ActPos":
                # 物理读数 + 相对中心换算
                lbl.setText(f"{val:+.6f}   (相对中心 {val - self.cfg['center']:+.6f})")
                lbl.setStyleSheet(_VAL_STYLE)
                self._push_viewer_pos(float(val))
            elif name == "ActVel":
                lbl.setText(f"{val:+.6f}")
                lbl.setStyleSheet(_VAL_STYLE)
            else:
                ival = int(val)
                lbl.setText(str(ival))
                if name == "AmpEna":
                    bg = _OK_BG if ival == 1 else _BAD_BG
                else:  # AmpFault / SoftLimit
                    bg = _BAD_BG if ival != 0 else _OK_BG
                lbl.setStyleSheet(_VAL_STYLE + bg)

    # ------------------------------------------------------------ close

    def closeEvent(self, ev):
        if self._inflight and not self._inflight.done():
            self._inflight.cancel()
        if self._poll_task and not self._poll_task.done():
            self._poll_task.cancel()
        super().closeEvent(ev)


class MainWindow(QMainWindow):
    """横向 QSplitter：左边 3D 视图（Qt Quick 3D），右边电机控制面板。
    左侧可以拉到 0 折叠，省 GPU。
    """

    def __init__(self):
        super().__init__()
        self.setWindowTitle(f"PMAC Motor {MOTOR} Control + 3D Preview")
        self.resize(1500, 820)

        self.panel = MotorPanel()

        if VIEWER_QML.is_file() and VIEWER_GLB.is_file():
            self.viewer = Viewer3DWidget(VIEWER_QML, VIEWER_GLB)
            self.panel.attach_viewer(self.viewer)
            left_widget = self.viewer
        else:
            # 兜底：QML / GLB 丢了就显示一段文字，电机控制依然可用
            from PySide6.QtWidgets import QPlainTextEdit
            missing = QPlainTextEdit()
            missing.setReadOnly(True)
            missing.setStyleSheet("background:#222;color:#f88;font-family:Consolas,monospace;")
            missing.setPlainText(
                f"3D 视图缺少资源：\n  Viewer.qml: {VIEWER_QML}  exists={VIEWER_QML.is_file()}\n"
                f"  model.glb : {VIEWER_GLB}  exists={VIEWER_GLB.is_file()}"
            )
            left_widget = missing

        splitter = QSplitter(Qt.Horizontal)
        splitter.addWidget(left_widget)
        splitter.addWidget(self.panel)
        splitter.setStretchFactor(0, 3)
        splitter.setStretchFactor(1, 2)
        splitter.setSizes([900, 600])
        splitter.setChildrenCollapsible(True)   # 想隐藏 3D 就一拉到底
        self.setCentralWidget(splitter)

    def closeEvent(self, ev):
        # 让 MotorPanel 的清理逻辑跑一遍
        self.panel.close()
        super().closeEvent(ev)


def main():
    app = QApplication(sys.argv)
    loop = QEventLoop(app)
    asyncio.set_event_loop(loop)
    quit_ev = asyncio.Event()
    app.aboutToQuit.connect(quit_ev.set)
    with loop:
        w = MainWindow()
        w.show()
        loop.run_until_complete(quit_ev.wait())


if __name__ == "__main__":
    main()
