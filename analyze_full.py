"""整机 GLB 结构分析（只读 JSON chunk + accessor min/max，不解码顶点）。

输出 layout.json：
  assemblies: 每个一级装配的世界 AABB（光路 waypoints / 取景用）
  axes:       关键运动参考件的世界中心 + 长轴方向（哈特曼门轴=转轴、
              快门齿条=滑动轴、升降台背板=升降轴、波纹管=相机光轴）

用法: python analyze_full.py <model.glb> <layout.json>
"""
import json
import struct
import sys

import numpy as np


def trs_matrix(node):
    m = np.eye(4)
    if "matrix" in node:
        return np.array(node["matrix"], dtype=float).reshape(4, 4).T
    t = node.get("translation", [0, 0, 0])
    r = node.get("rotation", [0, 0, 0, 1])     # xyzw
    s = node.get("scale", [1, 1, 1])
    x, y, z, w = r
    R = np.array([
        [1-2*(y*y+z*z), 2*(x*y-z*w),   2*(x*z+y*w)],
        [2*(x*y+z*w),   1-2*(x*x+z*z), 2*(y*z-x*w)],
        [2*(x*z-y*w),   2*(y*z+x*w),   1-2*(x*x+y*y)],
    ])
    m[:3, :3] = R * np.array(s)
    m[:3, 3] = t
    return m


def main():
    src, dst = sys.argv[1], sys.argv[2]
    with open(src, "rb") as f:
        f.read(12)
        clen, _ = struct.unpack("<II", f.read(8))
        gltf = json.loads(f.read(clen))
    nodes, meshes, accs = gltf["nodes"], gltf["meshes"], gltf["accessors"]

    root = next(i for i, n in enumerate(nodes)
                if n.get("name") == "QUEST08-ML-V3-QUEST光谱仪机械结构系统")

    # 世界变换 & 顶层归属：从 root 起 DFS
    world = {root: trs_matrix(nodes[root])}
    topof = {root: None}
    stack = [root]
    while stack:
        i = stack.pop()
        for c in nodes[i].get("children", []):
            world[c] = world[i] @ trs_matrix(nodes[c])
            topof[c] = c if i == root else topof[i]
            stack.append(c)

    def node_world_box(i):
        """该节点自身 mesh 的世界 AABB（用 accessor min/max 的 8 角点变换）。"""
        node = nodes[i]
        if "mesh" not in node:
            return None
        lo = np.full(3, np.inf); hi = np.full(3, -np.inf)
        for p in meshes[node["mesh"]].get("primitives", []):
            ai = p.get("attributes", {}).get("POSITION")
            if ai is None:
                continue
            a = accs[ai]
            mn, mx = np.array(a["min"][:3]), np.array(a["max"][:3])
            corners = np.array([[x, y, z] for x in (mn[0], mx[0])
                                for y in (mn[1], mx[1]) for z in (mn[2], mx[2])])
            wc = (world[i] @ np.c_[corners, np.ones(8)].T).T[:, :3]
            lo = np.minimum(lo, wc.min(axis=0)); hi = np.maximum(hi, wc.max(axis=0))
        return None if np.isinf(lo).any() else (lo, hi)

    # 1) 一级装配 AABB
    asm_box = {}
    for i in world:
        b = node_world_box(i)
        if b is None:
            continue
        t = topof[i]
        key = nodes[t].get("name", "?") if t is not None else "?"
        if key in asm_box:
            asm_box[key][0] = np.minimum(asm_box[key][0], b[0])
            asm_box[key][1] = np.maximum(asm_box[key][1], b[1])
        else:
            asm_box[key] = [b[0].copy(), b[1].copy()]

    # 2) 关键运动参考件：世界中心 + 长轴方向（局部 AABB 最长轴经旋转映射）
    AXIS_PARTS = ["哈特曼门轴", "Rack-spur", "升降台背板", "波纹管", "哈特曼门板"]
    axes = {}
    for i in world:
        name = nodes[i].get("name", "")
        if not any(k in name for k in AXIS_PARTS) or "mesh" not in nodes[i]:
            continue
        p0 = meshes[nodes[i]["mesh"]]["primitives"][0]
        a = accs[p0["attributes"]["POSITION"]]
        mn, mx = np.array(a["min"][:3]), np.array(a["max"][:3])
        ext = mx - mn
        local_axis = np.eye(3)[int(np.argmax(ext))]
        R = world[i][:3, :3]
        d = R @ local_axis
        d = d / np.linalg.norm(d)
        b = node_world_box(i)
        ctr = (b[0] + b[1]) / 2
        key = name
        n = 2
        while key in axes:
            key = f"{name}#{n}"; n += 1
        axes[key] = {"center": [round(float(x), 4) for x in ctr],
                     "axis": [round(float(x), 4) for x in d],
                     "top": (nodes[topof[i]].get("name", "?") if topof[i] is not None else "?")[:40]}

    out = {
        "assemblies": {k: {"min": [round(float(x), 4) for x in v[0]],
                           "max": [round(float(x), 4) for x in v[1]],
                           "center": [round(float(x), 4) for x in ((v[0]+v[1])/2)]}
                       for k, v in sorted(asm_box.items())},
        "axes": axes,
    }
    with open(dst, "w", encoding="utf-8") as f:
        json.dump(out, f, ensure_ascii=False, indent=1)
    print("assemblies:", len(asm_box), " axes:", len(axes))
    for k, v in out["assemblies"].items():
        print(f"  {k[:52]:52s} c={v['center']}")


if __name__ == "__main__":
    main()
