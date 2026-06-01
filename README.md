# test2/ —— 新协议 Motor 1 控制测试

仅依赖 `tests/控制协议.md` 里**已验证过**的命令集，**不复用** `src/server/` 或 `tests/` 目录的任何代码，自包含。

> ⚠️ 与 `tests/` 目录不同，本目录**会发写命令**（`#1j/` / `#1k` / `#1j=xx` / `#1j:xx` / `ECAT[0].enable`），会真的动电机。运行前确认转台周边安全。

## 文件

| 文件 | 角色 |
|---|---|
| `pmac.py` | SSH+gpascii 客户端，封装 `exec_cmd` / `read_vars` / `motor_status` / `ecat_enable` / `motor_enable` / `motor_disable` / `motor_move_abs` / `motor_move_rel` |
| `cli_motor1.py` | 命令行子命令工具，开 GUI 前先用它验证驱动 |
| `gui_motor1.py` | PySide2 GUI：状态实时显示 + 控制按钮 + 命令日志 |
| `requirements.txt` | asyncssh / PySide2 / qasync |

## 装环境

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
```

Linux/macOS：
```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

## 验证顺序

### Step 1 — 命令行读 motor1 状态（最安全）

```
python cli_motor1.py status
```

预期输出：

```
ActPos=<某数值> | ActVel=0.0 | AmpEna=0或1 | AmpFault=0 | PlusLimit=0 | MinusLimit=0
```

失败排查：见 `测试引导.md` §1.8。

### Step 2 — 持续监视

```
python cli_motor1.py watch --hz 2
```

确认数值跳动正常、网络延迟可接受（~10 ms / 次以内说明链路 OK）。

### Step 3 —（按需）EtherCAT 使能

```
python cli_motor1.py ecat
```

> Motor 1 文档说"不需要使能即可操作"，但 ECAT[0].enable 是整条 EtherCAT 总线的开关。如果转台从未启动过 EtherCAT，先发一次。如果已经在跑，跳过。

### Step 4 — 启动 GUI

```
python gui_motor1.py
```

GUI 中的操作：

1. 点 **Connect**，状态条变绿；下方状态格开始 0.5 s 刷新。
2. （可选）**启动 EtherCAT** —— 会弹确认框。
3. **使能 #1j/** / **去使能 #1k** —— 直接发命令。
4. 在 **Abs Target** 填目标位置，点 **绝对移动**；弹确认框，确认后才发。
5. 在 **Rel Delta** 填增量，点 **相对移动**；同样要确认。
6. 任何报错都打到底部日志面板。

## 安全机制

- 所有运动按钮在断开连接时禁用。
- 绝对 / 相对移动都需要二次确认，确认框里显示完整的指令。
- 数值输入框带 `QDoubleValidator`，只能输入数字。
- **去使能** 按钮显眼标红，作为紧急停车按钮使用。
- gpascii 返回 `error #NN` 时抛 `PmacError` 并在日志显示，不会静默吞掉。

## 已知限制

- 仅适配 Motor 1（协议文档目前只验证了 1 和 6）。`MOTOR = 1` 改成其他电机号即可切换；motor 5-8 操作前需先 `#nj/` 使能。
- 不实现 `#1j+` / `#1j-` 持续运动，按文档说"光栅尺范围小，需谨慎"，本测试不暴露这条。
- 不实现 STOP 命令；本协议下"去使能" `#1k` 即停。
- 配置常量（IP / 端口 / 用户 / 口令）写在 `pmac.py` 顶部，要改临时改文件。
