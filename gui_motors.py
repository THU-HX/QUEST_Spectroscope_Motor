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
import datetime
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
from PySide6.QtGui import QDoubleValidator, QFont, QColor
from PySide6.QtWidgets import (
    QApplication, QWidget, QLabel, QPushButton, QLineEdit, QVBoxLayout,
    QHBoxLayout, QGridLayout, QGroupBox, QCheckBox, QMessageBox,
    QSplitter, QDoubleSpinBox, QComboBox, QMainWindow, QTabWidget,
    QScrollArea, QSizePolicy, QTableWidget, QTableWidgetItem, QHeaderView,
    QAbstractItemView,
)
from qasync import QEventLoop, asyncSlot

from pmac import PMAC, PmacError, STATUS_FIELDS
from viewer3d import Viewer3DWidget
import motors as M

POLL_S = 0.5
# 3D 资产按电机查 motors.viewer_assets(motor)；电机 5 升降台 / 电机 6 快门各一套。

# 值显示用的"芯片"样式：浅底、圆角、等宽字
_VAL_STYLE = ("font-family:Consolas,'Courier New',monospace;font-size:11pt;"
              "padding:5px 10px;border:1px solid #e4e8ef;border-radius:6px;"
              "background:#f5f7fa;color:#2b3038;min-width:120px;")
_OK_BG = "background:#e9f7ef;color:#1f8a4c;border:1px solid #c5e8d3;"
_BAD_BG = "background:#fdecea;color:#d23b2e;border:1px solid #f3c7c1;"
_GREEN = QColor("#3aa76a")
_RED = QColor("#e15b4f")

# 小节标题（muted、字距）
_SECTION = "color:#9aa3b2;font-weight:700;font-size:8pt;letter-spacing:1px;padding-top:2px;"

# 全局主题
THEME = """
* { font-family:"Segoe UI","Microsoft YaHei UI","Noto Sans CJK SC","WenQuanYi Micro Hei",sans-serif; }
QWidget { color:#2b3038; font-size:10pt; }
QMainWindow, QWidget#Central { background:#eef1f6; }

QTabWidget::pane { border:1px solid #e0e5ee; border-radius:10px; background:#f7f9fc; top:-1px; }
QTabBar::tab { background:transparent; color:#7b8494; padding:9px 20px; margin-right:6px;
    border:1px solid transparent; border-top-left-radius:9px; border-top-right-radius:9px; font-weight:600; }
QTabBar::tab:selected { background:#ffffff; color:#2f6feb; border:1px solid #e0e5ee; border-bottom-color:#ffffff; }
QTabBar::tab:!selected:hover { color:#2f6feb; }

QGroupBox { background:#ffffff; border:1px solid #e6eaf1; border-radius:12px;
    margin-top:16px; padding:14px; font-weight:600; }
QGroupBox::title { subcontrol-origin:margin; subcontrol-position:top left; left:14px;
    padding:2px 8px; color:#3b4250; background:transparent; }

QPushButton { background:#ffffff; border:1px solid #d3dae5; border-radius:8px;
    padding:7px 16px; color:#33404f; font-weight:500; }
QPushButton:hover { border-color:#2f6feb; color:#2f6feb; background:#f7faff; }
QPushButton:pressed { background:#eaf1fe; }
QPushButton:disabled { color:#aeb6c2; border-color:#e6eaf1; background:#f3f5f9; }
QPushButton[kind="primary"] { background:#2f6feb; border-color:#2f6feb; color:#ffffff; font-weight:600; }
QPushButton[kind="primary"]:hover { background:#1f60dd; border-color:#1f60dd; color:#ffffff; }
QPushButton[kind="primary"]:pressed { background:#1a55c5; }
QPushButton[kind="primary"]:disabled { background:#b9cdf5; border-color:#b9cdf5; color:#ffffff; }
QPushButton[kind="danger"] { background:#e2574c; border-color:#e2574c; color:#ffffff; font-weight:600; }
QPushButton[kind="danger"]:hover { background:#d6463b; border-color:#d6463b; color:#ffffff; }
QPushButton[kind="danger"]:pressed { background:#c23c32; }
QPushButton[kind="danger"]:disabled { background:#f1b3ae; border-color:#f1b3ae; color:#ffffff; }

QLineEdit, QDoubleSpinBox, QComboBox { background:#ffffff; border:1px solid #d3dae5;
    border-radius:8px; padding:6px 9px; selection-background-color:#2f6feb; }
QLineEdit:focus, QDoubleSpinBox:focus, QComboBox:focus { border:1px solid #2f6feb; }
QComboBox::drop-down { border:none; width:22px; }
QLineEdit:disabled, QDoubleSpinBox:disabled, QComboBox:disabled { background:#f3f5f9; color:#aeb6c2; }

QTableWidget { background:#ffffff; border:1px solid #e6eaf1; border-radius:10px; gridline-color:#eef1f6; }
QTableWidget::item { padding:6px; }
QHeaderView::section { background:#f3f6fb; color:#5b6472; padding:9px; border:none;
    border-bottom:1px solid #e6eaf1; font-weight:600; }
QTableCornerButton::section { background:#f3f6fb; border:none; }

QScrollArea { border:none; background:transparent; }
QScrollBar:vertical { background:transparent; width:10px; margin:2px; }
QScrollBar::handle:vertical { background:#cfd6e2; border-radius:5px; min-height:30px; }
QScrollBar::handle:vertical:hover { background:#b7c0d0; }
QScrollBar::add-line, QScrollBar::sub-line { height:0; }
QCheckBox { color:#5b6472; spacing:8px; }
"""


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

    @staticmethod
    def _section(text):
        lab = QLabel(text)
        lab.setStyleSheet(_SECTION)
        return lab

    def _build_ui(self):
        root = QVBoxLayout(self)
        root.setContentsMargins(14, 16, 14, 14)
        root.setSpacing(9)

        # 状态行
        root.addWidget(self._section("状态"))
        st = QGridLayout()
        st.setHorizontalSpacing(10)
        st.setVerticalSpacing(6)
        for i, name in enumerate(STATUS_FIELDS):
            tag = QLabel(name)
            tag.setStyleSheet("color:#7b8494;font-weight:600;")
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
        root.addSpacing(2)
        eb = QHBoxLayout()
        eb.setSpacing(8)
        self.btn_enable = QPushButton(f"使能 #{self.motor}j/")
        self.btn_disable = QPushButton(f"去使能 #{self.motor}k · 软急停")
        self.btn_disable.setProperty("kind", "danger")
        self.btn_enable.clicked.connect(self._on_enable)
        self.btn_disable.clicked.connect(self._on_disable)
        eb.addWidget(self.btn_enable)
        eb.addWidget(self.btn_disable, stretch=1)
        root.addLayout(eb)

        # 移动控制
        root.addWidget(self._section("运动"))
        mg = QGridLayout()
        mg.setHorizontalSpacing(8)
        mg.setVerticalSpacing(8)
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
        root.addWidget(self._section("参数"))
        cf = QGridLayout()
        cf.setHorizontalSpacing(8)
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

    COLS = ["电机", "名称", "ActPos", "ActVel", "AmpEna", "AmpFault", "SoftLimit"]

    def __init__(self, ctrl: "MainWindow"):
        super().__init__()
        self.ctrl = ctrl
        root = QVBoxLayout(self)
        root.setContentsMargins(14, 14, 14, 14)
        root.setSpacing(12)

        # 一键使能 / 去使能
        bar = QHBoxLayout()
        bar.setSpacing(12)
        self.btn_enable_all = QPushButton("一键使能所有电机  ·  #1-8 j/")
        self.btn_enable_all.setProperty("kind", "primary")
        self.btn_disable_all = QPushButton("一键去使能所有电机  ·  #1-8 k  软急停")
        self.btn_disable_all.setProperty("kind", "danger")
        for b in (self.btn_enable_all, self.btn_disable_all):
            b.setMinimumHeight(48)
            f = b.font(); f.setPointSize(11); f.setBold(True); b.setFont(f)
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
        self.table.setShowGrid(False)
        hh = self.table.horizontalHeader()
        hh.setSectionResizeMode(QHeaderView.Stretch)
        tf = QFont("DejaVu Sans Mono"); tf.setStyleHint(QFont.Monospace); tf.setPointSize(11)
        self.table.setFont(tf)

        self._rows: dict[int, int] = {}
        for r, m in enumerate(M.ALL_MOTORS):
            self._rows[m] = r
            self._set(r, 0, str(m))
            self._set(r, 1, M.MOTOR_DEFS[m]["name"])
            for c in range(2, len(self.COLS)):
                self._set(r, c, "--")
        self.table.resizeRowsToContents()
        for r in range(self.table.rowCount()):
            self.table.setRowHeight(r, 44)
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
    """一个装置一页。把它的电机块网格排列；带 3D 的装置页额外在左侧挂 3D 模型。

    3D 按装置 key 取资产/电机/类型（motors.VIZ_DEVICES）：
      single（升降台5 / 快门6）：单电机，physPos + 运动轴 + 方向
      focus （调焦1/2/3/4）    ：两套机构，posM{n} + 前后/左右两方向
    """

    def __init__(self, dev: dict, ctrl: "MainWindow"):
        super().__init__()
        self.dev = dev
        self.ctrl = ctrl
        self.viewer: Viewer3DWidget | None = None
        # 本页 3D（无则全空）：资产 + 联动电机 + 类型，全部按装置 key 解析
        self.dev_key = dev["key"]
        self.assets = M.viewer_assets(self.dev_key)
        self.viz_motors = M.viz_motors(self.dev_key)     # [] 表示无 3D
        self.viz_kind = M.viz_kind(self.dev_key)         # "single" | "focus" | None

        controls_host = QWidget()
        grid = QGridLayout(controls_host)
        grid.setContentsMargins(6, 6, 6, 6)
        grid.setHorizontalSpacing(14)
        grid.setVerticalSpacing(14)
        cols = 2 if len(dev["motors"]) >= 3 else 1
        for i, m in enumerate(dev["motors"]):
            mc = MotorControl(m, ctrl)
            mc.setSizePolicy(QSizePolicy.Preferred, QSizePolicy.Maximum)
            mc.setMinimumWidth(360)   # 保证 ActPos「值 (相对中心 …)」不被挤掉
            ctrl.controls[m] = mc
            grid.addWidget(mc, i // cols, i % cols)
        grid.setRowStretch(grid.rowCount(), 1)

        scroll = QScrollArea()
        scroll.setWidgetResizable(True)
        scroll.setWidget(controls_host)

        if self.assets is not None:
            left = self._build_viewer_pane()
            split = QSplitter(Qt.Horizontal)
            split.addWidget(left)
            split.addWidget(scroll)
            if self.viz_kind == "focus":
                # 调焦 4 个电机卡片走 2 列，控制区需要更宽（否则 ActPos 被挤掉），
                # 3D 区相应收窄；两套模型靠 QML 默认相机略缩放仍能填满。
                split.setStretchFactor(0, 4)
                split.setStretchFactor(1, 6)
                split.setSizes([660, 840])
            else:
                split.setStretchFactor(0, 3)
                split.setStretchFactor(1, 2)
                split.setSizes([820, 520])
            split.setHandleWidth(10)
            outer = QVBoxLayout(self)
            outer.setContentsMargins(10, 10, 10, 10)
            outer.addWidget(split)
        else:
            outer = QVBoxLayout(self)
            outer.setContentsMargins(10, 10, 10, 10)
            outer.addWidget(scroll)

    def _viz(self) -> dict:
        """本页装置对应的那套 viz 配置。"""
        return self.ctrl.cfg["viz"][self.dev_key]

    def _build_viewer_pane(self) -> QWidget:
        pane = QWidget()
        lay = QVBoxLayout(pane)
        qml_path, glb_path = self.assets
        self.viewer = Viewer3DWidget(qml_path, glb_path)
        self.viewer.ready_changed.connect(self._on_viewer_ready)
        # QQuickWidget.setSource 同步：QML 可能在 __init__ 里就 Ready 了，
        # 这时 connect 接不到信号 → 手动补一次，把 center/scale/方向推下去。
        if self.viewer.is_ready:
            self._on_viewer_ready(True)
        lay.addWidget(self.viewer, stretch=1)
        lay.addWidget(self._build_viz_controls())
        return pane

    def _scale_field(self) -> str:
        """显示比例在 viz 配置里的字段名：哈特曼门是旋转(度/计数)，其余是 mm/计数。"""
        return "deg_per_unit" if self.viz_kind == "hartmann" else "mm_per_unit"

    def _push_scale(self, val: float):
        if not self.viewer:
            return
        if self.viz_kind == "hartmann":
            self.viewer.set_deg_scale(val)
        else:
            self.viewer.set_scale(val)

    def _build_viz_controls(self) -> QWidget:
        viz = QGroupBox("3D 显示 (只影响动画，不影响电机命令)")
        vg = QGridLayout(viz)
        v = self._viz()
        # 显示比例（所有 kind 都有；哈特曼门单位是 °/count）
        self.scale_spin = QDoubleSpinBox()
        self.scale_spin.setDecimals(6)
        self.scale_spin.setRange(0.000001, 100000.0)
        self.scale_spin.setSingleStep(0.5 if self.viz_kind == "focus" else 0.0001)
        self.scale_spin.setValue(v[self._scale_field()])
        self.scale_spin.setSuffix(" °/count" if self.viz_kind == "hartmann" else " mm/count")
        self.scale_spin.valueChanged.connect(self._on_scale)
        vg.addWidget(QLabel("显示比例:"), 0, 0, alignment=Qt.AlignRight)
        vg.addWidget(self.scale_spin, 0, 1)

        if self.viz_kind == "hartmann":
            # 哈特曼门：左/右门旋转方向各自翻转
            self.hl_btn = QPushButton(); self.hl_btn.clicked.connect(self._on_flip_hl)
            self.hr_btn = QPushButton(); self.hr_btn.clicked.connect(self._on_flip_hr)
            self._refresh_hart_labels()
            vg.addWidget(QLabel("左门方向:"), 1, 0, alignment=Qt.AlignRight)
            vg.addWidget(self.hl_btn, 1, 1)
            vg.addWidget(QLabel("右门方向:"), 2, 0, alignment=Qt.AlignRight)
            vg.addWidget(self.hr_btn, 2, 1)
        elif self.viz_kind == "focus":
            # 调焦：前后 / 左右 两个方向翻转
            self.fb_btn = QPushButton(); self.fb_btn.clicked.connect(self._on_flip_fb)
            self.lr_btn = QPushButton(); self.lr_btn.clicked.connect(self._on_flip_lr)
            self._refresh_focus_labels()
            vg.addWidget(QLabel("前后方向:"), 1, 0, alignment=Qt.AlignRight)
            vg.addWidget(self.fb_btn, 1, 1)
            vg.addWidget(QLabel("左右方向:"), 2, 0, alignment=Qt.AlignRight)
            vg.addWidget(self.lr_btn, 2, 1)
        else:
            # 单电机：运动轴 + 单方向
            self.axis_combo = QComboBox()
            self.axis_combo.addItems(["x", "y", "z"])
            self.axis_combo.setCurrentText(v["axis"])
            self.axis_combo.currentTextChanged.connect(self._on_axis)
            self.dir_btn = QPushButton()
            self._refresh_dir_label()
            self.dir_btn.clicked.connect(self._on_flip)
            vg.addWidget(QLabel("运动轴:"), 1, 0, alignment=Qt.AlignRight)
            vg.addWidget(self.axis_combo, 1, 1)
            vg.addWidget(self.dir_btn, 1, 2)
        vg.setColumnStretch(1, 1)
        return viz

    def _on_viewer_ready(self, ok: bool):
        if not ok or not self.viewer:
            return
        v = self._viz()
        self._push_scale(v[self._scale_field()])
        if self.viz_kind == "focus":
            for m in self.viz_motors:
                self.viewer.set_motor_center(m, self.ctrl.cfg["motors"][str(m)]["center"])
            self.viewer.set_focus_dirs(v["dir_fb"], v["dir_lr"])
        elif self.viz_kind == "hartmann":
            for m in self.viz_motors:
                self.viewer.set_motor_center(m, self.ctrl.cfg["motors"][str(m)]["center"])
            self.viewer.set_hartmann_dirs(v["dir_left"], v["dir_right"])
        else:
            m = self.viz_motors[0]
            self.viewer.set_center(self.ctrl.cfg["motors"][str(m)]["center"])
            self.viewer.set_axis(v["axis"], int(v["direction"]))

    # ---- 单电机方向/轴 ----
    def _refresh_dir_label(self):
        d = self._viz()["direction"]
        self.dir_btn.setText(f"方向：{'+' if d > 0 else '-'}（点击翻转）")

    def _on_axis(self, axis: str):
        v = self._viz()
        v["axis"] = axis
        if self.viewer:
            self.viewer.set_axis(axis, int(v["direction"]))
        self.ctrl.save_cfg()

    def _on_flip(self):
        v = self._viz()
        v["direction"] = -int(v["direction"])
        self._refresh_dir_label()
        if self.viewer:
            self.viewer.set_axis(v["axis"], int(v["direction"]))
        self.ctrl.save_cfg()

    # ---- 调焦前后/左右方向 ----
    def _refresh_focus_labels(self):
        v = self._viz()
        self.fb_btn.setText(f"前后：{'+' if v['dir_fb'] > 0 else '-'}（点击翻转）")
        self.lr_btn.setText(f"左右：{'+' if v['dir_lr'] > 0 else '-'}（点击翻转）")

    def _on_flip_fb(self):
        v = self._viz()
        v["dir_fb"] = -int(v["dir_fb"])
        self._refresh_focus_labels()
        if self.viewer:
            self.viewer.set_focus_dirs(v["dir_fb"], v["dir_lr"])
        self.ctrl.save_cfg()

    def _on_flip_lr(self):
        v = self._viz()
        v["dir_lr"] = -int(v["dir_lr"])
        self._refresh_focus_labels()
        if self.viewer:
            self.viewer.set_focus_dirs(v["dir_fb"], v["dir_lr"])
        self.ctrl.save_cfg()

    # ---- 哈特曼门左/右门方向 ----
    def _refresh_hart_labels(self):
        v = self._viz()
        self.hl_btn.setText(f"左门：{'+' if v['dir_left'] > 0 else '-'}（点击翻转）")
        self.hr_btn.setText(f"右门：{'+' if v['dir_right'] > 0 else '-'}（点击翻转）")

    def _on_flip_hl(self):
        v = self._viz()
        v["dir_left"] = -int(v["dir_left"])
        self._refresh_hart_labels()
        if self.viewer:
            self.viewer.set_hartmann_dirs(v["dir_left"], v["dir_right"])
        self.ctrl.save_cfg()

    def _on_flip_hr(self):
        v = self._viz()
        v["dir_right"] = -int(v["dir_right"])
        self._refresh_hart_labels()
        if self.viewer:
            self.viewer.set_hartmann_dirs(v["dir_left"], v["dir_right"])
        self.ctrl.save_cfg()

    # ---- 共用：显示比例 + 轮询推送 ----
    def _on_scale(self, val: float):
        self._viz()[self._scale_field()] = val
        self._push_scale(val)
        self.ctrl.save_cfg()

    def push_positions(self, st: dict):
        """把本页相关电机的 ActPos 推给 3D（轮询每帧调）。"""
        if not self.viewer:
            return
        if self.viz_kind in ("focus", "hartmann"):    # 多电机：按电机号推 posM{n}
            for m in self.viz_motors:
                if m in st and st[m].get("ActPos") is not None:
                    self.viewer.set_motor_pos(m, float(st[m]["ActPos"]))
        elif self.viz_motors:
            m = self.viz_motors[0]
            if m in st and st[m].get("ActPos") is not None:
                self.viewer.set_motor_position(float(st[m]["ActPos"]))

    def push_center(self, motor: int):
        """某电机的 center 改了，重推给 3D。"""
        if not self.viewer:
            return
        center = self.ctrl.cfg["motors"][str(motor)]["center"]
        if self.viz_kind in ("focus", "hartmann"):
            self.viewer.set_motor_center(motor, center)
        else:
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
        self._viz_tabs: list[DeviceTab] = []        # 带 3D 的装置页（升降/快门/调焦）
        self._overview: OverviewTab | None = None
        # 日志：后台缓冲，勾选才落盘
        self._log_buffer: list[str] = []
        self._log_file = None
        self._log_path: Path | None = None

        self._build_ui()
        self._set_connected(False)

    # ---------------- UI ----------------
    def _build_ui(self):
        central = QWidget()
        central.setObjectName("Central")
        root = QVBoxLayout(central)
        root.setContentsMargins(16, 16, 16, 12)
        root.setSpacing(12)

        # 顶部：连接 + EtherCAT
        top = QHBoxLayout()
        top.setSpacing(10)
        self._dot = QLabel("●")
        self._dot.setStyleSheet("color:#c7ccd6;font-size:13pt;")
        self.status_lbl = QLabel("未连接")
        self.status_lbl.setStyleSheet("color:#7b8494;font-weight:600;")
        self.btn_connect = QPushButton("连接")
        self.btn_connect.setProperty("kind", "primary")
        self.btn_disconnect = QPushButton("断开")
        self.btn_ecat = QPushButton("启动 EtherCAT")
        for b in (self.btn_connect, self.btn_disconnect, self.btn_ecat):
            b.setMinimumHeight(36)
        self.btn_connect.clicked.connect(self._on_connect)
        self.btn_disconnect.clicked.connect(self._on_disconnect)
        self.btn_ecat.clicked.connect(self._on_ecat)
        top.addWidget(self._dot)
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
            if tab.assets is not None:
                self._viz_tabs.append(tab)
        root.addWidget(self.tabs, stretch=1)

        # 日志：不在前端显示，只后台缓冲。勾选才把本次会话日志写文件（不覆盖历史）。
        logbar = QHBoxLayout()
        self.chk_savelog = QCheckBox("保存日志到文件（勾选后保存本次会话，不覆盖历史）")
        self.chk_savelog.toggled.connect(self._on_toggle_savelog)
        self.log_status = QLabel("日志：仅后台，未保存")
        self.log_status.setStyleSheet("color:#888;")
        logbar.addWidget(self.chk_savelog)
        logbar.addWidget(self.log_status, stretch=1)
        root.addLayout(logbar)

        self.setCentralWidget(central)

    # ---------------- 公共接口（给 MotorControl/DeviceTab 调） ----------------
    def log(self, msg: str):
        line = f"[{time.strftime('%Y-%m-%d %H:%M:%S')}] {msg}"
        print(line, flush=True)                    # 打到终端，方便实时看 / 复制
        self._log_buffer.append(line)
        if len(self._log_buffer) > 5000:           # 后台缓冲软上限
            del self._log_buffer[:len(self._log_buffer) - 5000]
        if self._log_file is not None:             # 已开启保存：立即落盘
            try:
                self._log_file.write(line + "\n")
                self._log_file.flush()
            except OSError:
                pass

    def _on_toggle_savelog(self, checked: bool):
        if checked:
            logdir = Path(__file__).resolve().parent / "logs"
            try:
                logdir.mkdir(exist_ok=True)
                ts = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
                self._log_path = logdir / f"pmac_{ts}.log"
                self._log_file = open(self._log_path, "w", encoding="utf-8")
                # 把本次会话此前的缓冲先全部写进去
                if self._log_buffer:
                    self._log_file.write("\n".join(self._log_buffer) + "\n")
                    self._log_file.flush()
            except OSError as e:
                self.log_status.setText(f"日志保存失败: {e}")
                self._log_file = None
                self.chk_savelog.setChecked(False)
                return
            self.log_status.setText(f"正在保存 → {self._log_path}")
            self.log("=== 开始保存日志 ===")
        else:
            if self._log_file is not None:
                self.log("=== 停止保存日志 ===")
                try:
                    self._log_file.close()
                except OSError:
                    pass
                self._log_file = None
            done = f"（已保存到 {self._log_path}）" if self._log_path else ""
            self.log_status.setText(f"日志：仅后台，未保存{done}")

    def save_cfg(self):
        try:
            M.save_config(self.cfg)
        except OSError as e:
            self.log(f"配置写盘失败: {e!r}")

    def on_motor_cfg_changed(self, motor: int):
        for tab in self._viz_tabs:
            if motor in tab.viz_motors:
                tab.push_center(motor)

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
            self.status_lbl.setText(f"已连接  {self.pmac._cfg['host']}")
            self.status_lbl.setStyleSheet("color:#1f8a4c;font-weight:600;")
            self._dot.setStyleSheet("color:#3aa76a;font-size:13pt;")
        else:
            self.status_lbl.setText("未连接")
            self.status_lbl.setStyleSheet("color:#7b8494;font-weight:600;")
            self._dot.setStyleSheet("color:#c7ccd6;font-size:13pt;")
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
                for vtab in self._viz_tabs:
                    vtab.push_positions(st)
                await asyncio.sleep(POLL_S)
        except asyncio.CancelledError:
            pass

    def closeEvent(self, ev):
        if self._inflight and not self._inflight.done():
            self._inflight.cancel()
        if self._poll_task and not self._poll_task.done():
            self._poll_task.cancel()
        if self._log_file is not None:
            try:
                self._log_file.close()
            except OSError:
                pass
            self._log_file = None
        super().closeEvent(ev)


def main():
    app = QApplication(sys.argv)
    app.setStyleSheet(THEME)
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
