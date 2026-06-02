"""多装置 PMAC 控制 GUI（控制协议v1.2）。

顶部 4 个 Tab，每个对应一个装置：
  - 调焦装置     : 电机 1-4（无需使能，offset 17/14/17/17，±6）
  - 光栅切换装置 : 电机 5（需使能，offset 0，安全帽 ±2e6，左侧带 3D 升降模型）
  - 机械快门装置 : 电机 6
  - 哈特曼门装置 : 电机 7 左 / 8 右

共享一个 PMAC 连接 + EtherCAT + 日志；0.5s 批量轮询全部 8 台。
绝对移动用小写 #nj=（v1.2）。范围内直接发，不弹确认窗；只有超限才弹警告。

依赖：asyncssh, PySide6（含 QtQuick3D / QtQuickWidgets）, qasync
用法：python gui_motors.py
"""

import asyncio
import os
import sys
import time
from pathlib import Path

# --- Qt 平台初始化（必须在 QApplication 之前） ---
if "QT_QPA_PLATFORM" not in os.environ:
    if (os.environ.get("XDG_SESSION_TYPE") == "wayland"
            or os.environ.get("WAYLAND_DISPLAY")):
        os.environ["QT_QPA_PLATFORM"] = "wayland"

import PySide6
_PYSIDE6_ROOT = Path(PySide6.__file__).resolve().parent
for _qt_subdir in ("Qt6", "Qt"):
    _QT_ROOT = _PYSIDE6_ROOT / _qt_subdir
    if (_QT_ROOT / "plugins").is_dir():
        break
else:
    _QT_ROOT = _PYSIDE6_ROOT / "Qt6"
_QT_PLUGIN_DIR = _QT_ROOT / "plugins"
if _QT_PLUGIN_DIR.is_dir():
    os.environ.setdefault("QT_PLUGIN_PATH", str(_QT_PLUGIN_DIR))
    os.environ.setdefault("QT_QPA_PLATFORM_PLUGIN_PATH", str(_QT_PLUGIN_DIR / "platforms"))
_QML_DIR = _QT_ROOT / "qml"
if _QML_DIR.is_dir():
    os.environ.setdefault("QML2_IMPORT_PATH", str(_QML_DIR))
    os.environ.setdefault("QML_IMPORT_PATH", str(_QML_DIR))

from PySide6.QtCore import Qt
from PySide6.QtGui import QDoubleValidator, QFont, QColor, QShortcut, QKeySequence
from PySide6.QtWidgets import (
    QApplication, QWidget, QLabel, QPushButton, QLineEdit, QVBoxLayout,
    QHBoxLayout, QGridLayout, QGroupBox, QListWidget, QListWidgetItem, QMessageBox,
    QSplitter, QDoubleSpinBox, QComboBox, QMainWindow, QTabWidget,
    QScrollArea, QSizePolicy, QTableWidget, QTableWidgetItem, QHeaderView,
    QAbstractItemView,
)
from qasync import QEventLoop, asyncSlot

from pmac import PMAC, PmacError, STATUS_FIELDS
from viewer3d import Viewer3DWidget
import motors as M

POLL_S = 0.5
VIEWER_QML = Path(__file__).resolve().parent / "viewer" / "Viewer.qml"
VIEWER_GLB = Path(__file__).resolve().parent / "viewer" / "model.glb"

_VAL_STYLE = ("font-family:Consolas,'Courier New',monospace;font-size:12pt;"
              "padding:3px 6px;border:1px solid #bbb;background:#fafafa;min-width:120px;")
_OK_BG = "background:#3fa84a;color:white;"
_BAD_BG = "background:#c0392b;color:white;"
_GREEN = QColor("#3fa84a")
_RED = QColor("#c0392b")


def fnum(x, dec: int = 5) -> str:
    """最多 dec 位小数，去掉尾随 0：17→'17'，0.1→'0.1'，0.00001→'0.00001'，
    2000000→'2000000'（不走科学计数）。None→'--'。"""
    if x is None:
        return "--"
    s = f"{float(x):.{dec}f}"
    if "." in s:
        s = s.rstrip("0").rstrip(".")
    if s in ("-0", "-", ""):
        s = "0"
    return s


def fsign(x, dec: int = 5) -> str:
    """带符号：+0.3 / -0.4 / 0（恰好为 0 时不带符号）。"""
    s = fnum(x, dec)
    if s != "0" and not s.startswith("-"):
        s = "+" + s
    return s


class MotorControl(QGroupBox):
    """单个电机的控制块：状态 + 绝对/相对移动 + (5-8) 使能 + offset/range 配置。"""

    def __init__(self, motor: int, ctrl: "MainWindow"):
        self.motor = motor
        self.mdef = M.MOTOR_DEFS[motor]
        super().__init__(f"电机 {motor} · {self.mdef['name']}")
        self.ctrl = ctrl
        self.cfg = ctrl.cfg["motors"][str(motor)]   # 引用，改了直接生效
        self._last_status: dict[str, float | None] = {}
        self.status_vals: dict[str, QLabel] = {}
        self._build_ui()

    # ---- 边界（都从 cfg 算） ----
    @property
    def center(self): return self.cfg["center"]
    @property
    def half(self): return self.cfg["range"]
    @property
    def abs_min(self): return -self.half
    @property
    def abs_max(self): return +self.half
    @property
    def phys_min(self): return self.center - self.half
    @property
    def phys_max(self): return self.center + self.half

    def _build_ui(self):
        root = QVBoxLayout(self)

        # 状态行
        st = QGridLayout()
        for i, name in enumerate(STATUS_FIELDS):
            tag = QLabel(name)
            tag.setStyleSheet("font-weight:bold;")
            val = QLabel("--")
            val.setStyleSheet(_VAL_STYLE)
            val.setAlignment(Qt.AlignCenter)
            st.addWidget(tag, i, 0)
            st.addWidget(val, i, 1)
            self.status_vals[name] = val
        st.setColumnStretch(1, 1)
        root.addLayout(st)

        # 使能 / 去使能 —— 所有电机都给（1-4 不用 EtherCAT 使能，但电机级
        # #nj/ 使能 / #nk 去使能仍然需要）。
        eb = QHBoxLayout()
        self.btn_enable = QPushButton(f"使能 #{self.motor}j/")
        self.btn_disable = QPushButton(f"去使能 #{self.motor}k (软急停)")
        self.btn_disable.setStyleSheet("background:#c0392b;color:white;font-weight:bold;")
        self.btn_enable.clicked.connect(self._on_enable)
        self.btn_disable.clicked.connect(self._on_disable)
        eb.addWidget(self.btn_enable)
        eb.addWidget(self.btn_disable, stretch=1)
        root.addLayout(eb)

        # 移动控制
        mg = QGridLayout()
        self.abs_validator = QDoubleValidator(self)
        self.abs_validator.setNotation(QDoubleValidator.StandardNotation)
        self.abs_input = QLineEdit()
        self.abs_input.setValidator(self.abs_validator)
        self.btn_abs = QPushButton(f"绝对移动 #{self.motor}j=")
        self.btn_abs.clicked.connect(self._on_abs)
        mg.addWidget(QLabel("Abs(相对中心):"), 0, 0, alignment=Qt.AlignRight)
        mg.addWidget(self.abs_input, 0, 1)
        mg.addWidget(self.btn_abs, 0, 2)

        rel_v = QDoubleValidator(self)
        rel_v.setNotation(QDoubleValidator.StandardNotation)
        self.rel_input = QLineEdit()
        self.rel_input.setPlaceholderText("± 增量（直接作用于物理读数）")
        self.rel_input.setValidator(rel_v)
        self.btn_rel = QPushButton(f"相对移动 #{self.motor}j:")
        self.btn_rel.clicked.connect(self._on_rel)
        mg.addWidget(QLabel("Rel Δ:"), 1, 0, alignment=Qt.AlignRight)
        mg.addWidget(self.rel_input, 1, 1)
        mg.addWidget(self.btn_rel, 1, 2)
        root.addLayout(mg)

        # offset/range 配置
        cf = QGridLayout()
        cv = QDoubleValidator(self); cv.setNotation(QDoubleValidator.StandardNotation)
        self.center_input = QLineEdit(fnum(self.center))
        self.center_input.setValidator(cv)
        rv = QDoubleValidator(0.0, 1e12, 6, self); rv.setNotation(QDoubleValidator.StandardNotation)
        self.range_input = QLineEdit(fnum(self.half))
        self.range_input.setValidator(rv)
        self.btn_save = QPushButton("保存")
        self.btn_save.clicked.connect(self._on_save_cfg)
        cf.addWidget(QLabel("offset:"), 0, 0, alignment=Qt.AlignRight)
        cf.addWidget(self.center_input, 0, 1)
        cf.addWidget(QLabel("范围±:"), 0, 2, alignment=Qt.AlignRight)
        cf.addWidget(self.range_input, 0, 3)
        cf.addWidget(self.btn_save, 0, 4)
        cf.setColumnStretch(1, 1)
        cf.setColumnStretch(3, 1)
        root.addLayout(cf)

        self._refresh_domain()

        # 按 busy/连接 切换的按钮集合
        self._busy_btns = [b for b in (self.btn_enable, self.btn_abs, self.btn_rel) if b]

    # ---- 配置/域刷新 ----
    def _refresh_domain(self):
        self.abs_validator.setRange(self.abs_min, self.abs_max, 6)
        self.abs_input.setPlaceholderText(
            f"{fnum(self.abs_min)} ~ {fnum(self.abs_max)}  (0→物理 {fnum(self.center)})"
        )
        if self._last_status:
            self._render(self._last_status)

    def _on_save_cfg(self):
        try:
            c = float(self.center_input.text())
            r = float(self.range_input.text())
        except ValueError:
            self.ctrl.log(f"电机{self.motor} 配置保存失败：不是数字")
            return
        if r <= 0:
            self.ctrl.log(f"电机{self.motor} 配置保存失败：范围必须 > 0")
            return
        self.cfg["center"] = c
        self.cfg["range"] = r
        self.ctrl.save_cfg()
        self._refresh_domain()
        self.ctrl.log(f"电机{self.motor} 配置已存：offset={fnum(c)} 范围=±{fnum(r)}")
        # 电机 5 的 center 影响 3D 归位
        self.ctrl.on_motor_cfg_changed(self.motor)

    # ---- 按钮回调 ----
    @asyncSlot()
    async def _on_enable(self):
        await self.ctrl.run(f"#{self.motor}j/", self.ctrl.pmac.motor_enable, self.motor)

    @asyncSlot()
    async def _on_disable(self):
        await self.ctrl.soft_estop(self.motor)

    @asyncSlot()
    async def _on_abs(self):
        txt = self.abs_input.text().strip()
        if not txt:
            return
        try:
            pos = float(txt)
        except ValueError:
            self.ctrl.log(f"电机{self.motor} Abs 不是数字: {txt!r}")
            return
        if not (self.abs_min <= pos <= self.abs_max):
            phys = pos + self.center
            await self.ctrl.warn(
                "范围超限",
                f"电机{self.motor} 绝对目标 {fnum(pos)} 超出 [{fnum(self.abs_min)}, {fnum(self.abs_max)}]\n"
                f"（对应物理 {fnum(phys)}，应在 [{fnum(self.phys_min)}, {fnum(self.phys_max)}]）\n\n已拒绝。")
            return
        await self.ctrl.run(f"#{self.motor}j={pos}", self.ctrl.pmac.motor_move_abs, self.motor, pos)

    @asyncSlot()
    async def _on_rel(self):
        txt = self.rel_input.text().strip()
        if not txt:
            return
        try:
            delta = float(txt)
        except ValueError:
            self.ctrl.log(f"电机{self.motor} Rel 不是数字: {txt!r}")
            return
        cur = self._last_status.get("ActPos")
        if cur is None:
            await self.ctrl.warn("无法相对移动", "尚未读到当前位置（等首次轮询）。")
            return
        target = cur + delta
        if not (self.phys_min <= target <= self.phys_max):
            await self.ctrl.warn(
                "范围超限",
                f"电机{self.motor} 当前物理 {fnum(cur)}，增量 {fnum(delta)}，落点 {fnum(target)}\n"
                f"超出 [{fnum(self.phys_min)}, {fnum(self.phys_max)}]\n\n已拒绝。")
            return
        await self.ctrl.run(f"#{self.motor}j:{delta}", self.ctrl.pmac.motor_move_rel, self.motor, delta)

    # ---- 外部驱动 ----
    def set_connected(self, ok: bool):
        for b in self._busy_btns:
            b.setEnabled(ok)
        if self.btn_disable:
            self.btn_disable.setEnabled(ok)
        if not ok:
            for v in self.status_vals.values():
                v.setText("--")
                v.setStyleSheet(_VAL_STYLE)
            self._last_status = {}

    def set_busy(self, busy: bool, connected: bool):
        for b in self._busy_btns:
            b.setEnabled(connected and not busy)
        # 去使能(急停)在 busy 中仍可点

    def update_status(self, st: dict[str, float | None]):
        self._last_status = st
        self._render(st)

    def _render(self, st: dict[str, float | None]):
        for name, val in st.items():
            lbl = self.status_vals.get(name)
            if lbl is None:
                continue
            if val is None:
                lbl.setText("--"); lbl.setStyleSheet(_VAL_STYLE); continue
            if name == "ActPos":
                lbl.setText(f"{fnum(val)}  (相对中心 {fsign(val - self.center)})")
                lbl.setStyleSheet(_VAL_STYLE)
            elif name == "ActVel":
                lbl.setText(fnum(val)); lbl.setStyleSheet(_VAL_STYLE)
            else:
                iv = int(val)
                lbl.setText(str(iv))
                if name == "AmpEna":
                    lbl.setStyleSheet(_VAL_STYLE + (_OK_BG if iv == 1 else _BAD_BG))
                else:  # AmpFault / SoftLimit
                    lbl.setStyleSheet(_VAL_STYLE + (_BAD_BG if iv != 0 else _OK_BG))


class OverviewTab(QWidget):
    """总览页：一键使能/去使能所有电机 + 全 8 台状态表。"""

    COLS = ["电机", "装置 · 名称", "ActPos", "ActVel", "AmpEna", "AmpFault", "SoftLimit"]

    def __init__(self, ctrl: "MainWindow"):
        super().__init__()
        self.ctrl = ctrl
        root = QVBoxLayout(self)

        # 一键使能 / 去使能
        bar = QHBoxLayout()
        self.btn_enable_all = QPushButton("一键使能所有电机  (#1-8 j/)")
        self.btn_enable_all.setStyleSheet("font-weight:bold;padding:10px;font-size:11pt;")
        self.btn_disable_all = QPushButton("一键去使能所有电机  (#1-8 k · 软急停)")
        self.btn_disable_all.setStyleSheet(
            "background:#c0392b;color:white;font-weight:bold;padding:10px;font-size:11pt;")
        self.btn_enable_all.clicked.connect(ctrl._on_enable_all)
        self.btn_disable_all.clicked.connect(ctrl._on_disable_all)
        bar.addWidget(self.btn_enable_all)
        bar.addWidget(self.btn_disable_all)
        root.addLayout(bar)

        # 状态表
        self.table = QTableWidget(len(M.ALL_MOTORS), len(self.COLS))
        self.table.setHorizontalHeaderLabels(self.COLS)
        self.table.verticalHeader().setVisible(False)
        self.table.setEditTriggers(QAbstractItemView.NoEditTriggers)
        self.table.setSelectionMode(QAbstractItemView.NoSelection)
        self.table.setFocusPolicy(Qt.NoFocus)
        hh = self.table.horizontalHeader()
        hh.setSectionResizeMode(QHeaderView.Stretch)
        tf = QFont("Consolas"); tf.setStyleHint(QFont.Monospace); tf.setPointSize(11)
        self.table.setFont(tf)

        dev_of = {m: d["name"] for d in M.DEVICES for m in d["motors"]}
        self._rows: dict[int, int] = {}
        for r, m in enumerate(M.ALL_MOTORS):
            self._rows[m] = r
            self._set(r, 0, str(m))
            self._set(r, 1, f"{dev_of[m]} · {M.MOTOR_DEFS[m]['name']}")
            for c in range(2, len(self.COLS)):
                self._set(r, c, "--")
        self.table.resizeRowsToContents()
        for r in range(self.table.rowCount()):
            self.table.setRowHeight(r, 34)
        root.addWidget(self.table, stretch=1)

    def _set(self, r, c, text, bg=None):
        it = self.table.item(r, c)
        if it is None:
            it = QTableWidgetItem()
            it.setTextAlignment(Qt.AlignCenter)
            self.table.setItem(r, c, it)
        it.setText(text)
        if bg is not None:
            it.setBackground(bg)
            it.setForeground(QColor("white"))
        else:
            it.setData(Qt.BackgroundRole, None)
            it.setData(Qt.ForegroundRole, None)
        return it

    def update_status(self, st: dict[int, dict]):
        for m, r in self._rows.items():
            s = st.get(m)
            if not s:
                continue
            self._set(r, 2, fnum(s.get("ActPos")))
            self._set(r, 3, fnum(s.get("ActVel")))
            for c, key in ((4, "AmpEna"), (5, "AmpFault"), (6, "SoftLimit")):
                v = s.get(key)
                if v is None:
                    self._set(r, c, "--")
                    continue
                iv = int(v)
                good = (iv == 1) if key == "AmpEna" else (iv == 0)
                self._set(r, c, str(iv), bg=_GREEN if good else _RED)

    def set_connected(self, ok: bool):
        self.btn_enable_all.setEnabled(ok)
        self.btn_disable_all.setEnabled(ok)
        if not ok:
            for r in self._rows.values():
                for c in range(2, len(self.COLS)):
                    self._set(r, c, "--")

    def set_busy(self, busy: bool, connected: bool):
        self.btn_enable_all.setEnabled(connected and not busy)
        self.btn_disable_all.setEnabled(connected)  # 急停常开


class DeviceTab(QWidget):
    """一个装置一页。把它的电机块网格排列；光栅切换页额外在左侧挂 3D。"""

    def __init__(self, dev: dict, ctrl: "MainWindow"):
        super().__init__()
        self.dev = dev
        self.ctrl = ctrl
        self.viewer: Viewer3DWidget | None = None

        controls_host = QWidget()
        grid = QGridLayout(controls_host)
        cols = 2 if len(dev["motors"]) >= 3 else 1
        for i, m in enumerate(dev["motors"]):
            mc = MotorControl(m, ctrl)
            mc.setSizePolicy(QSizePolicy.Preferred, QSizePolicy.Maximum)
            ctrl.controls[m] = mc
            grid.addWidget(mc, i // cols, i % cols)
        grid.setRowStretch(grid.rowCount(), 1)

        scroll = QScrollArea()
        scroll.setWidgetResizable(True)
        scroll.setWidget(controls_host)

        has_3d = any(M.MOTOR_DEFS[m].get("has_3d") for m in dev["motors"])
        if has_3d and VIEWER_QML.is_file() and VIEWER_GLB.is_file():
            left = self._build_viewer_pane()
            split = QSplitter(Qt.Horizontal)
            split.addWidget(left)
            split.addWidget(scroll)
            split.setStretchFactor(0, 3)
            split.setStretchFactor(1, 2)
            split.setSizes([820, 520])
            outer = QVBoxLayout(self)
            outer.addWidget(split)
        else:
            outer = QVBoxLayout(self)
            outer.addWidget(scroll)

    def _build_viewer_pane(self) -> QWidget:
        pane = QWidget()
        lay = QVBoxLayout(pane)
        self.viewer = Viewer3DWidget(VIEWER_QML, VIEWER_GLB)
        self.viewer.ready_changed.connect(self._on_viewer_ready)
        # QQuickWidget.setSource 同步：QML 可能在 __init__ 里就 Ready 了，
        # 这时 connect 接不到信号 → 手动补一次，把 center/scale/axis 推下去。
        if self.viewer.is_ready:
            self._on_viewer_ready(True)
        lay.addWidget(self.viewer, stretch=1)

        viz = QGroupBox("3D 显示 (只影响动画，不影响电机命令)")
        vg = QGridLayout(viz)
        v = self.ctrl.cfg["viz"]
        self.scale_spin = QDoubleSpinBox()
        self.scale_spin.setDecimals(6)
        self.scale_spin.setRange(0.000001, 100000.0)
        self.scale_spin.setSingleStep(0.0001)
        self.scale_spin.setValue(v["mm_per_unit"])
        self.scale_spin.setSuffix(" mm/count")
        self.scale_spin.valueChanged.connect(self._on_scale)
        self.axis_combo = QComboBox()
        self.axis_combo.addItems(["x", "y", "z"])
        self.axis_combo.setCurrentText(v["axis"])
        self.axis_combo.currentTextChanged.connect(self._on_axis)
        self.dir_btn = QPushButton()
        self._refresh_dir_label()
        self.dir_btn.clicked.connect(self._on_flip)
        vg.addWidget(QLabel("显示比例:"), 0, 0, alignment=Qt.AlignRight)
        vg.addWidget(self.scale_spin, 0, 1)
        vg.addWidget(QLabel("运动轴:"), 1, 0, alignment=Qt.AlignRight)
        vg.addWidget(self.axis_combo, 1, 1)
        vg.addWidget(self.dir_btn, 1, 2)
        vg.setColumnStretch(1, 1)
        lay.addWidget(viz)
        return pane

    def _on_viewer_ready(self, ok: bool):
        if not ok:
            return
        v = self.ctrl.cfg["viz"]
        m5 = self.ctrl.cfg["motors"]["5"]
        self.viewer.set_center(m5["center"])
        self.viewer.set_scale(v["mm_per_unit"])
        self.viewer.set_axis(v["axis"], int(v["direction"]))

    def _refresh_dir_label(self):
        d = self.ctrl.cfg["viz"]["direction"]
        self.dir_btn.setText(f"方向：{'+' if d > 0 else '-'}（点击翻转）")

    def _on_scale(self, mm: float):
        self.ctrl.cfg["viz"]["mm_per_unit"] = mm
        if self.viewer:
            self.viewer.set_scale(mm)
        self.ctrl.save_cfg()

    def _on_axis(self, axis: str):
        self.ctrl.cfg["viz"]["axis"] = axis
        if self.viewer:
            self.viewer.set_axis(axis, int(self.ctrl.cfg["viz"]["direction"]))
        self.ctrl.save_cfg()

    def _on_flip(self):
        self.ctrl.cfg["viz"]["direction"] = -int(self.ctrl.cfg["viz"]["direction"])
        self._refresh_dir_label()
        v = self.ctrl.cfg["viz"]
        if self.viewer:
            self.viewer.set_axis(v["axis"], int(v["direction"]))
        self.ctrl.save_cfg()

    def push_viewer_pos(self, actpos: float):
        if self.viewer:
            self.viewer.set_motor_position(actpos)

    def push_viewer_center(self, center: float):
        if self.viewer:
            self.viewer.set_center(center)


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("PMAC 多装置控制 (协议 v1.2)")
        self.resize(1500, 880)

        self.pmac = PMAC()
        self.cfg = M.load_config()
        self.controls: dict[int, MotorControl] = {}
        self._poll_task: asyncio.Task | None = None
        self._inflight: asyncio.Task | None = None
        self._grating_tab: DeviceTab | None = None
        self._overview: OverviewTab | None = None

        self._build_ui()
        self._set_connected(False)

    # ---------------- UI ----------------
    def _build_ui(self):
        central = QWidget()
        root = QVBoxLayout(central)

        # 顶部：连接 + EtherCAT
        top = QHBoxLayout()
        self.status_lbl = QLabel("未连接")
        self.status_lbl.setStyleSheet("color:#888;font-weight:bold;padding:4px;")
        self.btn_connect = QPushButton("Connect")
        self.btn_disconnect = QPushButton("Disconnect")
        self.btn_ecat = QPushButton("启动 EtherCAT (ECAT[0].enable)")
        self.btn_connect.clicked.connect(self._on_connect)
        self.btn_disconnect.clicked.connect(self._on_disconnect)
        self.btn_ecat.clicked.connect(self._on_ecat)
        top.addWidget(self.status_lbl, stretch=1)
        top.addWidget(self.btn_connect)
        top.addWidget(self.btn_disconnect)
        top.addWidget(self.btn_ecat)
        root.addLayout(top)

        # Tabs（总览页放第一个）
        self.tabs = QTabWidget()
        self._overview = OverviewTab(self)
        self.tabs.addTab(self._overview, "总览")
        for dev in M.DEVICES:
            tab = DeviceTab(dev, self)
            self.tabs.addTab(tab, dev["name"])
            if any(M.MOTOR_DEFS[m].get("has_3d") for m in dev["motors"]):
                self._grating_tab = tab
        root.addWidget(self.tabs, stretch=1)

        # 日志
        logbox = QGroupBox("日志")
        lb = QVBoxLayout(logbox)
        # 日志用 QListWidget：一行一项，行命中测试按整行算，任何分辨率/缩放下
        # 鼠标选中都不会差一行（不像富文本控件靠像素行高做命中测试）。
        # 支持点拖多选 + Ctrl+C 复制选中行。
        self.logw = QListWidget()
        self.logw.setSelectionMode(QAbstractItemView.ExtendedSelection)
        self.logw.setUniformItemSizes(True)
        self.logw.setMaximumHeight(140)
        lf = QFont("DejaVu Sans Mono")
        lf.setStyleHint(QFont.Monospace)
        lf.setPointSize(10)
        self.logw.setFont(lf)
        _cp = QShortcut(QKeySequence.Copy, self.logw)
        _cp.activated.connect(self._copy_log)
        lb.addWidget(self.logw)
        root.addWidget(logbox)

        self.setCentralWidget(central)

    # ---------------- 公共接口（给 MotorControl/DeviceTab 调） ----------------
    def log(self, msg: str):
        self.logw.addItem(QListWidgetItem(f"[{time.strftime('%H:%M:%S')}] {msg}"))
        self.logw.scrollToBottom()
        # 软上限：行数过多时砍掉最旧的
        while self.logw.count() > 500:
            self.logw.takeItem(0)

    def _copy_log(self):
        items = self.logw.selectedItems()
        if items:
            QApplication.clipboard().setText("\n".join(i.text() for i in items))

    def save_cfg(self):
        try:
            M.save_config(self.cfg)
        except OSError as e:
            self.log(f"配置写盘失败: {e!r}")

    def on_motor_cfg_changed(self, motor: int):
        if motor == 5 and self._grating_tab:
            self._grating_tab.push_viewer_center(self.cfg["motors"]["5"]["center"])

    @property
    def is_connected(self) -> bool:
        return self.pmac.is_connected

    async def run(self, label: str, fn, *args):
        if not self.pmac.is_connected:
            self.log("未连接，已忽略")
            return
        self.log(f"→ {label}")
        self._set_busy(True)
        task = asyncio.create_task(fn(*args))
        self._inflight = task
        try:
            res = await task
        except asyncio.CancelledError:
            self.log(f"  {label} 被取消"); raise
        except PmacError as e:
            self.log(f"  PMAC 报错: {e}")
        except Exception as e:
            self.log(f"  异常: {e!r}")
        else:
            self.log(f"  OK: {res}")
        finally:
            self._inflight = None
            self._set_busy(False)

    async def soft_estop(self, motor: int):
        if self._inflight and not self._inflight.done():
            self.log(f"取消在飞命令 → 发 #{motor}k")
            self._inflight.cancel()
            try:
                await self._inflight
            except (asyncio.CancelledError, Exception):
                pass
        await self.run(f"#{motor}k", self.pmac.motor_disable, motor)

    async def run_seq(self, label: str, items: list):
        """顺序跑多条命令（一键使能/去使能用）。items: [(label, fn, *args), ...]"""
        if not self.pmac.is_connected:
            self.log("未连接，已忽略")
            return
        self.log(f"→ {label}（{len(items)} 条）")
        self._set_busy(True)
        task = asyncio.create_task(self._run_seq_inner(items))
        self._inflight = task
        try:
            await task
        except asyncio.CancelledError:
            self.log(f"  {label} 被取消"); raise
        except Exception as e:
            self.log(f"  异常: {e!r}")
        else:
            self.log(f"  {label} 完成")
        finally:
            self._inflight = None
            self._set_busy(False)

    async def _run_seq_inner(self, items: list):
        for label, fn, *args in items:
            try:
                await fn(*args)
                self.log(f"   {label} OK")
            except PmacError as e:
                self.log(f"   {label} 报错: {e}")

    @asyncSlot()
    async def _on_enable_all(self):
        items = [(f"#{m}j/", self.pmac.motor_enable, m) for m in M.ALL_MOTORS]
        await self.run_seq("一键使能所有电机", items)

    @asyncSlot()
    async def _on_disable_all(self):
        # 软急停：先取消在飞命令，再逐台去使能
        if self._inflight and not self._inflight.done():
            self._inflight.cancel()
            try:
                await self._inflight
            except (asyncio.CancelledError, Exception):
                pass
        items = [(f"#{m}k", self.pmac.motor_disable, m) for m in M.ALL_MOTORS]
        await self.run_seq("一键去使能所有电机", items)

    async def warn(self, title: str, text: str):
        box = QMessageBox(self)
        box.setIcon(QMessageBox.Critical)
        box.setWindowTitle(title)
        box.setText(text)
        box.setStandardButtons(QMessageBox.Ok)
        fut: asyncio.Future = asyncio.get_event_loop().create_future()
        box.finished.connect(lambda _: fut.done() or fut.set_result(None))
        box.open()
        await fut

    # ---------------- 连接/状态 ----------------
    def _set_connected(self, ok: bool):
        if ok:
            self.status_lbl.setText(f"已连接 {self.pmac._cfg['host']}")
            self.status_lbl.setStyleSheet("color:#080;font-weight:bold;padding:4px;")
        else:
            self.status_lbl.setText("未连接")
            self.status_lbl.setStyleSheet("color:#888;font-weight:bold;padding:4px;")
        self.btn_connect.setEnabled(not ok)
        self.btn_disconnect.setEnabled(ok)
        self.btn_ecat.setEnabled(ok)
        for mc in self.controls.values():
            mc.set_connected(ok)
        if self._overview:
            self._overview.set_connected(ok)

    def _set_busy(self, busy: bool):
        connected = self.pmac.is_connected
        self.btn_ecat.setEnabled(connected and not busy)
        for mc in self.controls.values():
            mc.set_busy(busy, connected)
        if self._overview:
            self._overview.set_busy(busy, connected)

    @asyncSlot()
    async def _on_connect(self):
        self.btn_connect.setEnabled(False)
        self.log("连接中 ...")
        try:
            await self.pmac.connect()
        except Exception as e:
            self.log(f"连接失败: {e!r}")
            self.btn_connect.setEnabled(True)
            return
        self.log("已连接，启动轮询")
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
        self.log("已断开")
        self._set_connected(False)

    @asyncSlot()
    async def _on_ecat(self):
        await self.run("ECAT[0].enable", self.pmac.ecat_enable)

    async def _poll_loop(self):
        try:
            while True:
                try:
                    st = await self.pmac.motor_status_many(M.ALL_MOTORS)
                except asyncio.CancelledError:
                    raise
                except Exception as e:
                    self.log(f"poll 失败: {e!r}")
                    await asyncio.sleep(POLL_S)
                    continue
                for m, mc in self.controls.items():
                    if m in st:
                        mc.update_status(st[m])
                if self._overview:
                    self._overview.update_status(st)
                if self._grating_tab and 5 in st and st[5].get("ActPos") is not None:
                    self._grating_tab.push_viewer_pos(float(st[5]["ActPos"]))
                await asyncio.sleep(POLL_S)
        except asyncio.CancelledError:
            pass

    def closeEvent(self, ev):
        if self._inflight and not self._inflight.done():
            self._inflight.cancel()
        if self._poll_task and not self._poll_task.done():
            self._poll_task.cancel()
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
