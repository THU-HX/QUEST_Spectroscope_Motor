"""8 电机 / 4 装置的静态定义 + 按电机的运行时配置持久化。

数据来自 控制协议v1.2.md：
  - 调焦装置   : 电机 1-4，offset 17/14/17/17，限位 ±6，不用使能，慢
  - 光栅切换装置: 电机 5，offset 0，安全帽 ±2e6，要使能，快，带 3D
  - 机械快门装置: 电机 6，同 5（带 3D，挡光片左右滑）
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
# has_3d: 是否在该电机页左侧挂 3D 模型（电机 5 升降台 / 电机 6 快门）
MOTOR_DEFS = {
    1: dict(name="调焦结构1 x轴", offset=17.0, range=6.0,       needs_enable=False, fast=False),
    2: dict(name="调焦结构1 y轴", offset=14.0, range=6.0,       needs_enable=False, fast=False),
    3: dict(name="调焦结构2 x轴", offset=17.0, range=6.0,       needs_enable=False, fast=False),
    4: dict(name="调焦结构2 y轴", offset=17.0, range=6.0,       needs_enable=False, fast=False),
    5: dict(name="光栅切换",     offset=0.0,  range=2_000_000.0, needs_enable=True,  fast=True, has_3d=True),
    6: dict(name="机械快门",     offset=0.0,  range=2_000_000.0, needs_enable=True,  fast=True, has_3d=True),
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

# ---- 带 3D 预览的电机：viewer 资产位置 + 默认显示参数 ----
VIEWER_ROOT = Path(__file__).resolve().parent / "viewer"

# 每个带 3D 的电机对应 viewer/ 下的子目录（空串 = viewer/ 根目录）。
# 每个目录里放 Viewer.qml + model.glb + baked/（balsam 预烤产物）。
VIZ_ASSETS = {
    5: "",          # 升降台（光栅切换）：viewer/Viewer.qml
    6: "shutter",   # 机械快门：        viewer/shutter/Viewer.qml
}
VIZ_MOTORS = list(VIZ_ASSETS)   # 带 3D 的电机号

# 每个 3D 电机的默认显示参数（快电机计数大，默认比例尺很小，纯视觉，可在界面里改）。
# 注意 axis 是「模型坐标系」的轴，各 Viewer.qml 自行决定它映射到屏幕的哪个方向：
#   电机 5 升降台：x 经 modelOrient(0,0,90) 映射到屏幕上下
#   电机 6 快门：  x = 屏幕左右（挡光片沿导轨左右滑）
DEFAULT_VIZ_BY_MOTOR = {
    5: {"mm_per_unit": 0.0001, "axis": "x", "direction": 1},
    6: {"mm_per_unit": 0.0001, "axis": "x", "direction": 1},
}


def viewer_assets(motor: int):
    """返回该电机的 (Viewer.qml, model.glb) 路径；无 3D 或资产缺失返回 None。"""
    if motor not in VIZ_ASSETS:
        return None
    base = VIEWER_ROOT / VIZ_ASSETS[motor] if VIZ_ASSETS[motor] else VIEWER_ROOT
    qml, glb = base / "Viewer.qml", base / "model.glb"
    return (qml, glb) if qml.is_file() and glb.is_file() else None


def default_config() -> dict:
    """完整默认配置：每电机 center/range + 每个 3D 电机一套 viz。"""
    return {
        "motors": {
            str(m): {"center": d["offset"], "range": d["range"]}
            for m, d in MOTOR_DEFS.items()
        },
        "viz": {str(m): dict(v) for m, v in DEFAULT_VIZ_BY_MOTOR.items()},
    }


def _merge_viz(dst: dict, src: dict) -> None:
    """把磁盘上的一套 viz 合进默认 viz（逐字段校验类型）。"""
    for fld in ("mm_per_unit", "direction"):
        if fld in src:
            try:
                dst[fld] = float(src[fld]) if fld == "mm_per_unit" else int(src[fld])
            except (ValueError, TypeError):
                pass
    if src.get("axis") in ("x", "y", "z"):
        dst["axis"] = src["axis"]


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
    # 合并 viz：兼容旧格式（单块 {mm_per_unit,axis,direction} 视为电机 5）
    dv = disk.get("viz", {})
    if isinstance(dv, dict):
        if "mm_per_unit" in dv or "axis" in dv or "direction" in dv:
            _merge_viz(cfg["viz"]["5"], dv)        # 旧单块格式 → 电机 5
        else:
            for m in VIZ_MOTORS:                   # 新格式：按电机号
                k = str(m)
                if isinstance(dv.get(k), dict):
                    _merge_viz(cfg["viz"][k], dv[k])
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
            str(m): {
                "mm_per_unit": float(cfg["viz"][str(m)]["mm_per_unit"]),
                "axis": str(cfg["viz"][str(m)]["axis"]),
                "direction": int(cfg["viz"][str(m)]["direction"]),
            }
            for m in VIZ_MOTORS
        },
    }
    with open(CONFIG_PATH, "w", encoding="utf-8") as f:
        json.dump(payload, f, ensure_ascii=False, indent=2)
        f.write("\n")
