"""[已并入多装置版] 兼容入口。

原来的单电机 GUI 已升级为多装置版 gui_motors.py（协议 v1.2，顶部 4 个 Tab）。
保留本文件只是让 `python gui_motor1.py` 仍能启动新界面。新代码请看 gui_motors.py。
"""

from gui_motors import main

if __name__ == "__main__":
    main()
