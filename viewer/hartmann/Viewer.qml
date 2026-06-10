// 哈特曼门 3D —— 两扇门板绕各自门轴旋转（电机 7=左门，电机 8=右门）。
//
// 与其它装置不同：运动是**旋转**不是平移。
// 模型实测（balsam 烤后局部坐标 = GLB 世界坐标，单元节点无额外变换）：
//   哈特曼门轴-1/-2 是沿 z 的长杆，轴线分别过 (x=∓0.0745, y=0.0155)；
//   门板薄边贴轴（y≈0.012），自由边在 y≈0.090 —— 绕轴转即开/关门。
//   左单元(-1, x<0)=电机7，右单元(-2, x>0)=电机8；随门转的还有各自两根加强筋。
// 旋转实现：绕「过 pivot、沿 z」的轴转 θ —— 位置在 xy 平面绕 pivot 二维旋转，
// 姿态用四元数左乘 qz(θ)（手写乘法，不赌 QML quaternion 的 API）。
import QtQuick
import QtQuick3D
import QtQuick3D.Helpers

Item {
    id: root

    property string modelSource: ""

    // ---- Python 端写入 ----
    property real posM7: 0;  property real posM8: 0
    property real centerM7: 0; property real centerM8: 0
    property real degPerUnit: 0.0001   // 1 count → 多少度（快电机计数大，默认很小）
    property int  dirL: 1              // 左门方向 ±
    property int  dirR: 1              // 右门方向 ±

    // ---- 相机 ----
    property real camYaw:   -60
    property real camPitch: -15
    property real camDist:  0.75
    property vector3d camCenter: Qt.vector3d(0, 0.19, -0.02)

    // 每扇门：[{node, baseP:vector3d, baseQ:quaternion}]
    property var leftNodes: []
    property var rightNodes: []

    // 门轴轴线（模型局部坐标，轴向 z，z 分量无关紧要）
    readonly property vector3d pivotL: Qt.vector3d(-0.0745, 0.0154558, 0)
    readonly property vector3d pivotR: Qt.vector3d( 0.0745, 0.0154558, 0)

    onPosM7Changed: applyOffset(); onPosM8Changed: applyOffset()
    onCenterM7Changed: applyOffset(); onCenterM8Changed: applyOffset()
    onDegPerUnitChanged: applyOffset(); onDirLChanged: applyOffset(); onDirRChanged: applyOffset()

    readonly property var leftPat:  ["哈特曼门板-1", "哈特曼门加强筋-1", "哈特曼门加强筋-2"]
    readonly property var rightPat: ["哈特曼门板-2", "哈特曼门加强筋-3", "哈特曼门加强筋-4"]
    readonly property var hidePatterns: [
        "gb_fastener", "gb_socket", "washer", "screw", "nut",
        "接近传感器", "线光源", "current camera"
    ]
    function matchAny(name, pats) {
        var lc = (name || "").toLowerCase();
        for (var i = 0; i < pats.length; ++i) if (lc.indexOf(pats[i].toLowerCase()) !== -1) return true;
        return false;
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
        // 模型 z 是竖直向上（顶板在 z=0.28）→ 绕 x 转 -90° 把模型 +z 对到屏幕 +y
        Node { id: modelOrient; eulerRotation: Qt.vector3d(-90, 0, 0) }
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
        onWheel: (w) => { root.camDist = Math.max(0.15, Math.min(5.0, root.camDist * ((w.angleDelta.y > 0) ? 0.88 : 1.136))); }
    }

    Rectangle { anchors.left: parent.left; anchors.right: parent.right; anchors.top: parent.top; height: 70; color: "#000"; opacity: 0.55 }
    Text { id: hud; text: "loading model ..."; color: "#fff"; font.family: "monospace"; font.pixelSize: 13; anchors.left: parent.left; anchors.top: parent.top; anchors.margins: 6 }
    Text { id: posHud; text: "M7 = -- · M8 = --"; color: "#88ffaa"; font.family: "monospace"; font.pixelSize: 13; anchors.left: parent.left; anchors.top: hud.bottom; anchors.margins: 6 }
    Text { text: "左键拖=转视角  ·  滚轮=缩放"; color: "#8899bb"; font.family: "monospace"; font.pixelSize: 12; anchors.left: parent.left; anchors.top: posHud.bottom; anchors.margins: 6 }

    property var bakedRoot: null
    Component.onCompleted: {
        var url = root.modelSource && root.modelSource.length > 0 ? root.modelSource : "baked/Model.qml";
        var comp = Qt.createComponent(url);
        function onReady() {
            if (comp.status === Component.Ready) {
                bakedRoot = comp.createObject(modelOrient, {});
                if (!bakedRoot) { hud.text = "createObject failed: " + comp.errorString(); return; }
                Qt.callLater(function() { root.processModel(); });
            } else if (comp.status === Component.Error) {
                hud.text = "load error: " + comp.errorString();
                console.warn(comp.errorString());
            }
        }
        if (comp.status === Component.Loading) comp.statusChanged.connect(onReady); else onReady();
    }

    function processModel() {
        if (!bakedRoot) return;
        var L = [], R = [], seenMats = [];
        function gather(n) {
            var out = [];
            for (var key of ["children", "data", "resources"]) {
                var arr = n[key]; if (!arr) continue;
                for (var i = 0; i < arr.length; ++i) if (arr[i] && out.indexOf(arr[i]) === -1) out.push(arr[i]);
            }
            return out;
        }
        var stack = [bakedRoot], safety = 0;
        while (stack.length > 0 && safety < 20000) {
            safety++;
            var n = stack.shift();
            var nm = (n.objectName || "") + "";
            if (n.materials) for (var mi = 0; mi < n.materials.length; ++mi) {
                var mat = n.materials[mi]; if (mat && seenMats.indexOf(mat) === -1) seenMats.push(mat);
            }
            if (matchAny(nm, hidePatterns)) { n.visible = false; }
            else if (n.position !== undefined && n.rotation !== undefined
                     && (matchAny(nm, leftPat) || matchAny(nm, rightPat))) {
                // 只收真正的 3D 节点（材质/网格等同名对象没有 position/rotation）
                var rec = { node: n, baseP: Qt.vector3d(n.x, n.y, n.z),
                            baseQ: Qt.quaternion(n.rotation.scalar, n.rotation.x, n.rotation.y, n.rotation.z) };
                if (matchAny(nm, leftPat)) L.push(rec); else R.push(rec);
            }
            var kids = gather(n);
            for (var j = 0; j < kids.length; ++j) stack.push(kids[j]);
        }
        var clay = Qt.rgba(0.72, 0.74, 0.77, 1.0);
        for (var si = 0; si < seenMats.length; ++si) {
            var sm = seenMats[si];
            try { if ("metalness" in sm) sm.metalness = 0.0; if ("roughness" in sm) sm.roughness = 0.55; if ("baseColor" in sm) sm.baseColor = clay; } catch (e) {}
        }
        leftNodes = L; rightNodes = R;
        hud.text = "哈特曼门 3D · 左门(电机7)件 " + L.length + " / 右门(电机8)件 " + R.length + " · 绕门轴旋转";
        applyOffset();
    }

    // 绕「过 pivot、沿模型 z」的轴把一组件转 deg 度
    function rotateGroup(nodes, pivot, deg) {
        var rad = deg * Math.PI / 180.0;
        var c = Math.cos(rad), s = Math.sin(rad);
        var hw = Math.cos(rad / 2), hz = Math.sin(rad / 2);   // qz(θ) = (hw, 0,0, hz)
        for (var i = 0; i < nodes.length; ++i) {
            var nd = nodes[i], b = nd.baseP, q = nd.baseQ;
            var dx = b.x - pivot.x, dy = b.y - pivot.y;
            nd.node.position = Qt.vector3d(pivot.x + c * dx - s * dy,
                                           pivot.y + s * dx + c * dy, b.z);
            // q' = qz(θ) ⊗ q   （父空间 z 轴左乘）
            nd.node.rotation = Qt.quaternion(hw * q.scalar - hz * q.z,
                                             hw * q.x - hz * q.y,
                                             hw * q.y + hz * q.x,
                                             hw * q.z + hz * q.scalar);
        }
    }

    function applyOffset() {
        var degL = (posM7 - centerM7) * degPerUnit * dirL;
        var degR = (posM8 - centerM8) * degPerUnit * dirR;
        rotateGroup(leftNodes, pivotL, degL);
        rotateGroup(rightNodes, pivotR, degR);
        posHud.text = "左门 M7 = " + posM7.toFixed(0) + " → " + degL.toFixed(1) + "°"
                    + "   右门 M8 = " + posM8.toFixed(0) + " → " + degR.toFixed(1) + "°";
    }
}
