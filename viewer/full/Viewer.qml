// 整机光谱仪 3D —— 8 电机全联动 + 光路演示。
//
// 模型：整机 GLB 经 prune_full.py 裁剪（砍小零件/焦面留大件/调焦台劈层打 @FA/@FB 标）
// 后 balsam 烘焙。trimesh 导出把层级拍平 → 所有节点都在世界系，运动轴实测全部轴对齐：
//   升降台(M5)   = +y 平移，棱栅坐在台上一起动（光栅是固定的）
//   快门(M6)     = +z 平移（Unit02 整支）
//   调焦A=蓝侧(M1 前后 +x / M2 左右 +z)、调焦B=红侧(M3/M4)——上层+相机随前后，
//                  下层+底板只随左右（同单装置页 v4 规则）
//   哈特曼门(M7 门1 / M8 门2) = 绕竖直(+y)轴旋转，转轴从「哈特曼门轴-N」节点位置动态取
// 光路：waypoints 由 analyze_full.py 的装配中心拟定（分色镜前白、后蓝/红两支），可开关。
import QtQuick
import QtQuick3D
import QtQuick3D.Helpers

Item {
    id: root

    property string modelSource: ""

    // ---- Python 端写入：8 电机位置/中心 ----
    property real posM1: 0; property real posM2: 0; property real posM3: 0; property real posM4: 0
    property real posM5: 0; property real posM6: 0; property real posM7: 0; property real posM8: 0
    property real centerM1: 0; property real centerM2: 0; property real centerM3: 0; property real centerM4: 0
    property real centerM5: 0; property real centerM6: 0; property real centerM7: 0; property real centerM8: 0
    Behavior on posM1 { NumberAnimation { duration: 450; easing.type: Easing.Linear } }
    Behavior on posM2 { NumberAnimation { duration: 450; easing.type: Easing.Linear } }
    Behavior on posM3 { NumberAnimation { duration: 450; easing.type: Easing.Linear } }
    Behavior on posM4 { NumberAnimation { duration: 450; easing.type: Easing.Linear } }
    Behavior on posM5 { NumberAnimation { duration: 450; easing.type: Easing.Linear } }
    Behavior on posM6 { NumberAnimation { duration: 450; easing.type: Easing.Linear } }
    Behavior on posM7 { NumberAnimation { duration: 450; easing.type: Easing.Linear } }
    Behavior on posM8 { NumberAnimation { duration: 450; easing.type: Easing.Linear } }

    // ---- 各装置显示比例 / 方向（Python 从各装置页的 viz 配置推过来，保持一致）----
    property real focMm: 8.0;     property int focFb: 1;  property int focLr: 1
    property real liftMm: 0.0001; property int liftDir: 1
    property real shutMm: 0.0001; property int shutDir: 1
    property real hartDeg: 0.0001; property int hartL: 1; property int hartR: 1

    // ---- 光路开关 ----
    property bool lightOn: true

    // ---- 光路动画 + 遮挡联动 ----
    // flowPhase 0→1 无限循环，驱动「光子」沿光束前进；电机挡光时下游段隐藏、光子停在挡光处。
    property real flowPhase: 0
    NumberAnimation on flowPhase { from: 0; to: 1; duration: 1600; loops: Animation.Infinite; running: true }
    onFlowPhaseChanged: moveArrows()

    // ===== 挡光 / 亮度配置（按实机调；HUD 实时显示各装置位移/转角，照着读数定阈值/方向）=====
    //   快门 M6：0mm = 关（主光路挡死，光透不过）；移动到「位移×方向 ≥ shutOpenMm」才开(通光)。
    //            → 主光路被挡时快门后白光 + 蓝 + 红 全灭。开关方向反了把 shutOpenDir 改 -1。
    //   光栅切换 M5：默认(下/0mm)只有红支；升到位「位移×方向 ≥ gratOpenMm」蓝支才通。方向反了改 gratOpenDir。
    //   哈特曼门 M7/M8：常开=全亮，不改光路；转角越大越关，按综合开度降低蓝/红支「亮度(透明度)」。
    //            hartCloseDeg = 单门全关角度（转到此角度该门贡献亮度→0）。
    property real shutOpenMm: 8.0;   property int shutOpenDir: 1     // 快门 M6：开启所需位移 mm（0mm=关）
    property real gratOpenMm: 8.0;   property int gratOpenDir: 1     // 光栅 M5：蓝支开启所需升起位移 mm（0mm=只红）
    property real hartCloseDeg: 90.0                                 // 哈特曼门：单门全关角度（亮度渐变用）
    // 运行态（applyOffset 实时算）：主光路 / 蓝支 / 红支 是否被挡 + 蓝红支亮度(0..1)
    property bool blkMain: false
    property bool blkBlue: false
    property bool blkRed: false
    property real beamBright: 1.0

    // ---- 各装置电机状态（Python 每轮询推送）：0=断连/未知(灰) 1=正常(绿) 2=异常(红) ----
    property int stFA: 0; property int stFB: 0
    property int stLift: 0; property int stShut: 0
    property int stH1: 0; property int stH2: 0
    onStFAChanged: applyStatus(); onStFBChanged: applyStatus()
    onStLiftChanged: applyStatus(); onStShutChanged: applyStatus()
    onStH1Changed: applyStatus(); onStH2Changed: applyStatus()

    // ---- 相机 ----
    property real camYaw:   -35
    property real camPitch: -18
    property real camDist:  2.1
    property vector3d camCenter: Qt.vector3d(0, 0.12, 0)
    signal camChanged()
    function panBy(dx, dy) {
        var k = camDist * 0.0012;
        var yr = camYaw * Math.PI / 180, pr = camPitch * Math.PI / 180;
        var rX = Math.cos(yr),                rZ = -Math.sin(yr);
        var uX = Math.sin(pr) * Math.sin(yr), uY = Math.cos(pr), uZ = Math.sin(pr) * Math.cos(yr);
        camCenter = Qt.vector3d(camCenter.x - rX * dx * k + uX * dy * k,
                                camCenter.y +               uY * dy * k,
                                camCenter.z - rZ * dx * k + uZ * dy * k);
    }

    onPosM1Changed: applyOffset(); onPosM2Changed: applyOffset()
    onPosM3Changed: applyOffset(); onPosM4Changed: applyOffset()
    onPosM5Changed: applyOffset(); onPosM6Changed: applyOffset()
    onPosM7Changed: applyOffset(); onPosM8Changed: applyOffset()
    onCenterM1Changed: applyOffset(); onCenterM2Changed: applyOffset()
    onCenterM3Changed: applyOffset(); onCenterM4Changed: applyOffset()
    onCenterM5Changed: applyOffset(); onCenterM6Changed: applyOffset()
    onCenterM7Changed: applyOffset(); onCenterM8Changed: applyOffset()
    onFocMmChanged: applyOffset(); onFocFbChanged: applyOffset(); onFocLrChanged: applyOffset()
    onLiftMmChanged: applyOffset(); onLiftDirChanged: applyOffset()
    onShutMmChanged: applyOffset(); onShutDirChanged: applyOffset()
    onHartDegChanged: applyOffset(); onHartLChanged: applyOffset(); onHartRChanged: applyOffset()

    // ===== 分组匹配规则（全部子串匹配，flatten 后的名字带路径前缀不影响）=====
    readonly property var liftPat:   ["升降台转接台面", "升降台重物支撑板", "升降台背板", "SYS05-棱栅", "棱栅"]
    readonly property var shutPat:   ["mod01_unit02-"]
    // 调焦：@FA/@FB 是裁剪时按 z 符号打的实例标签；上层/下层-A/-B 是劈层产物
    readonly property var faAllPat:  ["@fa", "上层-a", "下层-a"]
    readonly property var fbAllPat:  ["@fb", "上层-b", "下层-b"]
    readonly property var focLrOnly: ["二维电动平移台转接平板", "下层-"]   // 这些只随左右
    readonly property var hart1Pat:  ["哈特曼门板-1", "哈特曼门加强筋-1", "哈特曼门加强筋-2"]
    readonly property var hart2Pat:  ["哈特曼门板-2", "哈特曼门加强筋-3", "哈特曼门加强筋-4"]
    readonly property var hidePatterns: [
        "gb_fastener", "gb_socket", "washer", "screw", "nut",
        "接近传感器", "线光源", "current camera", "气动密封圈", "光电开关",
        "罩壳",   // 外壳板直接隐藏：装置和光路都在壳里
        // 悬浮件（外筒被裁后镜片/胶垫悬空，或源模型本身悬空的辅助件）
        "波前准直镜系统", "wfss", "ebom-freeparts", "导星镜筒模块",
        "图纸自建", "硅胶", "胶垫", "胶圈"
    ]
    // 四装置按「电机状态」着色：正常=绿 / 异常(AmpFault·SoftLimit≠0)=红；
    // 其余所有件统一淡色（只看形状，不看花色）。
    readonly property var stFocusAPat: ["@fa", "上层-a", "下层-a"]   // 调焦A(蓝) M1/M2
    readonly property var stFocusBPat: ["@fb", "上层-b", "下层-b"]   // 调焦B(红) M3/M4
    readonly property var stLiftPat:   ["升降台"]                     // 光栅切换 M5（整塔）
    readonly property var stShutPat:   ["快门"]                       // 快门 M6（整模块）
    // 哈特曼门：两扇门各随自己电机；其余机架件随 M7&M8 联合状态
    readonly property var stHartAllPat: ["哈特曼门"]
    function matchAny(name, pats) {
        var lc = (name || "").toLowerCase();
        for (var i = 0; i < pats.length; ++i) if (lc.indexOf(pats[i].toLowerCase()) !== -1) return true;
        return false;
    }

    // 运动组：[{node, baseP, baseQ}]；哈特曼转轴（竖直线过 (x,z)，从门轴节点动态取）
    property var liftNodes: []; property var shutNodes: []
    property var faNodes: [];   property var fbNodes: []      // {.., lrOnly:bool}
    property var h1Nodes: [];   property var h2Nodes: []
    // 状态着色组（带材质的 Model 列表）
    property var sFA: []; property var sFB: []; property var sLift: []
    property var sShut: []; property var sH1: []; property var sH2: []; property var sHFrame: []
    property var h1Pivot: Qt.vector3d(-0.4215, 0, -0.066)
    property var h2Pivot: Qt.vector3d(-0.4215, 0, -0.214)

    View3D {
        anchors.fill: parent
        environment: SceneEnvironment {
            backgroundMode: SceneEnvironment.Color; clearColor: "#2e2e33"
            antialiasingMode: SceneEnvironment.MSAA; antialiasingQuality: SceneEnvironment.High
            tonemapMode: SceneEnvironment.TonemapModeLinear
        }
        Node {
            position: root.camCenter
            eulerRotation: Qt.vector3d(root.camPitch, root.camYaw, 0)
            PerspectiveCamera { z: root.camDist; clipNear: 0.005; clipFar: 200; fieldOfView: 45 }
        }
        DirectionalLight { eulerRotation.x: -35; eulerRotation.y:   25; brightness: 1.3 }
        DirectionalLight { eulerRotation.x: -20; eulerRotation.y:  150; brightness: 1.0 }
        DirectionalLight { eulerRotation.x: -20; eulerRotation.y: -110; brightness: 1.0 }
        DirectionalLight { eulerRotation.x:  60; eulerRotation.y:    0; brightness: 0.7 }

        // 状态材质：四装置整组按电机状态换色
        PrincipledMaterial { id: matOK;  baseColor: "#3fbf6f"; metalness: 0.0; roughness: 0.5 }   // 正常=绿
        PrincipledMaterial { id: matBad; baseColor: "#e5484d"; metalness: 0.0; roughness: 0.5 }   // 异常=红
        PrincipledMaterial { id: matUnk; baseColor: "#73777d"; metalness: 0.0; roughness: 0.6 }   // 断连/未知=灰

        // 整机模型挂这（拍平的世界系，无需再旋转——世界 y 已是竖直向上）
        Node { id: modelOrient }

        // ===== 光路（可开关）：分色镜前白光，分色后蓝/红两支 =====
        // waypoints 来自 analyze_full.py 的装配中心，近似示意；要微调改下面坐标即可。
        Node {
            id: lightPath
            visible: root.lightOn
            // 段定义在 Component.onCompleted 里生成（buildLightPath）
        }
    }

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        property real lastX: 0; property real lastY: 0
        onPressed: (m) => { lastX = m.x; lastY = m.y; }
        onPositionChanged: (m) => {
            var dx = m.x - lastX, dy = m.y - lastY;
            lastX = m.x; lastY = m.y;
            if (m.buttons & Qt.RightButton) { root.panBy(dx, dy); return; }
            root.camYaw  -= dx * 0.35;
            root.camPitch = Math.max(-89, Math.min(89, root.camPitch - dy * 0.35));
        }
        onReleased: root.camChanged()
        onWheel: (w) => { root.camDist = Math.max(0.3, Math.min(12.0, root.camDist * ((w.angleDelta.y > 0) ? 0.88 : 1.136))); root.camChanged(); }
    }

    Rectangle { anchors.left: parent.left; anchors.right: parent.right; anchors.top: parent.top; height: 70; color: "#000"; opacity: 0.55 }
    Text { id: hud; text: "loading 整机模型（约 1600 件，请稍候）..."; color: "#fff"; font.family: "monospace"; font.pixelSize: 13; anchors.left: parent.left; anchors.top: parent.top; anchors.margins: 6 }
    Text { id: posHud; text: ""; color: "#88ffaa"; font.family: "monospace"; font.pixelSize: 12; anchors.left: parent.left; anchors.top: hud.bottom; anchors.margins: 6 }
    Text { text: "左键拖=转视角 · 右键拖=平移 · 滚轮=缩放"; color: "#8899bb"; font.family: "monospace"; font.pixelSize: 12; anchors.left: parent.left; anchors.top: posHud.bottom; anchors.margins: 6 }

    property var bakedRoot: null
    Component.onCompleted: {
        buildLightPath();
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

    // ===== 光路：虚线 + 流动箭头（沿折线；电机挡光时下游隐藏）=====
    // 光路画成「一段段短圆柱组成的虚线」（静态）+ 沿线循环前进的「箭头锥」（动画，
    // 指示传播方向）。比光球更像示意图。整段按挡光分组（whitePre/Post/blue/red）开关。

    function dist3(a, b) { var dx=b[0]-a[0],dy=b[1]-a[1],dz=b[2]-a[2]; return Math.sqrt(dx*dx+dy*dy+dz*dz); }

    // 把内置 #Cylinder/#Cone（局部 +y 轴）转到方向 (ux,uy,uz)
    function orientToDir(node, ux, uy, uz) {
        var d = Math.max(-1, Math.min(1, uy));            // dot((0,1,0), dir)
        var angle = Math.acos(d);
        var axx = uz, axz = -ux;                          // 轴 = y × dir
        var an = Math.sqrt(axx*axx + axz*axz);
        if (an < 1e-6) { axx = 1; axz = 0; an = 1; }
        axx /= an; axz /= an;
        var s = Math.sin(angle/2);
        node.rotation = Qt.quaternion(Math.cos(angle/2), axx*s, 0, axz*s);
    }

    // 折线弧长表 {cum:[...], total}
    function buildArc(pts) {
        var cum = [0], total = 0;
        for (var i = 0; i+1 < pts.length; ++i) { total += dist3(pts[i], pts[i+1]); cum.push(total); }
        return { cum: cum, total: total };
    }
    // 弧长 s 处的 {p:[x,y,z], u:[ux,uy,uz]}（位置 + 单位切向）
    function sampleArc(pts, arc, s) {
        var total = arc.total, cum = arc.cum;
        if (s < 0) s = 0; if (s > total) s = total;
        for (var i = 0; i+1 < pts.length; ++i) {
            if (s <= cum[i+1] || i+2 === pts.length) {
                var segLen = cum[i+1] - cum[i];
                var f = segLen < 1e-9 ? 0 : (s - cum[i]) / segLen;
                var a = pts[i], b = pts[i+1];
                var dx = b[0]-a[0], dy = b[1]-a[1], dz = b[2]-a[2];
                var L = Math.sqrt(dx*dx+dy*dy+dz*dz) || 1;
                return { p: [a[0]+dx*f, a[1]+dy*f, a[2]+dz*f], u: [dx/L, dy/L, dz/L] };
            }
        }
        var last = pts[pts.length-1];
        return { p: [last[0],last[1],last[2]], u: [1,0,0] };
    }

    // 一节虚线（短圆柱）：中心 c、方向 u、长 len、直径 dia
    function mkDash(cx, cy, cz, ux, uy, uz, len, dia, color) {
        var sxy = dia/100, sh = len/100;
        var m = Qt.createQmlObject('import QtQuick; import QtQuick3D; Model { source: "#Cylinder"; ' +
            'position: Qt.vector3d(' + cx + ',' + cy + ',' + cz + '); ' +
            'scale: Qt.vector3d(' + sxy + ',' + sh + ',' + sxy + '); ' +
            'materials: [ DefaultMaterial { lighting: DefaultMaterial.NoLighting; diffuseColor: "' + color + '" } ] }', lightPath);
        orientToDir(m, ux, uy, uz);
        return m;
    }
    // 在 pts 的弧长 [s0,s1) 段铺虚线，节点入 list
    function layDashes(list, pts, arc, s0, s1, color) {
        var step = 0.05, dashLen = 0.028, dia = 0.012;    // 周期50mm·段长28mm·直径12mm
        for (var s = s0 + dashLen*0.5; s < s1; s += step) {
            var smp = sampleArc(pts, arc, s);
            list.push(mkDash(smp.p[0], smp.p[1], smp.p[2], smp.u[0], smp.u[1], smp.u[2], dashLen, dia, color));
        }
    }
    // 箭头锥（#Cone 尖朝 +y）；位置/朝向每帧更新
    function layArrows(list, color, n) {
        for (var i = 0; i < n; ++i) {
            var m = Qt.createQmlObject('import QtQuick; import QtQuick3D; Model { source: "#Cone"; ' +
                'scale: Qt.vector3d(0.0003,0.0006,0.0003); ' +   // 底径30mm·高60mm
                'materials: [ DefaultMaterial { lighting: DefaultMaterial.NoLighting; diffuseColor: "' + color + '" } ] }', lightPath);
            list.push(m);
        }
    }

    // 段集合（虚线节点）/ 箭头集合 / 折线 + 弧长（buildLightPath 填充）
    property var whitePreDash: []   // 入射→快门：常亮
    property var whitePostDash: []  // 快门→分色镜：快门挡光时灭
    property var blueDash: []       // 蓝支：快门或左门挡光时灭
    property var redDash: []        // 红支：快门或右门挡光时灭
    property var whiteArrows: []; property var blueArrows: []; property var redArrows: []
    property var whitePts: [];   property var bluePts: [];   property var redPts: []
    property var whiteArc: null;  property var blueArc: null; property var redArc: null
    property real whiteShutArc: 0   // 快门处弧长（挡光时箭头停这）

    function buildLightPath() {
        // ===== 真实入射光路（用户指定的具体元件，坐标由模型按名实测）=====
        //   入射 → 图纸自建-场镜-1 → 平面反射镜①(平面镜镜室-1) → 平面反射镜②(平面镜镜室-1_2)
        //   → 快门 → 原蓝/红支。微调改坐标即可。
        var ENTRY = [-0.723, 0.214, -0.45];   // 入射（场镜后方，沿光轴 +z 进入）
        var FL    = [-0.723, 0.214, -0.27];   // 图纸自建-场镜-1（场镜，实测中心）
        var M1    = [-0.721, 0.214,  0.059];  // 平面反射镜①（平面镜镜室-1，z>0 侧）
        var M2    = [-0.891, 0.214, -0.143];  // 平面反射镜②（平面镜镜室-1_2，接原光路）
        var SHUT  = [-0.58, 0.214, -0.14], COLL = [-0.44, 0.20, -0.14], DICH = [-0.04, 0.17, -0.15];
        // 蓝支：分色镜 → 蓝通道异形平面镜 → 光栅 → 蓝镜筒 → 波纹管 → 蓝CCD
        var B = [DICH, [-0.17, 0.15, 0.02], [-0.04, 0.16, 0.06], [0.33, 0.17, 0.14], [0.63, 0.21, 0.21], [0.80, 0.12, 0.21]];
        // 红支：分色镜 → 棱栅 → 红镜筒 → 波纹管 → 红CCD
        var Rr = [DICH, [0.31, 0.16, -0.16], [0.54, 0.15, -0.14], [0.69, 0.21, -0.14], [0.87, 0.12, -0.18]];

        whitePts = [ENTRY, FL, M1, M2, SHUT, COLL, DICH];
        bluePts = B; redPts = Rr;
        whiteArc = buildArc(whitePts); blueArc = buildArc(B); redArc = buildArc(Rr);
        whiteShutArc = whiteArc.cum[4];   // 索引 4 = SHUT

        // 虚线（静态）：白光分快门前/后两组；蓝/红各一组
        layDashes(whitePreDash,  whitePts, whiteArc, 0, whiteShutArc, "#ffffff");
        layDashes(whitePostDash, whitePts, whiteArc, whiteShutArc, whiteArc.total, "#ffffff");
        layDashes(blueDash, bluePts, blueArc, 0, blueArc.total, "#4da6ff");
        layDashes(redDash,  redPts,  redArc,  0, redArc.total,  "#ff5544");

        // 箭头（流动）：每支 4 个，沿线循环前进指示方向
        layArrows(whiteArrows, "#ffffff", 4);
        layArrows(blueArrows,  "#bfe0ff", 4);
        layArrows(redArrows,   "#ffc0b0", 4);

        updateGates();
        moveArrows();
    }

    function setVis(list, v) { for (var i = 0; i < list.length; ++i) list[i].visible = v; }
    function updateGates() {
        setVis(whitePostDash, !blkMain);              // 主光路被挡 → 快门后白光灭
        setVis(blueDash, !(blkMain || blkBlue));      // 主光路挡 或 蓝支(光栅)挡
        setVis(redDash,  !(blkMain || blkRed));       // 主光路挡 或 红支挡
        moveArrows();
    }
    // 哈特曼门开度 → 蓝/红支亮度（材质透明度）：1=全亮，0.5=半亮…
    function setOpacity(list, op) {
        for (var i = 0; i < list.length; ++i) {
            var n = list[i];
            if (n && n.materials && n.materials.length > 0) n.materials[0].opacity = op;
        }
    }
    function applyBeamBrightness() {
        setOpacity(blueDash, beamBright);  setOpacity(redDash, beamBright);
        setOpacity(blueArrows, beamBright); setOpacity(redArrows, beamBright);
    }
    function placeArrows(list, pts, arc, sMax, on) {
        for (var i = 0; i < list.length; ++i) {
            var nd = list[i];
            if (!on) { nd.visible = false; continue; }
            nd.visible = root.lightOn;
            var t = (root.flowPhase + i / list.length) % 1.0;   // 均匀错相 → 一串箭头在流
            var smp = sampleArc(pts, arc, t * sMax);
            nd.position = Qt.vector3d(smp.p[0], smp.p[1], smp.p[2]);
            orientToDir(nd, smp.u[0], smp.u[1], smp.u[2]);
        }
    }
    function moveArrows() {
        if (!whiteArc) return;   // build 之前 no-op
        placeArrows(whiteArrows, whitePts, whiteArc, blkMain ? whiteShutArc : whiteArc.total, true);
        placeArrows(blueArrows,  bluePts,  blueArc, blueArc.total, !(blkMain || blkBlue));
        placeArrows(redArrows,   redPts,   redArc,  redArc.total,  !(blkMain || blkRed));
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
        if (!bakedRoot) return;
        var lift = [], shut = [], fa = [], fb = [], h1 = [], h2 = [], seenMats = [];
        var _sFA = [], _sFB = [], _sLift = [], _sShut = [], _sH1 = [], _sH2 = [], _sHF = [];
        var stack = [bakedRoot], safety = 0, total = 0;
        while (stack.length > 0 && safety < 30000) {
            safety++;
            var n = stack.shift();
            var nm = (n.objectName || "") + "";
            if (n.materials) for (var mi = 0; mi < n.materials.length; ++mi) {
                var mat = n.materials[mi]; if (mat && seenMats.indexOf(mat) === -1) seenMats.push(mat);
            }
            if (matchAny(nm, hidePatterns)) { n.visible = false; }
            else if (n.position !== undefined && n.rotation !== undefined) {
                if (n.geometry || (n.materials && n.materials.length > 0)) total++;
                // 四装置 → 状态着色组（其余件统一淡色，见下方材质遍历）
                if (n.materials && n.materials.length > 0) {
                    if (matchAny(nm, stFocusAPat))      _sFA.push(n);
                    else if (matchAny(nm, stFocusBPat)) _sFB.push(n);
                    else if (matchAny(nm, stLiftPat))   _sLift.push(n);
                    else if (matchAny(nm, stShutPat))   _sShut.push(n);
                    else if (matchAny(nm, hart1Pat))    _sH1.push(n);
                    else if (matchAny(nm, hart2Pat))    _sH2.push(n);
                    else if (matchAny(nm, stHartAllPat)) _sHF.push(n);
                }
                var rec = { node: n, baseP: Qt.vector3d(n.x, n.y, n.z),
                            baseQ: Qt.quaternion(n.rotation.scalar, n.rotation.x, n.rotation.y, n.rotation.z),
                            lrOnly: matchAny(nm, focLrOnly) };
                if (matchAny(nm, liftPat))        lift.push(rec);
                else if (matchAny(nm, shutPat))   shut.push(rec);
                else if (matchAny(nm, faAllPat))  fa.push(rec);
                else if (matchAny(nm, fbAllPat))  fb.push(rec);
                else if (matchAny(nm, hart1Pat))  h1.push(rec);
                else if (matchAny(nm, hart2Pat))  h2.push(rec);
                // 哈特曼转轴：从门轴节点位置取竖直转轴的 (x,z)
                if (nm.indexOf("哈特曼门轴-1") !== -1) h1Pivot = Qt.vector3d(n.x, 0, n.z);
                else if (nm.indexOf("哈特曼门轴-2") !== -1) h2Pivot = Qt.vector3d(n.x, 0, n.z);
            }
            var kids = gather(n);
            for (var j = 0; j < kids.length; ++j) stack.push(kids[j]);
        }
        // 非装置件统一「缎面浅灰」：比中灰亮一档 + 低粗糙度（方向光能打出高光）
        // + 薄清漆层 → 有金属质感、不发闷；同时仍比纯白暗，白色光束依旧显眼。
        // 状态组节点随后整体替换为绿/红/灰材质，不受影响。
        var satin = Qt.rgba(0.68, 0.69, 0.71, 1.0);
        for (var si = 0; si < seenMats.length; ++si) {
            var sm = seenMats[si];
            try {
                if ("metalness" in sm) sm.metalness = 0.0;
                if ("roughness" in sm) sm.roughness = 0.6;
                if ("baseColor" in sm) sm.baseColor = satin;
                if ("specularAmount" in sm) sm.specularAmount = 0.6;
                if ("clearcoatAmount" in sm) sm.clearcoatAmount = 0.25;
            } catch (e) {}
        }
        liftNodes = lift; shutNodes = shut; faNodes = fa; fbNodes = fb; h1Nodes = h1; h2Nodes = h2;
        sFA = _sFA; sFB = _sFB; sLift = _sLift; sShut = _sShut; sH1 = _sH1; sH2 = _sH2; sHFrame = _sHF;
        hud.text = "整机 3D · 件" + total + " · 绿=正常 红=故障/限位/未使能 灰=断连 · 升降" + lift.length
                 + " 快门" + shut.length + " 调焦A" + fa.length + "/B" + fb.length
                 + " 哈特曼" + h1.length + "/" + h2.length;
        applyStatus();
        applyOffset();
    }

    // 状态着色：组内全部 Model 按三态换材质（0灰/1绿/2红）
    function paint(list, st) {
        var m = (st === 2) ? matBad : (st === 1) ? matOK : matUnk;
        for (var i = 0; i < list.length; ++i) list[i].materials = [m];
    }
    function worst(a, b) { return (a === 2 || b === 2) ? 2 : (a === 0 || b === 0) ? 0 : 1; }
    function applyStatus() {
        paint(sFA, stFA); paint(sFB, stFB);
        paint(sLift, stLift); paint(sShut, stShut);
        paint(sH1, stH1); paint(sH2, stH2);
        paint(sHFrame, worst(stH1, stH2));
    }

    function dM(pos, ctr, scale) { return (pos - ctr) * scale / 1000.0; }

    // 绕竖直(+y)轴过 pivot 旋转一组件
    function rotateGroupY(nodes, pivot, deg) {
        var rad = deg * Math.PI / 180.0;
        var c = Math.cos(rad), s = Math.sin(rad);
        var hw = Math.cos(rad/2), hy = Math.sin(rad/2);
        for (var i = 0; i < nodes.length; ++i) {
            var nd = nodes[i], b = nd.baseP, q = nd.baseQ;
            var dx = b.x - pivot.x, dz = b.z - pivot.z;
            nd.node.position = Qt.vector3d(pivot.x + c*dx + s*dz, b.y, pivot.z - s*dx + c*dz);
            // q' = qy(θ) ⊗ q
            nd.node.rotation = Qt.quaternion(hw*q.scalar - hy*q.y,
                                             hw*q.x + hy*q.z,
                                             hw*q.y + hy*q.scalar,
                                             hw*q.z - hy*q.x);
        }
    }

    function applyOffset() {
        var i, nd, b;
        // 升降台 + 棱栅：+y
        var dLift = dM(posM5, centerM5, liftMm) * liftDir;
        for (i = 0; i < liftNodes.length; ++i) {
            nd = liftNodes[i]; b = nd.baseP;
            nd.node.position = Qt.vector3d(b.x, b.y + dLift, b.z);
        }
        // 快门：+z
        var dShut = dM(posM6, centerM6, shutMm) * shutDir;
        for (i = 0; i < shutNodes.length; ++i) {
            nd = shutNodes[i]; b = nd.baseP;
            nd.node.position = Qt.vector3d(b.x, b.y, b.z + dShut);
        }
        // 调焦 A(蓝, M1 前后+x / M2 左右+z)、B(红, M3/M4)
        var aFb = dM(posM1, centerM1, focMm) * focFb, aLr = dM(posM2, centerM2, focMm) * focLr;
        for (i = 0; i < faNodes.length; ++i) {
            nd = faNodes[i]; b = nd.baseP;
            nd.node.position = Qt.vector3d(b.x + (nd.lrOnly ? 0 : aFb), b.y, b.z + aLr);
        }
        var bFb = dM(posM3, centerM3, focMm) * focFb, bLr = dM(posM4, centerM4, focMm) * focLr;
        for (i = 0; i < fbNodes.length; ++i) {
            nd = fbNodes[i]; b = nd.baseP;
            nd.node.position = Qt.vector3d(b.x + (nd.lrOnly ? 0 : bFb), b.y, b.z + bLr);
        }
        // 哈特曼门：绕竖直轴旋转
        var degH1 = (posM7 - centerM7) * hartDeg * hartL;
        var degH2 = (posM8 - centerM8) * hartDeg * hartR;
        rotateGroupY(h1Nodes, h1Pivot, degH1);
        rotateGroupY(h2Nodes, h2Pivot, degH2);

        // 挡光判定（按上方可调阈值/方向；用「相对中心位移 mm」判，与动画方向无关）
        var mmShut = (posM6 - centerM6) * shutMm;   // 快门相对中心位移 mm
        var mmLift = (posM5 - centerM5) * liftMm;    // 光栅切换(升降) 相对中心位移 mm
        // 快门：0mm=关，位移×方向 ≥ shutOpenMm 才「开」；没开到位 → 主光路挡死
        var shutOpen = (mmShut * shutOpenDir) >= shutOpenMm;
        blkMain = !shutOpen;                                 // 快门 M6 → 主光路（下游全灭）
        // 光栅切换 M5：默认(下)只有红支；升到位(位移×方向≥阈值)蓝支才通
        var blueOpen = (mmLift * gratOpenDir) >= gratOpenMm;
        blkBlue = !blueOpen;
        blkRed = false;
        // 哈特曼门：常开=全亮；转角越大越关，按两门综合开度降低蓝/红支亮度（不改光路，只改亮度）
        var f1 = Math.max(0, Math.min(1, 1 - Math.abs(degH1) / hartCloseDeg));
        var f2 = Math.max(0, Math.min(1, 1 - Math.abs(degH2) / hartCloseDeg));
        beamBright = (f1 + f2) / 2;
        updateGates();
        applyBeamBrightness();

        posHud.text = "快门 " + mmShut.toFixed(1) + "mm " + (blkMain ? "[关·挡主光路]" : "[开·通光]")
                    + " · 光栅 " + mmLift.toFixed(1) + "mm→蓝支" + (blkBlue ? "[挡·只红]" : "[通]")
                    + " · 门 " + degH1.toFixed(0) + "/" + degH2.toFixed(0) + "° 亮度" + (beamBright*100).toFixed(0) + "%";
    }
}
