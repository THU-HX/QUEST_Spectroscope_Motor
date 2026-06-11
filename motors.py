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
# 注：哪些装置挂 3D 模型由下方 VIZ_DEVICES 按装置 key 决定（不再用每电机的标记）
MOTOR_DEFS = {
    1: dict(name="调焦结构1 x轴", offset=17.0, range=6.0,       needs_enable=False, fast=False),
    2: dict(name="调焦结构1 y轴", offset=14.0, range=6.0,       needs_enable=False, fast=False),
    3: dict(name="调焦结构2 x轴", offset=17.0, range=6.0,       needs_enable=False, fast=False),
    4: dict(name="调焦结构2 y轴", offset=17.0, range=6.0,       needs_enable=False, fast=False),
    5: dict(name="光栅切换",     offset=0.0,  range=2_000_000.0, needs_enable=True,  fast=True),
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

# ---- 带 3D 预览的装置：viewer 资产 + 关联电机 + 类型 + 默认显示参数 ----
VIEWER_ROOT = Path(__file__).resolve().parent / "viewer"

# 按装置 key（见 DEVICES）组织 3D：
#   subdir : viewer/ 下子目录（空串=根目录），放 Viewer.qml + model.glb + baked/
#   motors : 该 3D 视图联动的电机
#   kind   : "single"=单电机(升降/快门)；"focus"=两套调焦(电机1/2、3/4，前后+左右堆叠)
VIZ_DEVICES = {
    "grating":  dict(subdir="",         motors=[5],          kind="single"),
    "shutter":  dict(subdir="shutter",  motors=[6],          kind="single"),
    "focus":    dict(subdir="focus",    motors=[1, 2, 3, 4], kind="focus"),
    "hartmann": dict(subdir="hartmann", motors=[7, 8],       kind="hartmann"),
}

# 默认显示参数（按装置 key，纯视觉、可在界面里改）：
#   single：{mm_per_unit, axis, direction}，axis 是模型轴，各 Viewer.qml 自定它到屏幕的映射
#   focus ：{mm_per_unit, dir_fb, dir_lr}，前后/左右两个方向各可翻转；慢电机计数≈mm 默认放大 8 倍
# cam_yaw/cam_pitch/cam_dist：3D 视角（方位角/俯仰角/距离）；cam_cx/cy/cz：瞄点
# （右键拖动平移改它）。用户鼠标调整后自动存盘，下次启动恢复——这里只是首次默认值。
DEFAULT_VIZ_BY_DEVICE = {
    "grating":  {"mm_per_unit": 0.0001, "axis": "x", "direction": 1,
                 "cam_yaw": -35.0, "cam_pitch": -8.0, "cam_dist": 1.10,
                 "cam_cx": 0.005, "cam_cy": 0.13, "cam_cz": 0.030},
    "shutter":  {"mm_per_unit": 0.0001, "axis": "x", "direction": 1,
                 "cam_yaw": -20.0, "cam_pitch": -14.0, "cam_dist": 1.30,
                 "cam_cx": -0.13, "cam_cy": 0.0, "cam_cz": 0.0},
    "focus":    {"mm_per_unit": 8.0,    "dir_fb": 1, "dir_lr": 1,
                 "cam_yaw": -52.0, "cam_pitch": -16.0, "cam_dist": 1.18,
                 "cam_cx": 0.135, "cam_cy": -0.09, "cam_cz": -0.075},
    # 哈特曼门是旋转运动：deg_per_unit = 1 count 转多少度；左右门方向各自可翻
    "hartmann": {"deg_per_unit": 0.0001, "dir_left": 1, "dir_right": 1,
                 "cam_yaw": -60.0, "cam_pitch": -15.0, "cam_dist": 0.75,
                 "cam_cx": 0.0, "cam_cy": 0.19, "cam_cz": -0.02},
}


def viewer_assets(device_key: str):
    """返回该装置的 (Viewer.qml, model.glb) 路径；无 3D 或资产缺失返回 None。"""
    spec = VIZ_DEVICES.get(device_key)
    if not spec:
        return None
    base = VIEWER_ROOT / spec["subdir"] if spec["subdir"] else VIEWER_ROOT
    qml, glb = base / "Viewer.qml", base / "model.glb"
    return (qml, glb) if qml.is_file() and glb.is_file() else None


def viz_motors(device_key: str) -> list:
    spec = VIZ_DEVICES.get(device_key)
    return list(spec["motors"]) if spec else []


def viz_kind(device_key: str):
    spec = VIZ_DEVICES.get(device_key)
    return spec["kind"] if spec else None


def default_config() -> dict:
    """完整默认配置：每电机 center/range + 每个 3D 装置一套 viz。"""
    return {
        "motors": {
            str(m): {"center": d["offset"], "range": d["range"]}
            for m, d in MOTOR_DEFS.items()
        },
        "viz": {k: dict(v) for k, v in DEFAULT_VIZ_BY_DEVICE.items()},
    }


def _merge_viz(dst: dict, src) -> None:
    """把磁盘上的一套 viz 合进默认 viz（按默认字段的类型逐项校验）。"""
    if not isinstance(src, dict):
        return
    for fld, dval in dst.items():
        if fld not in src:
            continue
        try:
            if fld == "axis":
                if src[fld] in ("x", "y", "z"):
                    dst[fld] = src[fld]
            elif isinstance(dval, bool):
                dst[fld] = bool(src[fld])
            elif isinstance(dval, int):
                dst[fld] = int(src[fld])
            else:
                dst[fld] = float(src[fld])
        except (ValueError, TypeError):
            pass


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
    # 合并 viz：兼容三种历史格式
    dv = disk.get("viz", {})
    if isinstance(dv, dict):
        if "mm_per_unit" in dv or "axis" in dv or "direction" in dv:
            _merge_viz(cfg["viz"]["grating"], dv)          # 最旧：单块 → 升降台(grating)
        else:
            for mk, dk in {"5": "grating", "6": "shutter"}.items():
                _merge_viz(cfg["viz"][dk], dv.get(mk))     # 旧：按电机号 5/6
            for dk in DEFAULT_VIZ_BY_DEVICE:
                _merge_viz(cfg["viz"][dk], dv.get(dk))     # 新：按装置 key
    return cfg


def _viz_out(key: str, src: dict) -> dict:
    out = {}
    for fld, dval in DEFAULT_VIZ_BY_DEVICE[key].items():
        v = src.get(fld, dval)
        if fld == "axis":
            out[fld] = str(v)
        elif isinstance(dval, bool):
            out[fld] = bool(v)
        elif isinstance(dval, int):
            out[fld] = int(v)
        else:
            out[fld] = float(v)
    return out


def save_config(cfg: dict) -> None:
    payload = {
        "motors": {
            str(m): {
                "center": float(cfg["motors"][str(m)]["center"]),
                "range": float(cfg["motors"][str(m)]["range"]),
            }
            for m in MOTOR_DEFS
        },
        "viz": {k: _viz_out(k, cfg["viz"][k]) for k in DEFAULT_VIZ_BY_DEVICE},
    }
    with open(CONFIG_PATH, "w", encoding="utf-8") as f:
        json.dump(payload, f, ensure_ascii=False, indent=2)
        f.write("\n")
