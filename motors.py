"""8 电机 / 4 装置的静态定义 + 按电机的运行时配置持久化。

数据来自 控制协议v1.2.md：
  - 调焦装置   : 电机 1-4，offset 17/14/17/17，限位 ±6，不用使能，慢
  - 光栅切换装置: 电机 5，offset 0，安全帽 ±2e6，要使能，快，带 3D
  - 机械快门装置: 电机 6，同 5（无 3D）
  - 哈特曼门装置: 电机 7 左 / 8 右，同 5（无 3D）

offset/range 可在界面里改，存到 motor_config.json（按电机存）；默认值就是下面这些。
"""

import json
from pathlib import Path

CONFIG_PATH = Path(__file__).resolve().parent / "motor_config.json"


# ---- 每个电机的静态属性 + 默认配置 ----
# offset: 固件 #nj=0 命令对应的物理 ActPos（绝对输入是「相对中心」语义）
# range : 允许输入域半宽（绝对输入锁死在 ±range）；5-8 当作安全帽
# needs_enable: 是否需要先 #nj/ 使能才能动（5-8 必须）
# fast  : 快电机（5-8），影响默认显示比例与提示
# has_3d: 是否在该电机页左侧挂 3D 模型（目前仅电机 5）
MOTOR_DEFS = {
    1: dict(name="调焦结构1 x轴", offset=17.0, range=6.0,       needs_enable=False, fast=False),
    2: dict(name="调焦结构1 y轴", offset=14.0, range=6.0,       needs_enable=False, fast=False),
    3: dict(name="调焦结构2 x轴", offset=17.0, range=6.0,       needs_enable=False, fast=False),
    4: dict(name="调焦结构2 y轴", offset=17.0, range=6.0,       needs_enable=False, fast=False),
    5: dict(name="光栅切换",     offset=0.0,  range=2_000_000.0, needs_enable=True,  fast=True, has_3d=True),
    6: dict(name="机械快门",     offset=0.0,  range=2_000_000.0, needs_enable=True,  fast=True),
    7: dict(name="哈特曼门左",   offset=0.0,  range=2_000_000.0, needs_enable=True,  fast=True),
    8: dict(name="哈特曼门右",   offset=0.0,  range=2_000_000.0, needs_enable=True,  fast=True),
}

# ---- 4 个装置，每个含若干电机；顺序即 Tab 顺序 ----
DEVICES = [
    dict(key="focus",    name="调焦装置",     motors=[1, 2, 3, 4]),
    dict(key="grating",  name="光栅切换装置", motors=[5]),
    dict(key="shutter",  name="机械快门装置", motors=[6]),
    dict(key="hartmann", name="哈特曼门装置", motors=[7, 8]),
]

ALL_MOTORS = [m for d in DEVICES for m in d["motors"]]

# 3D 可视化默认参数（仅电机 5 这一页用）。快电机计数大，默认比例尺很小。
DEFAULT_VIZ = {
    "mm_per_unit": 0.0001,   # 1 count → 多少 mm（夸张倍率，纯视觉）
    "axis": "x",             # 'x' | 'y' | 'z'
    "direction": 1,          # +1 | -1
}


def default_config() -> dict:
    """完整默认配置：每电机 center/range + 全局 viz。"""
    return {
        "motors": {
            str(m): {"center": d["offset"], "range": d["range"]}
            for m, d in MOTOR_DEFS.items()
        },
        "viz": dict(DEFAULT_VIZ),
    }


def load_config() -> dict:
    cfg = default_config()
    try:
        with open(CONFIG_PATH, encoding="utf-8") as f:
            disk = json.load(f)
    except (OSError, json.JSONDecodeError):
        return cfg

    # 合并 motors
    dm = disk.get("motors", {})
    for m in MOTOR_DEFS:
        k = str(m)
        if k in dm and isinstance(dm[k], dict):
            for fld in ("center", "range"):
                if fld in dm[k]:
                    try:
                        cfg["motors"][k][fld] = float(dm[k][fld])
                    except (ValueError, TypeError):
                        pass
    # 合并 viz
    dv = disk.get("viz", {})
    if isinstance(dv, dict):
        for fld in ("mm_per_unit", "direction"):
            if fld in dv:
                try:
                    cfg["viz"][fld] = float(dv[fld]) if fld == "mm_per_unit" else int(dv[fld])
                except (ValueError, TypeError):
                    pass
        if dv.get("axis") in ("x", "y", "z"):
            cfg["viz"]["axis"] = dv["axis"]
    return cfg


def save_config(cfg: dict) -> None:
    payload = {
        "motors": {
            str(m): {
                "center": float(cfg["motors"][str(m)]["center"]),
                "range": float(cfg["motors"][str(m)]["range"]),
            }
            for m in MOTOR_DEFS
        },
        "viz": {
            "mm_per_unit": float(cfg["viz"]["mm_per_unit"]),
            "axis": str(cfg["viz"]["axis"]),
            "direction": int(cfg["viz"]["direction"]),
        },
    }
    with open(CONFIG_PATH, "w", encoding="utf-8") as f:
        json.dump(payload, f, ensure_ascii=False, indent=2)
        f.write("\n")
