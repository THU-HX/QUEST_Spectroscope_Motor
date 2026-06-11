"""Qt Quick 3D 升降台预览的 QWidget 包装。

跟原 QWebEngineView 版（已废）API 对齐：
    set_motor_position(phys)
    set_center(c)
    set_scale(mm_per_unit)
    set_axis(axis, direction)

实现细节：
- 用 QQuickWidget 直接 setSource(Viewer.qml)，不走 QML ApplicationWindow，
  这样可以随便塞进 QSplitter / QMainWindow 的 layout。
- 内部所有控制都是改 QML root 的 property —— QML 端 onXxxChanged 触发
  applyOffset()，无需 runJavaScript。
"""

from __future__ import annotations
from pathlib import Path

from PySide6.QtCore import Qt, QUrl, Signal
from PySide6.QtQuickWidgets import QQuickWidget


class Viewer3DWidget(QQuickWidget):

    ready_changed = Signal(bool)
    camera_changed = Signal(float, float, float)   # yaw, pitch, dist（用户拖动/缩放后发出）

    def __init__(self, qml_path: Path, model_path: Path, parent=None):
        super().__init__(parent)
        self.setResizeMode(QQuickWidget.ResizeMode.SizeRootObjectToView)
        # 鼠标 / 键盘事件交给 QQuickWidget → QML → OrbitCameraController；
        # 不开 StrongFocus 的话拖动相机不响应。
        self.setFocusPolicy(Qt.FocusPolicy.StrongFocus)
        # 黑色背景：避免 QML 加载前白屏闪一下
        from PySide6.QtGui import QColor
        self.setClearColor(QColor("#1e1e1e"))

        self._qml_path = Path(qml_path)
        self._model_url = QUrl.fromLocalFile(str(Path(model_path).absolute()))
        self._ready = False
        self._pending_props: dict[str, object] = {}

        self.statusChanged.connect(self._on_status)
        self.setSource(QUrl.fromLocalFile(str(self._qml_path.absolute())))

    # ------------------------------------------------- status

    def _on_status(self, status):
        if status == QQuickWidget.Status.Error:
            for err in self.errors():
                print(f"[Viewer3DWidget] QML error: {err.toString()}")
            return
        if status != QQuickWidget.Status.Ready:
            return

        # 关键：先拨 ready，下面 setProperty 才不会被 _set_prop 的 guard 吞掉。
        self._ready = True

        root = self.rootObject()
        if root is None:
            print("[Viewer3DWidget] rootObject() is None after Ready, viewer 无法初始化")
            return

        # baked 版本 QML 自带 baked/Model.qml，modelSource 留空即可（保留接口兼容）。
        # 回放此前缓存的所有 set_* 调用
        for k, v in self._pending_props.items():
            root.setProperty(k, v)
        self._pending_props.clear()

        # QML 在用户拖动/缩放后发 camChanged() → 转成 Python 信号，供上层存配置
        try:
            root.camChanged.connect(self._on_qml_cam_changed)
        except AttributeError:
            pass   # 旧 QML 没有该信号时静默跳过

        self.ready_changed.emit(True)

    @property
    def is_ready(self) -> bool:
        return self._ready

    # ------------------------------------------------- 对外 API

    def set_motor_position(self, phys: float):
        self._set_prop("physPos", float(phys))

    def set_center(self, c: float):
        self._set_prop("centerPhys", float(c))

    def set_scale(self, mm_per_unit: float):
        self._set_prop("mmPerUnit", float(mm_per_unit))

    def set_axis(self, axis: str, direction: int):
        if axis in ("x", "y", "z"):
            self._set_prop("axisName", axis)
        if int(direction) in (1, -1):
            self._set_prop("direction", int(direction))

    # --- 多电机 viewer（focus）用：按电机号写 posM{n}/centerM{n} + 前后/左右方向 ---
    def set_motor_pos(self, motor: int, phys: float):
        self._set_prop(f"posM{int(motor)}", float(phys))

    def set_motor_center(self, motor: int, center: float):
        self._set_prop(f"centerM{int(motor)}", float(center))

    def set_focus_dirs(self, dir_fb: int, dir_lr: int):
        self._set_prop("dirFB", 1 if int(dir_fb) >= 0 else -1)
        self._set_prop("dirLR", 1 if int(dir_lr) >= 0 else -1)

    # --- 视角持久化：恢复 / 读取相机（四种 viewer 都有 camYaw/camPitch/camDist）---
    def set_camera(self, yaw: float, pitch: float, dist: float):
        self._set_prop("camYaw", float(yaw))
        self._set_prop("camPitch", float(pitch))
        self._set_prop("camDist", float(dist))

    def _on_qml_cam_changed(self):
        root = self.rootObject()
        if root is None:
            return
        self.camera_changed.emit(float(root.property("camYaw")),
                                 float(root.property("camPitch")),
                                 float(root.property("camDist")))

    # --- 哈特曼门（旋转）用：度/计数 比例 + 左右门方向 ---
    def set_deg_scale(self, deg_per_unit: float):
        self._set_prop("degPerUnit", float(deg_per_unit))

    def set_hartmann_dirs(self, dir_left: int, dir_right: int):
        self._set_prop("dirL", 1 if int(dir_left) >= 0 else -1)
        self._set_prop("dirR", 1 if int(dir_right) >= 0 else -1)

    # ------------------------------------------------- impl

    def _set_prop(self, name: str, value):
        root = self.rootObject()
        if root is None or not self._ready:
            # QML 还没加载完时缓存住，statusChanged Ready 时统一回放
            if name != "modelSource":
                self._pending_props[name] = value
            return
        root.setProperty(name, value)
