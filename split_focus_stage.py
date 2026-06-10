"""把调焦系统 GLB 里整块的「联谊五维调整台」按世界 y 劈成上/下两层，导出新 GLB。

背景：原 GLB 的多轴调焦台是一块刚性 mesh，没有上下层之分。为在 3D 里还原
「上层=前后(X)、下层=左右(Y)」的两级运动，离线把它按一个水平面劈成两块，
导出 `联谊五维调整台上层 / 下层` 两个节点，其余件原样保留；之后再用 balsam 重烤。

依赖：trimesh、numpy（`pip install trimesh numpy`）。

用法：
    python split_focus_stage.py <in.glb> <out.glb> [cut_y=-0.145]

劈分高度 cut_y 是估算值（两节滑台之间的低密度缝隙，可先看顶点 y 直方图再定）。
重烤：
    QT_QPA_PLATFORM=offscreen LD_LIBRARY_PATH=<PySide6>/Qt/lib \
        <PySide6>/balsam -o out_split out.glb
然后把 out_split/Model_split.qml 改名为 baked/Model.qml、连同 meshes/ 一起放进
viewer/focus/baked/。
"""
import sys
import trimesh


def main():
    src = sys.argv[1]
    dst = sys.argv[2] if len(sys.argv) > 2 else "model_split.glb"
    cut_y = float(sys.argv[3]) if len(sys.argv) > 3 else -0.145

    scene = trimesh.load(src, force="scene")
    out = trimesh.Scene()
    for node in scene.graph.nodes_geometry:
        T, gname = scene.graph[node]
        geom = scene.geometry[gname]
        name = str(node)
        # 只劈那块大的「联谊五维调整台」主体（顶点数最多的一支）
        if name.startswith("联谊") and len(geom.vertices) > 100_000:
            m = geom.copy()
            m.apply_transform(T)                       # 转到世界系，按世界 y 劈
            cy = m.triangles_center[:, 1]
            for label, mask in [("联谊五维调整台上层", cy > cut_y),
                                ("联谊五维调整台下层", cy <= cut_y)]:
                part = m.copy()
                part.update_faces(mask)
                part.remove_unreferenced_vertices()
                out.add_geometry(part, node_name=label, geom_name=label)
                print(f"{label}: {len(part.faces)} faces")
        else:
            out.add_geometry(geom, node_name=name, transform=T, geom_name=name)

    out.export(dst)
    print(f"exported {dst}  (cut_y={cut_y})")


if __name__ == "__main__":
    main()
