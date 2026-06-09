"""离屏渲染任意 Viewer.qml 并截图，支持相机 / 运动参数全覆盖，供远端无显示自测。

用法:
    python snap_probe.py <qml> <out.png> [phys] [mm] [axis] [dir] \
                         [yaw] [pitch] [dist] [cx] [cy] [cz]
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


def argf(i, d):
    return float(sys.argv[i]) if len(sys.argv) > i else d


def main():
    qml = sys.argv[1]
    out = sys.argv[2] if len(sys.argv) > 2 else "/tmp/probe.png"
    phys = argf(3, 0.0)
    mm = argf(4, 0.0001)
    axis = sys.argv[5] if len(sys.argv) > 5 else "y"
    direction = int(argf(6, 1))

    app = QGuiApplication(sys.argv)
    view = QQuickView()
    view.setResizeMode(QQuickView.ResizeMode.SizeRootObjectToView)
    view.resize(1000, 1000)
    view.setSource(QUrl.fromLocalFile(str(Path(qml).resolve())))
    print("status =", view.status())
    for e in view.errors():
        print("  QML err:", e.toString())
    root = view.rootObject()
    if root is None:
        print("rootObject is None"); sys.exit(2)

    root.setProperty("centerPhys", 0.0)
    root.setProperty("mmPerUnit", mm)
    root.setProperty("axisName", axis)
    root.setProperty("direction", direction)
    root.setProperty("physPos", phys)
    if len(sys.argv) > 7:  root.setProperty("camYaw", argf(7, 0))
    if len(sys.argv) > 8:  root.setProperty("camPitch", argf(8, 0))
    if len(sys.argv) > 9:  root.setProperty("camDist", argf(9, 1))
    # camCenter 覆盖（processModel 里也会设一次，这里在 grab 前再压一次）
    cc = None
    if len(sys.argv) > 12:
        from PySide6.QtGui import QVector3D
        cc = QVector3D(argf(10, 0), argf(11, 0), argf(12, 0))

    state = {"tries": 0}

    def grab():
        if cc is not None:
            root.setProperty("camCenter", cc)
        img = view.grabWindow()
        state["tries"] += 1
        if img.isNull() or img.width() == 0:
            if state["tries"] < 8:
                QTimer.singleShot(500, grab); return
            print("grab 一直为空"); app.quit(); return
        ok = img.save(out)
        print(f"saved={ok} {out} {img.width()}x{img.height()} phys={phys} axis={axis} mm={mm}")
        app.quit()

    view.show()
    QTimer.singleShot(2600, grab)
    app.exec()


if __name__ == "__main__":
    main()
