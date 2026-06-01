"""命令行健全性测试：在打开 GUI 前先用这个验证驱动通了。

用法:
    python cli_motor1.py status            # 只读 motor1 状态
    python cli_motor1.py ecat              # 发 ECAT[0].enable
    python cli_motor1.py enable            # #1j/
    python cli_motor1.py disable           # #1k
    python cli_motor1.py move-abs 0.0      # #1j=0.0
    python cli_motor1.py move-rel 0.001    # #1j:0.001
    python cli_motor1.py watch --hz 2      # 2 Hz 持续打印状态

⚠️  除 status / watch 外其余都是 **写命令** —— 会真的动电机或改总线状态。
"""

import argparse
import asyncio
import time

from pmac import PMAC, STATUS_FIELDS


MOTOR = 1


def _fmt(st: dict) -> str:
    return " | ".join(f"{k}={st[k]}" for k in STATUS_FIELDS)


async def cmd_status(_args):
    async with PMAC() as p:
        st = await p.motor_status(MOTOR)
        print(_fmt(st))


async def cmd_watch(args):
    interval = 1.0 / max(args.hz, 0.1)
    print(f"watching motor {MOTOR} @ {args.hz} Hz, Ctrl+C to stop")
    n = 0
    t0 = time.time()
    async with PMAC() as p:
        try:
            while True:
                st = await p.motor_status(MOTOR)
                n += 1
                print(f"[{time.strftime('%H:%M:%S')}] #{n:5d}  {_fmt(st)}")
                await asyncio.sleep(interval)
        except KeyboardInterrupt:
            pass
    dt = time.time() - t0
    if dt:
        print(f"\n{n} reads in {dt:.2f}s ({n / dt:.1f} Hz)")


async def cmd_ecat(_args):
    async with PMAC() as p:
        print("→ ECAT[0].enable")
        print(await p.ecat_enable())


async def cmd_enable(_args):
    async with PMAC() as p:
        print(f"→ #{MOTOR}j/")
        print(await p.motor_enable(MOTOR))


async def cmd_disable(_args):
    async with PMAC() as p:
        print(f"→ #{MOTOR}k")
        print(await p.motor_disable(MOTOR))


async def cmd_move_abs(args):
    async with PMAC() as p:
        print(f"→ #{MOTOR}J={args.pos}  (大写 J = jog 到绝对位置；小写 j= 是速度 jog，慎用)")
        print(await p.motor_move_abs(MOTOR, args.pos))


async def cmd_move_rel(args):
    async with PMAC() as p:
        print(f"→ #{MOTOR}j:{args.delta}")
        print(await p.motor_move_rel(MOTOR, args.delta))


def main():
    ap = argparse.ArgumentParser()
    sub = ap.add_subparsers(dest="cmd", required=True)

    sub.add_parser("status")

    w = sub.add_parser("watch")
    w.add_argument("--hz", type=float, default=2.0)

    sub.add_parser("ecat")
    sub.add_parser("enable")
    sub.add_parser("disable")

    a = sub.add_parser("move-abs")
    a.add_argument("pos", type=float)

    r = sub.add_parser("move-rel")
    r.add_argument("delta", type=float)

    args = ap.parse_args()
    fn = {
        "status":   cmd_status,
        "watch":    cmd_watch,
        "ecat":     cmd_ecat,
        "enable":   cmd_enable,
        "disable":  cmd_disable,
        "move-abs": cmd_move_abs,
        "move-rel": cmd_move_rel,
    }[args.cmd]
    try:
        asyncio.run(fn(args))
    except KeyboardInterrupt:
        pass


if __name__ == "__main__":
    main()
