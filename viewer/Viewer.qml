// Motor 1 升降台 3D 预览（Qt Quick 3D 版）。
// Python 端 (viewer3d.py) 通过 setProperty 改下面 5 个属性即可触发动画 / 视觉调整。
//
// 用法：QQuickWidget.setSource(file:.../Viewer.qml) 后 setProperty 即可。
//
// 注意：本版本 *不* 用 RuntimeLoader（Qt 6.11 的 RuntimeLoader 加载 GLB 后不
//      把 glTF node names 传到 QQuick3DNode.objectName，导致按名字找子件失败）。
//      改用 PySide6 自带的 `balsam` 工具预烤 GLB → baked/Model.qml，
//      烤出的 QML 保留全部 Chinese objectName，BFS 可精准找到 3 个升降台节点。
import QtQuick
import QtQuick3D
import QtQuick3D.Helpers

Item {
    id: root

    // ===== Python 端可读 / 可写的属性 =====
    property string modelSource: ""    // file:/// 路径
    property real   physPos:     17.0  // 物理 ActPos
    property real   centerPhys:  17.0  // 升降台归位的物理读数
    property real   mmPerUnit:   5.0   // 1 unit → 多少 mm
    property string axisName:    "x"   // 'x' | 'y' | 'z'
    property int    direction:   1     // +1 | -1

    // 轮询 2Hz，一格一格跳很卡。位置属性挂补间：每次新数据到来，450ms 内线性滑到
    // 新值（60fps 插值），正好接上下一次刷新 → 连续运动的观感。
    Behavior on physPos { NumberAnimation { duration: 450; easing.type: Easing.Linear } }

    // 派生：位移（米），三选轴用
    readonly property real deltaM:
        ((physPos - centerPhys) * mmPerUnit / 1000.0) * direction

    // 内部状态：运动节点列表 [{node, base:vector3d}]，processModel 填充
    property var movingNodes: []

    // ===== 相机轨道参数（鼠标拖动改它们；启动时 Python 用存盘值覆盖） =====
    property real camYaw:   -35    // 绕世界 Y 轴方位角
    property real camPitch: -8     // 俯仰角
    property real camDist:  1.10   // 相机到 pivot 的距离（米）
    property vector3d camCenter: Qt.vector3d(0.005, 0.13, 0.030)  // pivot（启动时被存盘值覆盖）

    // 用户拖动/缩放后发出 → Python 把当前视角写进 motor_config.json，下次启动恢复
    signal camChanged()

    // 右键拖动平移：camCenter 沿相机平面移动，模型跟手；松开后随视角一起存盘
    function panBy(dx, dy) {
        var k = camDist * 0.0012;
        var yr = camYaw * Math.PI / 180, pr = camPitch * Math.PI / 180;
        var rX = Math.cos(yr),                rZ = -Math.sin(yr);                                   // 相机右
        var uX = Math.sin(pr) * Math.sin(yr), uY = Math.cos(pr), uZ = Math.sin(pr) * Math.cos(yr);  // 相机上
        camCenter = Qt.vector3d(camCenter.x - rX * dx * k + uX * dy * k,
                                camCenter.y +               uY * dy * k,
                                camCenter.z - rZ * dx * k + uZ * dy * k);
    }

    // 任何配置变化都立即重算位移
    onPhysPosChanged:    applyOffset()
    onCenterPhysChanged: applyOffset()
    onMmPerUnitChanged:  applyOffset()
    onAxisNameChanged:   applyOffset()
    onDirectionChanged:  applyOffset()

    // ===== 节点过滤规则 =====
    // 移动节点：用户截图圈中的 3 块（拖盘 + 背板 + 顶部支撑板）
    // 其他机械上应该跟着动的件（滑块/螺母/触点）藏在外壳里，视觉上看不见，
    // 让它们不动反而画面更稳定。如果以后你要"全真"动起来，把它们加进来即可。
    readonly property var movingPatterns: [
        "升降台转接台面", "升降台重物支撑板", "升降台背板"
    ]
    readonly property var hidePatterns: [
        "gb_fastener", "gb_socket", "washer", "screw",
        "m6h-", "nezi-", "body_标准联轴器",
        "光电开关pm-u25", "光电开关固定架",
        "current camera", "线光源"
        // 注意：不要写 "root"！balsam 烤出来的场景里有个名字叫 "ROOT" 的根节点，
        //      包着整棵子树；lowercase substring 命中后整模型就消失了。
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
            clearColor: "#3a3a3a"             // 别太黑，跟 Blender viewport 接近
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
            tonemapMode: SceneEnvironment.TonemapModeLinear
        }

        // 相机挂在一个 pivot 节点下，pivot 绕世界中心旋转 = 轨道相机。
        // 用 camYaw/camPitch/camDist 三个 root 属性驱动，鼠标 MouseArea 改它们。
        Node {
            id: camPivot
            position: root.camCenter
            eulerRotation: Qt.vector3d(root.camPitch, root.camYaw, 0)
            PerspectiveCamera {
                id: cam
                z: root.camDist          // 相机在 pivot 局部 +Z，默认朝 -Z 正好看向 pivot 原点
                clipNear: 0.001
                clipFar:  100
                fieldOfView: 45
            }
        }

        // Quick3D 单场景最多 4 盏 DirectionalLight。4 盏从不同角度打 + 材质改成
        // 非金属（processModel 里把 metalness 清 0），就能像 Blender viewport 那样亮。
        DirectionalLight { eulerRotation.x:  -35; eulerRotation.y:   25; brightness: 1.4 }
        DirectionalLight { eulerRotation.x:  -20; eulerRotation.y:  150; brightness: 1.0 }
        DirectionalLight { eulerRotation.x:  -20; eulerRotation.y: -110; brightness: 1.0 }
        DirectionalLight { eulerRotation.x:   55; eulerRotation.y:   10; brightness: 0.7 }

        // 旋转包装：把模型的 X 轴（升降方向）对齐到世界 Y 轴（屏幕"上"）。
        // eulerRotation (0, 0, 90) 等价于绕 Z 旋转 90°，(x,y,z) → (-y, x, z)：
        //   model X → world Y     (升降 → 屏幕上下) ✓
        //   model Y → world -X    (模型深度 → 屏幕左右浅方向)
        //   model Z → world Z     (拖盘宽度 → 屏幕进深)
        // 相机后面摆在 -X 世界位置往回看，就能拿到"屏幕宽=拖盘宽=model Z"的正视图。
        // 用户在 GUI 里选的 axisName 仍是"模型坐标系"的 axis，对人理解友好。
        Node {
            id: modelOrient
            eulerRotation: Qt.vector3d(0, 0, 90)
            // 烤好的场景在 Component.onCompleted 里动态创建，挂到这个 Node 下面
        }
    }

    // 鼠标轨道控制：MouseArea 在 QQuickWidget 里比 OrbitCameraController 可靠。
    // 左键拖 = 转视角，滚轮 = 缩放。盖在 View3D 上，HUD 文字不吃鼠标所以全幅可拖。
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
            if (m.buttons & Qt.RightButton) {
                root.panBy(dx, dy);           // 右键拖 = 平移模型位置
            } else {
                // 左键拖 = 转视角。鼠标往右拖，模型应跟手往右转 → camYaw 减。
                root.camYaw   -= dx * 0.35;
                root.camPitch  = Math.max(-89, Math.min(89, root.camPitch - dy * 0.35));
            }
        }
        onReleased: root.camChanged()
        onWheel: (w) => {
            var f = (w.angleDelta.y > 0) ? 0.88 : 1.136;
            root.camDist = Math.max(0.25, Math.min(6.0, root.camDist * f));
            root.camChanged();
        }
    }

    // 顶部信息条（字号加大、底色加深，截图里看得清）
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
        text: "左键拖=转视角 · 右键拖=平移 · 滚轮=缩放"
        color: "#8899bb"
        font.family: "monospace"
        font.pixelSize: 12
        anchors.left: parent.left
        anchors.top: posHud.bottom
        anchors.margins: 6
    }

    // 用 Qt.createComponent 动态加载 balsam 烤好的场景，挂到 modelOrient 下。
    // 加载完成把根节点存到 bakedRoot，processModel 用它来 BFS。
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
                console.log("[Viewer.qml] baked model 实例创建成功，开始 processModel");
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

    // BFS 整理烤好的场景：① 隐藏螺丝等碎件 ② 收集 3 个升降台节点 ③ 材质改非金属
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

        // 关键：烤出来的 PrincipledMaterial 很多 metalness=1，没有环境贴图就全黑。
        // 统一改成浅灰非金属 + 中等粗糙度，4 盏方向光下得到 Blender solid 那样的观感。
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
            console.warn("[Viewer.qml] 没匹配到升降台节点，退化成整体平移");
            moving.push({ node: bakedRoot, base: Qt.vector3d(bakedRoot.x, bakedRoot.y, bakedRoot.z) });
        }
        movingNodes = moving;

        // 相机 pivot 用属性默认值（启动时 Python 会推存盘值），这里不再覆盖，
        // 否则会把恢复的视角中心冲掉。

        hud.text = "升降台 3D 预览  ·  可动件 " + moving.length + " 块";
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
