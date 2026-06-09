"""离屏渲染整个多装置 GUI 并截图（不连 PMAC，注入假状态），供远端自测。

用法:
    python snap_gui.py <out.png> <tab_index> [motor5_actpos] [motor6_actpos]

tab_index: 0=总览 1=调焦 2=光栅切换 3=机械快门 4=哈特曼门
"""
import sys
from pathlib import Path

import gui_motors as G  # 触发 Qt 环境初始化
from PySide6.QtCore import QTimer
from PySide6.QtWidgets import QApplication

import motors as M


def fake_status(motor, actpos):
    ena = 1 if M.MOTOR_DEFS[motor]["needs_enable"] else 1
    return {"ActPos": actpos, "ActVel": 0.0, "AmpEna": ena, "AmpFault": 0, "SoftLimit": 0}


def main():
    out = sys.argv[1] if len(sys.argv) > 1 else "/tmp/gui.png"
    tab = int(sys.argv[2]) if len(sys.argv) > 2 else 0
    m5 = float(sys.argv[3]) if len(sys.argv) > 3 else 0.0
    m6 = float(sys.argv[4]) if len(sys.argv) > 4 else 0.0

    app = QApplication(sys.argv)
    w = G.MainWindow()
    w.resize(1500, 880)
    w.tabs.setCurrentIndex(tab)
    w.show()

    # 注入假状态让截图有内容（调焦 1-4 给一个偏移量，截图能看出 3D 联动）
    demo = {1: 23.0, 2: 20.0, 3: 11.0, 4: 23.0, 5: m5, 6: m6, 7: 0.0, 8: 0.0}
    full = {mtr: fake_status(mtr, demo.get(mtr, 0.0)) for mtr in M.ALL_MOTORS}
    for mtr, mc in w.controls.items():
        mc.update_status(full[mtr])
    if w._overview:
        w._overview.update_status(full)
    for vtab in w._viz_tabs:
        vtab.push_positions(full)

    def grab():
        img = w.grab()  # grab 整窗（含 QQuickWidget 合成内容）
        ok = img.save(out)
        print(f"saved={ok} {out} {img.width()}x{img.height()}")
        app.quit()

    QTimer.singleShot(2600, grab)
    app.exec()


if __name__ == "__main__":
    main()
