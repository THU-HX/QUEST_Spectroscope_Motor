// 调焦装置 3D —— 两套调焦机构（电机1/2 与 电机3/4），堆叠台联动。
//
// 模型限制：这套 GLB 里整个多轴台是「联谊五维调整台」一个刚性 mesh，前后/左右两级
// 没有分开建模。所以按用户描述的物理在「可分离的层」上还原：
//   底板(二维电动平移台转接平板) = 固定不动
//   联谊五维调整台              = 绿色「左右」台，沿模型 x 平移（y 电机）
//   相机本体(CCD)+相机转接平板    = 黄色台+相机 刚性组，沿 x 随绿色一起 + 沿模型 z 前后（x 电机）
// 即：绿色动 → 相机跟着左右；x 电机动 → 相机再叠加前后。底板始终不动。
//
// 复制两份模型并列：inst[0]=调焦结构1(前后=电机1, 左右=电机2)，inst[1]=调焦结构2(前后=电机3, 左右=电机4)。
import QtQuick
import QtQuick3D
import QtQuick3D.Helpers

Item {
    id: root

    // ---- Python 端写入：每个电机的 ActPos 与归零中心 ----
    property real posM1: 0; property real posM2: 0; property real posM3: 0; property real posM4: 0
    property real centerM1: 0; property real centerM2: 0; property real centerM3: 0; property real centerM4: 0
    property real mmPerUnit: 8.0          // 1 count → 多少 mm（慢电机计数≈mm，±6 行程默认放大 8 倍便于看清）
    property int  dirFB: 1                 // 前后方向 ±
    property int  dirLR: 1                 // 左右方向 ±

    // ---- 模型内运动轴（探针实测：z=前后/光轴, x=左右, y=竖直堆叠）----
    property string fbAxis: "z"
    property string lrAxis: "x"

    // ---- 两套摆放：side=并排(沿 x)；stack=上下(沿 y) ----
    property string layout: "side"
    readonly property vector3d inst2Offset:
        layout === "stack" ? Qt.vector3d(0, -0.52, 0) : Qt.vector3d(0.34, 0, 0)

    // ---- 相机 ----
    property real camYaw:   -52
    property real camPitch: -16
    property real camDist:  1.18
    // 瞄点抬高到模型竖直中段（y=-0.09），模型在画面里整体下移、不再顶到上沿
    property vector3d camCenter: Qt.vector3d(0.17, -0.09, -0.03)

    // 用户拖动/缩放后发出 → Python 把当前视角写进 motor_config.json，下次启动恢复
    signal camChanged()

    // 每套：{green:[{node,base}], cam:[{node,base}], mf, ml}
    property var insts: []

    onPosM1Changed: applyOffset(); onPosM2Changed: applyOffset()
    onPosM3Changed: applyOffset(); onPosM4Changed: applyOffset()
    onCenterM1Changed: applyOffset(); onCenterM2Changed: applyOffset()
    onCenterM3Changed: applyOffset(); onCenterM4Changed: applyOffset()
    onMmPerUnitChanged: applyOffset(); onDirFBChanged: applyOffset(); onDirLRChanged: applyOffset()
    onFbAxisChanged: applyOffset(); onLrAxisChanged: applyOffset()

    // 物理（用户确认）：调焦台分两层，上层=前后(X)、下层=左右(Y)。
    //   Y 左右动 → 整套所有件一起动（下层带着上层和相机一起走）；
    //   X 前后动 → 只动「上层调焦台 + 相机」，下层调焦台与底板不动。
    // 联谊台原是一块刚性 mesh，已按 y≈-0.145 离线劈成「上层/下层」两块（balsam 重烤）。
    // 下面这些件只随 Y、不随 X：下层调焦台 + 底板；其余件（上层 + 相机 + 上层小板）随 X+Y。
    readonly property var lrOnlyPat: ["联谊五维调整台下层", "二维电动平移台转接平板"]
    readonly property var hidePatterns: [
        "gb_fastener", "gb_socket", "washer", "screw", "nut", "线光源", "current camera"
    ]
    function matchAny(name, pats) {
        var lc = (name || "").toLowerCase();
        for (var i = 0; i < pats.length; ++i) if (lc.indexOf(pats[i].toLowerCase()) !== -1) return true;
        return false;
    }
    function axisVec(a, d) {
        if (a === "x") return Qt.vector3d(d, 0, 0);
        if (a === "y") return Qt.vector3d(0, d, 0);
        return Qt.vector3d(0, 0, d);
    }

    View3D {
        anchors.fill: parent
        environment: SceneEnvironment {
            backgroundMode: SceneEnvironment.Color; clearColor: "#3a3a3a"
            antialiasingMode: SceneEnvironment.MSAA; antialiasingQuality: SceneEnvironment.High
            tonemapMode: SceneEnvironment.TonemapModeLinear
        }
        Node {
            position: root.camCenter
            eulerRotation: Qt.vector3d(root.camPitch, root.camYaw, 0)
            PerspectiveCamera { z: root.camDist; clipNear: 0.001; clipFar: 100; fieldOfView: 45 }
        }
        DirectionalLight { eulerRotation.x: -35; eulerRotation.y:   25; brightness: 1.4 }
        DirectionalLight { eulerRotation.x: -20; eulerRotation.y:  150; brightness: 1.0 }
        DirectionalLight { eulerRotation.x: -20; eulerRotation.y: -110; brightness: 1.0 }
        DirectionalLight { eulerRotation.x:  55; eulerRotation.y:   10; brightness: 0.7 }
        Node { id: inst1; eulerRotation: Qt.vector3d(0, 0, 0) }
        Node { id: inst2; position: root.inst2Offset }
    }

    MouseArea {
        anchors.fill: parent
        property real lastX: 0; property real lastY: 0
        onPressed: (m) => { lastX = m.x; lastY = m.y; }
        onPositionChanged: (m) => {
            root.camYaw  -= (m.x - lastX) * 0.35;
            root.camPitch = Math.max(-89, Math.min(89, root.camPitch - (m.y - lastY) * 0.35));
            lastX = m.x; lastY = m.y;
        }
        onReleased: root.camChanged()
        onWheel: (w) => { root.camDist = Math.max(0.2, Math.min(6.0, root.camDist * ((w.angleDelta.y > 0) ? 0.88 : 1.136))); root.camChanged(); }
    }

    Rectangle { anchors.left: parent.left; anchors.right: parent.right; anchors.top: parent.top; height: 50; color: "#000"; opacity: 0.55 }
    Text { id: hud; text: "loading ..."; color: "#fff"; font.family: "monospace"; font.pixelSize: 13; anchors.left: parent.left; anchors.top: parent.top; anchors.margins: 6 }

    property var bakedRoots: [null, null]
    property int loadedCount: 0
    Component.onCompleted: {
        var comp = Qt.createComponent("baked/Model.qml");
        function build() {
            var parents = [inst1, inst2];
            for (var i = 0; i < 2; ++i) {
                var inst = comp.createObject(parents[i], {});
                if (!inst) { hud.text = "createObject failed: " + comp.errorString(); return; }
                bakedRoots[i] = inst;
            }
            Qt.callLater(function() { root.processModel(); });
        }
        if (comp.status === Component.Ready) build();
        else if (comp.status === Component.Loading) comp.statusChanged.connect(function() {
            if (comp.status === Component.Ready) build();
            else if (comp.status === Component.Error) { hud.text = "load error: " + comp.errorString(); }
        });
        else hud.text = "load error: " + comp.errorString();
    }

    function gather(n) {
        var out = [];
        for (var key of ["children", "data", "resources"]) {
            var arr = n[key]; if (!arr) continue;
            for (var i = 0; i < arr.length; ++i) if (arr[i] && out.indexOf(arr[i]) === -1) out.push(arr[i]);
        }
        return out;
    }

    function processModel() {
        var clay = Qt.rgba(0.72, 0.74, 0.77, 1.0);
        var newInsts = [];
        var mf = [1, 3], ml = [2, 4];
        for (var ii = 0; ii < 2; ++ii) {
            var rootNode = bakedRoots[ii];
            if (!rootNode) continue;
            var nodes = [], seenMats = [];
            var stack = [rootNode], safety = 0;
            while (stack.length > 0 && safety < 20000) {
                safety++;
                var n = stack.shift();
                var nm = (n.objectName || "") + "";
                if (n.materials) for (var mi = 0; mi < n.materials.length; ++mi) {
                    var mat = n.materials[mi]; if (mat && seenMats.indexOf(mat) === -1) seenMats.push(mat);
                }
                if (matchAny(nm, hidePatterns)) { n.visible = false; }
                else if (n.geometry || (n.materials && n.materials.length > 0)) {
                    // 收集所有可见件；fb=true 表示它也随前后(X)动；底板只随左右(Y)
                    nodes.push({ node: n, base: Qt.vector3d(n.x, n.y, n.z), fb: !matchAny(nm, lrOnlyPat) });
                }
                var kids = gather(n);
                for (var j = 0; j < kids.length; ++j) stack.push(kids[j]);
            }
            for (var si = 0; si < seenMats.length; ++si) {
                var sm = seenMats[si];
                try { if ("metalness" in sm) sm.metalness = 0.0; if ("roughness" in sm) sm.roughness = 0.55; if ("baseColor" in sm) sm.baseColor = clay; } catch (e) {}
            }
            newInsts.push({ nodes: nodes, mf: mf[ii], ml: ml[ii] });
        }
        insts = newInsts;
        hud.text = "调焦装置 3D · 两套机构 · 左右=整体动 / 前后=相机+上层调焦台动(下层+底板不动)";
        applyOffset();
    }

    function deltaMeters(motor) {
        // (ActPos - center) * mmPerUnit / 1000 → 米
        return (root["posM" + motor] - root["centerM" + motor]) * mmPerUnit / 1000.0;
    }

    function applyOffset() {
        var fb = axisVec(fbAxis, 1), lr = axisVec(lrAxis, 1);
        for (var i = 0; i < insts.length; ++i) {
            var it = insts[i];
            var dFB = deltaMeters(it.mf) * dirFB;     // 前后（x 电机 1/3）
            var dLR = deltaMeters(it.ml) * dirLR;     // 左右（y 电机 2/4）
            // 每件都随左右(dLR)动；除底板外的件再叠加前后(dFB)。
            for (var k = 0; k < it.nodes.length; ++k) {
                var nd = it.nodes[k], b = nd.base;
                var f = nd.fb ? dFB : 0.0;
                nd.node.position = Qt.vector3d(
                    b.x + lr.x*dLR + fb.x*f,
                    b.y + lr.y*dLR + fb.y*f,
                    b.z + lr.z*dLR + fb.z*f);
            }
        }
    }
}
