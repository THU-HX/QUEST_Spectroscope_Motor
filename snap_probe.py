"""离屏渲染任意 Viewer.qml 并截图，支持相机 / 运动参数全覆盖，供远端无显示自测。

用法:
    python snap_probe.py <qml> <out.png> [phys] [mm] [axis] [dir] \
                         [yaw] [pitch] [dist] [cx] [cy] [cz]  [name=value ...]

任何含 '=' 的参数都当作对 QML root 的 setProperty(name, value)（能转 float 就转，
否则按字符串），在 grab 前统一下发——用来探针式驱动多电机/多组件的 viewer。
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


def main():
    pos = [a for a in sys.argv[1:] if "=" not in a]
    kw = [a for a in sys.argv[1:] if "=" in a]

    def pf(i, d):
        return float(pos[i]) if len(pos) > i else d

    qml = pos[0]
    out = pos[1] if len(pos) > 1 else "/tmp/probe.png"
    phys = pf(2, 0.0)
    mm = pf(3, 0.0001)
    axis = pos[4] if len(pos) > 4 else "y"
    direction = int(pf(5, 1))

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

    # 单电机 viewer 的老接口（QML 没有这些属性时 setProperty 静默失败，无害）
    root.setProperty("centerPhys", 0.0)
    root.setProperty("mmPerUnit", mm)
    root.setProperty("axisName", axis)
    root.setProperty("direction", direction)
    root.setProperty("physPos", phys)
    if len(pos) > 6:  root.setProperty("camYaw", pf(6, 0))
    if len(pos) > 7:  root.setProperty("camPitch", pf(7, 0))
    if len(pos) > 8:  root.setProperty("camDist", pf(8, 1))
    cc = None
    if len(pos) > 11:
        from PySide6.QtGui import QVector3D
        cc = QVector3D(pf(9, 0), pf(10, 0), pf(11, 0))

    def apply_kw():
        for tok in kw:
            name, _, val = tok.partition("=")
            try:
                root.setProperty(name, float(val))
            except ValueError:
                root.setProperty(name, val)

    state = {"tries": 0}

    def grab():
        if cc is not None:
            root.setProperty("camCenter", cc)
        apply_kw()
        img = view.grabWindow()
        state["tries"] += 1
        if img.isNull() or img.width() == 0:
            if state["tries"] < 8:
                QTimer.singleShot(500, grab); return
            print("grab 一直为空"); app.quit(); return
        ok = img.save(out)
        print(f"saved={ok} {out} {img.width()}x{img.height()} kw={kw}")
        app.quit()

    view.show()
    QTimer.singleShot(2600, grab)
    app.exec()


if __name__ == "__main__":
    main()
