"""离屏渲染 Viewer.qml 并截图存 PNG —— 让远端无显示环境也能自测 3D 效果。

用法:
    python snap.py <out.png> <physPos> [mmPerUnit] [axis] [dir]

依赖真实 RHI；用各种 QT_QPA_PLATFORM / EGL 后端组合跑，看哪个能渲出来。
"""
import os
import sys
from pathlib import Path

import PySide6
_ROOT = Path(PySide6.__file__).resolve().parent
for _sub in ("Qt6", "Qt"):
    _qt = _ROOT / _sub
    if (_qt / "plugins").is_dir():
        break
os.environ.setdefault("QT_PLUGIN_PATH", str(_qt / "plugins"))
_qml = _qt / "qml"
if _qml.is_dir():
    os.environ.setdefault("QML2_IMPORT_PATH", str(_qml))
    os.environ.setdefault("QML_IMPORT_PATH", str(_qml))

from PySide6.QtCore import QUrl, QTimer
from PySide6.QtGui import QGuiApplication
from PySide6.QtQuick import QQuickView

HERE = Path(__file__).resolve().parent
QML = HERE / "viewer" / "Viewer.qml"


def main():
    out = sys.argv[1] if len(sys.argv) > 1 else "/tmp/snap.png"
    phys = float(sys.argv[2]) if len(sys.argv) > 2 else 17.0
    mm = float(sys.argv[3]) if len(sys.argv) > 3 else 30.0
    axis = sys.argv[4] if len(sys.argv) > 4 else "x"
    direction = int(sys.argv[5]) if len(sys.argv) > 5 else 1

    app = QGuiApplication(sys.argv)
    view = QQuickView()
    view.setResizeMode(QQuickView.ResizeMode.SizeRootObjectToView)
    view.resize(1000, 1000)
    view.setSource(QUrl.fromLocalFile(str(QML)))
    print("QQuickView.status =", view.status())
    for e in view.errors():
        print("  QML err:", e.toString())

    root = view.rootObject()
    if root is None:
        print("rootObject is None — QML 加载失败")
        sys.exit(2)

    root.setProperty("centerPhys", 17.0)
    root.setProperty("mmPerUnit", mm)
    root.setProperty("axisName", axis)
    root.setProperty("direction", direction)
    root.setProperty("physPos", phys)
    # 可选 yaw/pitch/dist 覆盖，用来验证轨道相机
    if len(sys.argv) > 6:
        root.setProperty("camYaw", float(sys.argv[6]))
    if len(sys.argv) > 7:
        root.setProperty("camPitch", float(sys.argv[7]))
    if len(sys.argv) > 8:
        root.setProperty("camDist", float(sys.argv[8]))
    print(f"props set: phys={phys} mm={mm} axis={axis} dir={direction}")

    state = {"tries": 0}

    def grab():
        img = view.grabWindow()
        state["tries"] += 1
        if img.isNull() or img.width() == 0:
            print(f"grab #{state['tries']} null")
            if state["tries"] < 8:
                QTimer.singleShot(500, grab)
                return
            print("放弃：grab 一直为空")
            app.quit()
            return
        # 判断是否全黑/全同色（说明 3D 没渲染，只有背景）
        ok = img.save(out)
        print(f"saved={ok} {out} {img.width()}x{img.height()}")
        app.quit()

    view.show()
    QTimer.singleShot(2500, grab)
    app.exec()


if __name__ == "__main__":
    main()
