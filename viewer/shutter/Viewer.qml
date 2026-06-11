// 机械快门 3D 预览（Motor 6，Qt Quick 3D 版）。
// Python 端 (viewer3d.py) 通过 setProperty 改下面 5 个属性即可触发动画 / 视觉调整。
//
// 与升降台版同一套思路：balsam 预烤 GLB → baked/Model.qml（保留中文 objectName），
// BFS 找到「快门本体单元」整支子树作为唯一运动件，沿导轨方向左右平移挡光。
//
// 模型结构（快门模块）：
//   Unit01-快门支撑单元  = 静止机架（舱体 / 底板 / 导轨 / 电机 / 齿轮 / 盖板）
//   Unit02-快门本体单元  = 运动件（快门本体 + 齿条 + 导轨轴套），整体沿导轨滑动
// 所以运动匹配只认父节点 "Mod01_Unit02-"（带尾横杠，排除 _Unit02_Part 子件），
// 平移父节点即带动整支子树，符合真实的「快门片随电机左右挡光」。
import QtQuick
import QtQuick3D
import QtQuick3D.Helpers

Item {
    id: root

    // ===== Python 端可读 / 可写的属性 =====
    property string modelSource: ""    // file:/// 路径（留空用 baked/Model.qml）
    property real   physPos:     0.0   // 物理 ActPos（电机 6 offset 0）
    property real   centerPhys:  0.0   // 快门归位（全开/全闭基准）的物理读数
    property real   mmPerUnit:   0.0001 // 1 count → 多少 mm（快电机计数大，默认很小）
    property string axisName:    "x"   // 'x' | 'y' | 'z'：导轨/挡光滑动方向（实测 x = 左右）
    property int    direction:   1     // +1 | -1（+1 时挡光片向右滑、露出左侧光孔）

    // 派生：位移（米）
    readonly property real deltaM:
        ((physPos - centerPhys) * mmPerUnit / 1000.0) * direction

    // 内部状态：运动节点列表 [{node, base:vector3d}]
    property var movingNodes: []

    // ===== 相机轨道参数（鼠标拖动改它们） =====
    // 默认摆成参考截图那样的正面 3/4 视角：光孔在右、底座在下。
    property real camYaw:   -20    // 绕世界 Y 轴方位角
    property real camPitch: -14    // 俯仰角
    property real camDist:  1.30   // 相机到 pivot 的距离（米）
    property vector3d camCenter: Qt.vector3d(0, 0, 0)

    // 用户拖动/缩放后发出 → Python 把当前视角写进 motor_config.json，下次启动恢复
    signal camChanged()

    onPhysPosChanged:    applyOffset()
    onCenterPhysChanged: applyOffset()
    onMmPerUnitChanged:  applyOffset()
    onAxisNameChanged:   applyOffset()
    onDirectionChanged:  applyOffset()

    // ===== 节点过滤规则 =====
    // 运动件：只认快门本体单元的父节点（整支跟着动）
    readonly property var movingPatterns: [
        "mod01_unit02-"
    ]
    // 藏掉小五金 / 传感器 / 光源 / 设计相机，保留核心机架，画面更干净
    readonly property var hidePatterns: [
        "gb_fastener", "gb_socket", "washer", "screw", "nut",
        "快门用接近传感器", "气动密封圈",
        "线光源", "current camera"
        // 注意：别写 "root"！balsam 场景根节点叫 "ROOT"，命中后整模型消失。
    ]

    function matchAny(name, patterns) {
        var lc = (name || "").toLowerCase();
        for (var i = 0; i < patterns.length; ++i)
            if (lc.indexOf(patterns[i].toLowerCase()) !== -1) return true;
        return false;
    }

    // ===== 场景 =====
    View3D {
        id: view
        anchors.fill: parent
        environment: SceneEnvironment {
            backgroundMode: SceneEnvironment.Color
            clearColor: "#3a3a3a"
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
            tonemapMode: SceneEnvironment.TonemapModeLinear
        }

        Node {
            id: camPivot
            position: root.camCenter
            eulerRotation: Qt.vector3d(root.camPitch, root.camYaw, 0)
            PerspectiveCamera {
                id: cam
                z: root.camDist
                clipNear: 0.001
                clipFar:  100
                fieldOfView: 45
            }
        }

        DirectionalLight { eulerRotation.x:  -35; eulerRotation.y:   25; brightness: 1.4 }
        DirectionalLight { eulerRotation.x:  -20; eulerRotation.y:  150; brightness: 1.0 }
        DirectionalLight { eulerRotation.x:  -20; eulerRotation.y: -110; brightness: 1.0 }
        DirectionalLight { eulerRotation.x:   55; eulerRotation.y:   10; brightness: 0.7 }

        // 快门模型不做额外旋转，靠相机摆到正面 3/4 视角。
        Node {
            id: modelOrient
            eulerRotation: Qt.vector3d(0, 0, 0)
        }
    }

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        property real lastX: 0
        property real lastY: 0
        onPressed: (m) => { lastX = m.x; lastY = m.y; }
        onPositionChanged: (m) => {
            var dx = m.x - lastX;
            var dy = m.y - lastY;
            lastX = m.x;
            lastY = m.y;
            root.camYaw   -= dx * 0.35;
            root.camPitch  = Math.max(-89, Math.min(89, root.camPitch - dy * 0.35));
        }
        onReleased: root.camChanged()
        onWheel: (w) => {
            var f = (w.angleDelta.y > 0) ? 0.88 : 1.136;
            root.camDist = Math.max(0.15, Math.min(4.0, root.camDist * f));
            root.camChanged();
        }
    }

    Rectangle {
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top:  parent.top
        height: 70
        color: "#000000"
        opacity: 0.55
    }
    Text {
        id: hud
        text: "loading model ..."
        color: "#ffffff"
        font.family: "monospace"
        font.pixelSize: 13
        anchors.left: parent.left
        anchors.top:  parent.top
        anchors.margins: 6
    }
    Text {
        id: posHud
        text: "phys = -- · Δ = --"
        color: "#88ffaa"
        font.family: "monospace"
        font.pixelSize: 13
        anchors.left: parent.left
        anchors.top: hud.bottom
        anchors.margins: 6
    }
    Text {
        id: helpHud
        text: "左键拖=转视角  ·  滚轮=缩放"
        color: "#8899bb"
        font.family: "monospace"
        font.pixelSize: 12
        anchors.left: parent.left
        anchors.top: posHud.bottom
        anchors.margins: 6
    }

    property var bakedRoot: null

    Component.onCompleted: {
        var url = root.modelSource && root.modelSource.length > 0
                ? root.modelSource
                : "baked/Model.qml";
        var comp = Qt.createComponent(url);
        function onReady() {
            if (comp.status === Component.Ready) {
                var inst = comp.createObject(modelOrient, {});
                if (!inst) {
                    console.warn("createObject failed:", comp.errorString());
                    hud.text = "createObject failed";
                    return;
                }
                bakedRoot = inst;
                console.log("[shutter Viewer.qml] baked model 实例创建成功，开始 processModel");
                Qt.callLater(function() { root.processModel(); });
            } else if (comp.status === Component.Error) {
                console.warn("Baked QML error:", comp.errorString());
                hud.text = "baked load error: " + comp.errorString();
            }
        }
        if (comp.status === Component.Loading) {
            comp.statusChanged.connect(onReady);
        } else {
            onReady();
        }
    }

    function processModel() {
        if (!bakedRoot) {
            console.warn("processModel: bakedRoot 还没准备好");
            return;
        }
        var moving = [];
        var seenMats = [];
        var kept = 0, hidden = 0;

        function gather(n) {
            var out = [];
            for (var key of ["children", "data", "resources"]) {
                var arr = n[key];
                if (!arr) continue;
                for (var i = 0; i < arr.length; ++i)
                    if (arr[i] && out.indexOf(arr[i]) === -1) out.push(arr[i]);
            }
            return out;
        }

        var stack = [bakedRoot];
        var safety = 0;
        while (stack.length > 0 && safety < 10000) {
            safety++;
            var n = stack.shift();
            var nm = (n.objectName || "") + "";

            if (n.materials) {
                for (var mi = 0; mi < n.materials.length; ++mi) {
                    var mat = n.materials[mi];
                    if (mat && seenMats.indexOf(mat) === -1) seenMats.push(mat);
                }
            }

            if (matchAny(nm, hidePatterns)) {
                n.visible = false;
                hidden++;
            } else {
                if (n.geometry || (n.materials && n.materials.length > 0)) kept++;
                if (matchAny(nm, movingPatterns))
                    moving.push({ node: n, base: Qt.vector3d(n.x, n.y, n.z) });
            }
            var kids = gather(n);
            for (var j = 0; j < kids.length; ++j) stack.push(kids[j]);
        }

        var clay = Qt.rgba(0.72, 0.74, 0.77, 1.0);
        for (var si = 0; si < seenMats.length; ++si) {
            var sm = seenMats[si];
            try {
                if ("metalness" in sm) sm.metalness = 0.0;
                if ("roughness" in sm) sm.roughness = 0.55;
                if ("baseColor" in sm) sm.baseColor = clay;
            } catch (e) { /* 个别材质类型没这些属性 */ }
        }

        if (moving.length === 0) {
            console.warn("[shutter Viewer.qml] 没匹配到快门本体单元，退化成整体平移");
            moving.push({ node: bakedRoot, base: Qt.vector3d(bakedRoot.x, bakedRoot.y, bakedRoot.z) });
        }
        movingNodes = moving;

        // 相机 pivot：快门模块世界中心（按手测 GLB 体积写死，可被 Python set 覆盖）
        root.camCenter = Qt.vector3d(-0.13, 0.0, 0.0);

        hud.text = "机械快门 3D 预览  ·  可动件 " + moving.length + " 支";
        applyOffset();
    }

    function applyOffset() {
        var dM = deltaM;
        for (var i = 0; i < movingNodes.length; ++i) {
            var m = movingNodes[i];
            var x = m.base.x, y = m.base.y, z = m.base.z;
            if (axisName === "x")      x += dM;
            else if (axisName === "y") y += dM;
            else                       z += dM;
            m.node.position = Qt.vector3d(x, y, z);
        }
        posHud.text = "ActPos = " + physPos.toFixed(3)
                    + "  ·  相对中心 " + ((physPos - centerPhys) >= 0 ? "+" : "")
                    + (physPos - centerPhys).toFixed(3)
                    + "  →  视觉位移 " + ((physPos - centerPhys) * mmPerUnit * direction).toFixed(1) + " mm";
    }
}
