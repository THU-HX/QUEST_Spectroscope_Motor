"""整机光谱仪 GLB 裁剪：砍小零件 / 焦面成像只留大件 / 两套调焦台劈上下层，
导出 pruned.glb + 各关键装配的世界 AABB（光路 waypoints 用）。

用法（在测试机上，用 pmac_test3 venv）:
    python prune_full.py <in.glb> <out.glb> <waypoints.json>

裁剪规则:
  1. 名称命中小零件关键词 → 删（螺丝/垫圈/传感器/线光源/铭牌等）
  2. 顶层装配为「焦面成像系统模块」的节点 → 只保留三角形 >= FOCAL_MIN_TRI 的大件
  3. 「联谊五维调整台」(每套调焦各一块大 mesh) → 按世界 y 劈成 上层/下层（沿用
     split_focus_stage.py 的做法，节点名带实例序号便于 QML 区分两套）
"""
import json
import sys

import numpy as np
import trimesh

DROP_KW = [
    "fastener", "screw", "washer", "socket", "nut", "set screw",
    "螺", "垫圈", "垫片", "传感器", "线光源", "铭牌", "吊环",
]
FOCAL_MIN_TRI = 15_000          # 焦面成像模块里小于该三角形数的件全砍
FOCUS_SPLIT_CUT_LOCAL = -0.145  # 调焦台劈分高度（单装置模型的世界 y，=mesh 局部系）

# 光路 waypoints 要输出 AABB 的装配（按名称子串匹配顶层装配）
WAYPOINT_ASMS = [
    "焦面成像系统模块", "快门模块", "准直镜筒模块", "自制电动升降台",
    "SYS03-光栅", "SYS05-棱栅", "SYS04-分色镜",
    "Model01-平面镜", "Model02-蓝通道异形平面镜", "Model03-场镜",
    "Model01-红镜筒模块", "Model02-蓝镜筒模块", "SYS06-滤光片",
    "相机调焦系统", "哈特曼门",
]


def main():
    src, dst, wp_out = sys.argv[1], sys.argv[2], sys.argv[3]
    print("loading", src, "...", flush=True)
    s = trimesh.load(src, force="scene")
    print("loaded:", len(s.geometry), "geometries", flush=True)

    # 节点 → 顶层装配名（沿 parent 链爬到 world 的直接孩子）
    parents = s.graph.transforms.parents
    def top_of(node):
        n = node
        while parents.get(n) not in (None, "world"):
            n = parents[n]
        return n

    new = trimesh.Scene()
    kept_t = kept_c = drop_t = drop_c = 0
    wp_boxes = {}   # 装配名 -> [min, max] 累计
    focus_inst = 0  # 联谊调焦台实例计数（两套同名，A/B 区分）

    for node in s.graph.nodes_geometry:
        T, gname = s.graph[node]
        geom = s.geometry[gname]
        name = str(node)
        ln = name.lower()
        ntri = len(geom.faces)
        topname = str(top_of(node))

        # 规则 1：小零件
        if any(k in ln for k in DROP_KW):
            drop_t += ntri; drop_c += 1
            continue
        # 规则 2：焦面成像模块只留大件
        if "焦面成像系统模块" in topname and ntri < FOCAL_MIN_TRI:
            drop_t += ntri; drop_c += 1
            continue

        # 世界 AABB 累计（用于光路 waypoints）
        v = trimesh.transformations.transform_points(geom.vertices, T)
        mn, mx = v.min(axis=0), v.max(axis=0)
        for asm in WAYPOINT_ASMS:
            if asm in topname or asm in name:
                if asm in wp_boxes:
                    wp_boxes[asm][0] = np.minimum(wp_boxes[asm][0], mn)
                    wp_boxes[asm][1] = np.maximum(wp_boxes[asm][1], mx)
                else:
                    wp_boxes[asm] = [mn.copy(), mx.copy()]

        # 两套调焦系统的零件同名 → 按世界 z 符号打实例标签（A=蓝侧 z>0，B=红侧 z<0），
        # QML 里才能把 CCD/转接板分给正确的电机对。注：trimesh 父链不可靠，按零件名判断
        # （调焦零件名都带 SYS07 前缀或 QUEST－CCD）。
        if "SYS07" in name or "QUEST－CCD" in name:
            inst_tag = "@FA" if (mn[2] + mx[2]) / 2 > 0 else "@FB"
            if "联谊" not in name:
                new.add_geometry(geom, node_name=name + inst_tag,
                                 transform=T, geom_name=name + inst_tag)
                kept_t += ntri; kept_c += 1
                continue

        # 规则 3：联谊五维调整台 → 劈层（实例 A=蓝侧 z>0 / B=红侧；劈分面在 mesh 世界
        # 竖直跨度的同比例位置——单装置模型里缝隙在 y∈[-0.217,-0.077] 的同比例处）
        if "联谊" in name and len(geom.vertices) > 100_000:
            focus_inst += 1
            inst = "A" if (mn[2] + mx[2]) / 2 > 0 else "B"
            m = geom.copy(); m.apply_transform(T)
            ratio = (FOCUS_SPLIT_CUT_LOCAL - (-0.217)) / ((-0.077) - (-0.217))
            # 竖直轴：取 mesh AABB 三轴中跨度居中的那根? 不——直接用单装置同款 y？
            # 整机里装配可能被旋转。取劈分轴 = 该 mesh 三轴中与「调焦台堆叠方向」一致
            # 的轴：堆叠方向跨度 0.14m 左右，三轴里最接近 0.14 的那根。
            ext = m.bounds[1] - m.bounds[0]
            axis = int(np.argmin(np.abs(ext - 0.140)))
            ys = m.triangles_center[:, axis]
            cut = ys.min() + (ys.max() - ys.min()) * ratio
            ctr = (m.bounds[0] + m.bounds[1]) / 2
            wp_boxes[f"调焦实例{inst}"] = [m.bounds[0].copy(), m.bounds[1].copy()]
            print(f"  调焦{inst}: split axis={'xyz'[axis]} ext={ext.round(3)} center={ctr.round(3)}", flush=True)
            for label, mask in [(f"联谊五维调整台上层-{inst}", ys > cut),
                                (f"联谊五维调整台下层-{inst}", ys <= cut)]:
                part = m.copy(); part.update_faces(mask); part.remove_unreferenced_vertices()
                new.add_geometry(part, node_name=label, geom_name=label)
            kept_t += ntri; kept_c += 2
            continue

        new.add_geometry(geom, node_name=name, transform=T, geom_name=name)
        kept_t += ntri; kept_c += 1

    print(f"kept {kept_c} meshes / {kept_t:,} tri；dropped {drop_c} / {drop_t:,} tri", flush=True)
    new.export(dst)
    print("exported", dst, flush=True)

    wps = {k: {"min": [round(float(x), 4) for x in v[0]],
               "max": [round(float(x), 4) for x in v[1]],
               "center": [round(float(x), 4) for x in ((v[0] + v[1]) / 2)]}
           for k, v in wp_boxes.items()}
    with open(wp_out, "w", encoding="utf-8") as f:
        json.dump(wps, f, ensure_ascii=False, indent=1)
    print("waypoints ->", wp_out, flush=True)


if __name__ == "__main__":
    main()
