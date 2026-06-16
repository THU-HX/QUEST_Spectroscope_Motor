"""自测「整机预览弹出独立窗口」：渲染主窗(占位) + 浮窗(viewer)。
用法: python snap_detach.py <main_out.png> <float_out.png> [delay_ms]
"""
import sys
from pathlib import Path

import gui_motors as G
from PySide6.QtCore import QTimer
from PySide6.QtWidgets import QApplication

import motors as M


def fake_status(motor, actpos):
    return {"ActPos": actpos, "ActVel": 0.0, "AmpEna": 1, "AmpFault": 0, "SoftLimit": 0}


def main():
    main_out = sys.argv[1] if len(sys.argv) > 1 else "/tmp/detach_main.png"
    float_out = sys.argv[2] if len(sys.argv) > 2 else "/tmp/detach_float.png"
    delay = int(sys.argv[3]) if len(sys.argv) > 3 else 8000

    app = QApplication(sys.argv)
    w = G.MainWindow()
    w.resize(1500, 880)
    w.tabs.setCurrentIndex(1)   # 整机
    w.show()

    demo = {1: 23.0, 2: 20.0, 3: 11.0, 4: 23.0, 5: 0.0, 6: 0.0, 7: 0.0, 8: 0.0}
    full = {m: fake_status(m, demo.get(m, 0.0)) for m in M.ALL_MOTORS}
    for m, mc in w.controls.items():
        mc.update_status(full[m])
    for vt in w._viz_tabs:
        vt.push_positions(full)

    def do_detach():
        w._full_tab.detach()                       # 销毁页内 viewer，浮窗里新建
        # 弹出后切主窗到「哈特曼门」页，模拟一边调试一边看
        w.tabs.setCurrentIndex(w.tabs.count() - 1)
        # 浮窗 viewer 刚新建，重新喂一遍假状态（正常运行靠 0.5s 轮询自愈）
        for vt in w._viz_tabs:
            vt.push_positions(full)

    def grab():
        fw = w._full_tab._float_win
        if fw is not None:
            fw.grab().save(float_out)
            print("float saved", float_out, fw.width(), "x", fw.height())
        else:
            print("FLOAT WINDOW IS NONE")
        w.grab().save(main_out)
        print("main saved", main_out)
        w._full_tab.dock()                         # 测收回不崩
        print("dock() ok, float_win =", w._full_tab._float_win)
        QTimer.singleShot(500, app.quit)

    QTimer.singleShot(delay, do_detach)            # 等页内模型加载后弹出
    QTimer.singleShot(delay + 200, lambda: [vt.push_positions(full) for vt in w._viz_tabs])
    QTimer.singleShot(delay + 10000, grab)         # 等浮窗新 viewer 加载完模型再截
    app.exec()


if __name__ == "__main__":
    main()
