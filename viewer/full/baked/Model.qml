import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: defaultplastic_material
        objectName: "defaultplastic"
        baseColor: "#33ffffff"
        roughness: 0.17999999225139618
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: polishedaluminum_material
        objectName: "polishedaluminum"
        baseColor: "#ffe5eaed"
        metalness: 1
        roughness: 0.07999999821186066
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material1973
        objectName: "defaultplastic"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: sandblastedbrass_material
        objectName: "sandblastedbrass"
        baseColor: "#ffa68500"
        metalness: 1
        roughness: 0.5
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polishedcarbonsteel_material
        objectName: "polishedcarbonsteel"
        baseColor: "#ff7fffdc"
        metalness: 1
        roughness: 0.14000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polishedcarbonsteel_material1961
        objectName: "polishedcarbonsteel"
        baseColor: "#ffbdc0ff"
        metalness: 1
        roughness: 0.14000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: pink_material
        objectName: "pink"
        baseColor: "#ffffd0f2"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: whitesolid_material
        objectName: "whitesolid"
        baseColor: "#ff000000"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: lightgreyhighglossplastic_material
        objectName: "lightgreyhighglossplastic"
        baseColor: "#ff808080"
        roughness: 0.17000000178813934
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: sandblastedaluminum_material
        objectName: "sandblastedaluminum"
        baseColor: "#ff4b4b4b"
        metalness: 1
        roughness: 0.5
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2946
        objectName: "defaultplastic"
        baseColor: "#92c1c1c1"
        roughness: 1
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: red_material
        objectName: "red"
        baseColor: "#b8ff2626"
        roughness: 1
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: orange_material
        objectName: "orange"
        baseColor: "#ff4d8b00"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polishedcarbonsteel_material3151
        objectName: "polishedcarbonsteel"
        baseColor: "#ff717171"
        metalness: 1
        roughness: 0.14000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2590
        objectName: "defaultplastic"
        baseColor: "#ff2e2e2e"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2583
        objectName: "defaultplastic"
        baseColor: "#fff4f4f4"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2576
        objectName: "defaultplastic"
        baseColor: "#ff3d3d3d"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2559
        objectName: "defaultplastic"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2629
        objectName: "defaultplastic"
        baseColor: "#ffcbd2ee"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2645
        objectName: "defaultplastic"
        baseColor: "#ffff8100"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2642
        objectName: "defaultplastic"
        baseColor: "#ffff0000"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2637
        objectName: "defaultplastic"
        baseColor: "#ffc1c1c1"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2632
        objectName: "defaultplastic"
        baseColor: "#ff4b4b4b"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2556
        objectName: "defaultplastic"
        baseColor: "#ffc0c0c0"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: satinfinishaluminum_material
        objectName: "satinfinishaluminum"
        baseColor: "#ffa6db89"
        metalness: 1
        roughness: 0.4000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2517
        objectName: "defaultplastic"
        baseColor: "#ffccd3ef"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: satinfinishaluminum_material2514
        objectName: "satinfinishaluminum"
        baseColor: "#ffb1e397"
        metalness: 1
        roughness: 0.4000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2511
        objectName: "defaultplastic"
        baseColor: "#ffe5eaed"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: blue_material
        objectName: "blue"
        baseColor: "#ff4b4b4b"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polishedcarbonsteel_material2849
        objectName: "polishedcarbonsteel"
        baseColor: "#ffc7c2bd"
        metalness: 1
        roughness: 0.14000000059604645
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: green_material
        objectName: "green"
        baseColor: "#ff5cf8ff"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2819
        objectName: "defaultplastic"
        baseColor: "#ffc1c1c1"
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material2816
        objectName: "defaultplastic"
        baseColor: "#ffc1c1c1"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: pink_material2708
        objectName: "pink"
        baseColor: "#ffff0081"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material544
        objectName: "defaultplastic"
        baseColor: "#ffe5e9ec"
        roughness: 0.18000000715255737
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material541
        objectName: "defaultplastic"
        baseColor: "#ffe5e9ec"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material534
        objectName: "defaultplastic"
        baseColor: "#ff878c8c"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: blue_material507
        objectName: "blue"
        baseColor: "#ff007eb6"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material597
        objectName: "defaultplastic"
        baseColor: "#ffa1a1a1"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: green_material592
        objectName: "green"
        baseColor: "#ff56d769"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: glossyrubber_material
        objectName: "glossyrubber"
        baseColor: "#ff4b4b4b"
        roughness: 0.19599999487400055
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material457
        objectName: "defaultplastic"
        roughness: 0.17999999225139618
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material502
        objectName: "defaultplastic"
        roughness: 0.17999999225139618
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: principledMaterial
        metalness: 1
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polishedbrass_material
        objectName: "polishedbrass"
        baseColor: "#ffd4ac1c"
        metalness: 1
        roughness: 0.07000000774860382
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: yellow_material
        objectName: "yellow"
        baseColor: "#ffffff00"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material196
        objectName: "defaultplastic"
        baseColor: "#ff0000ba"
        roughness: 0.17999999225139618
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: satinfinishaluminum_material47
        objectName: "satinfinishaluminum"
        baseColor: "#52dee8ff"
        metalness: 1
        roughness: 0.4000000059604645
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: satinfinishaluminum_material12
        objectName: "satinfinishaluminum"
        baseColor: "#ffdee8ff"
        metalness: 1
        roughness: 0.4000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: satinfinishaluminum_material7
        objectName: "satinfinishaluminum"
        baseColor: "#ff353535"
        metalness: 1
        roughness: 0.4000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: whitemediumglossplastic_material
        objectName: "whitemediumglossplastic"
        baseColor: "#ff353535"
        roughness: 0.1899999976158142
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: principledMaterial87
        metalness: 1
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: satinfinishstainlesssteel_material
        objectName: "satinfinishstainlesssteel"
        baseColor: "#fffff2e8"
        metalness: 1
        roughness: 0.4000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material314
        objectName: "defaultplastic"
        baseColor: "#ffcbd2ee"
        roughness: 0.17000000178813934
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material224
        objectName: "defaultplastic"
        baseColor: "#ffc2c5c1"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material215
        objectName: "defaultplastic"
        baseColor: "#ffb1b1b1"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polishedcarbonsteel_material208
        objectName: "polishedcarbonsteel"
        baseColor: "#ffc7c2bd"
        metalness: 1
        roughness: 0.14000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material205
        objectName: "defaultplastic"
        baseColor: "#ff888d8d"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: plasticPolystyrene_material
        objectName: "PlasticPolystyrene"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: red_material1362
        objectName: "red"
        baseColor: "#ffff2626"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: red_material1357
        objectName: "red"
        baseColor: "#ffe1d000"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: pink_material1405
        objectName: "pink"
        baseColor: "#7297e2ff"
        roughness: 1
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: polishedsteel_material
        objectName: "polishedsteel"
        baseColor: "#ffececec"
        metalness: 1
        roughness: 0.14000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material1272
        objectName: "defaultplastic"
        baseColor: "#ffb0b0b0"
        roughness: 0.18000000715255737
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: plasticPolystyrene_material1232
        objectName: "PlasticPolystyrene"
        baseColor: "#ffb4b4b4"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polishedsteel_material1306
        objectName: "polishedsteel"
        baseColor: "#fffff1d9"
        metalness: 1
        roughness: 0.14000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: whitesolid_material1301
        objectName: "whitesolid"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material1280
        objectName: "defaultplastic"
        baseColor: "#ffc1c1c1"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material1277
        objectName: "defaultplastic"
        baseColor: "#ff000000"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: clearglass_material
        objectName: "clearglass"
        metalness: 0.5
        roughness: 0.19599999487400055
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: clearglass_material984
        objectName: "clearglass"
        baseColor: "#33ffffff"
        metalness: 0.5
        roughness: 0.19599999487400055
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: orange_material861
        objectName: "orange"
        baseColor: "#ffff8d00"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: whitesolid_material866
        objectName: "whitesolid"
        baseColor: "#ff717171"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polishedsteel_material1215
        objectName: "polishedsteel"
        baseColor: "#ffc7c2bd"
        metalness: 1
        roughness: 0.14000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: world
        objectName: "world"
        Model {
            id: __________140mm_2
            objectName: "相机镜头遮光波纹管-140mm-2"
            position: Qt.vector3d(0.646108, 0.214, -0.14)
            rotation: Qt.quaternion(0.707054, 0.00864458, 0.707054, 0.00864458)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/__________140mm_2_mesh.mesh"
            materials: [
                whitemediumglossplastic_material
            ]
        }
        Model {
            id: ________1
            objectName: "快门左侧挡光板-1"
            position: Qt.vector3d(-0.599079, 0.1805, 0.206)
            rotation: Qt.quaternion(0.707107, 4.51743e-17, -0.707107, 2.89197e-16)
            source: "meshes/________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material7
            ]
        }
        Model {
            id: _______1
            objectName: "分色镜挡光板-1"
            position: Qt.vector3d(0.0351202, 0.1558, -0.051)
            rotation: Qt.quaternion(0.707107, 0.707107, 1.5049e-17, -3.971e-16)
            source: "meshes/_______1_mesh.mesh"
            materials: [
                satinfinishaluminum_material7
            ]
        }
        Model {
            id: ______1
            objectName: "场镜前挡板-1"
            position: Qt.vector3d(-0.785, 0.181, -0.27)
            source: "meshes/______1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____31_1
            objectName: "罩壳蒙皮31-1"
            position: Qt.vector3d(-0.722, 0.215, -0.481)
            rotation: Qt.quaternion(8.087e-32, 1, -2.79545e-16, 2.01611e-17)
            source: "meshes/____31_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____26_1
            objectName: "罩壳蒙皮26-1"
            position: Qt.vector3d(-1.765, 0.1625, -0.3745)
            rotation: Qt.quaternion(0.707107, 2.45327e-16, 0.707107, -8.83177e-17)
            source: "meshes/____26_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____28_1
            objectName: "罩壳蒙皮28-1"
            position: Qt.vector3d(-0.053, 0.1625, -0.338)
            source: "meshes/____28_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____30_1
            objectName: "罩壳蒙皮30-1"
            position: Qt.vector3d(-0.717, 0.25, -0.481)
            source: "meshes/____30_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____25_1
            objectName: "罩壳蒙皮25-1"
            position: Qt.vector3d(-1.386, 0.1625, -0.471)
            rotation: Qt.quaternion(1.249e-16, 1.36982e-16, 1.65309e-32, 1)
            source: "meshes/____25_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____29_1
            objectName: "罩壳蒙皮29-1"
            position: Qt.vector3d(-1.009, 0.1625, -0.3745)
            rotation: Qt.quaternion(0.707107, 2.45327e-16, 0.707107, -8.83177e-17)
            source: "meshes/____29_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____27_1
            objectName: "罩壳蒙皮27-1"
            position: Qt.vector3d(-0.425, 0.1625, -0.4055)
            rotation: Qt.quaternion(0.707107, 6.86915e-17, -0.707107, -8.83177e-17)
            source: "meshes/____27_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____25_2
            objectName: "罩壳蒙皮25-2"
            position: Qt.vector3d(-1.386, 0.1625, -0.278)
            rotation: Qt.quaternion(1.41115e-32, 1, -9.71445e-17, -1.29645e-16)
            source: "meshes/____25_2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____23_1
            objectName: "罩壳蒙皮23-1"
            position: Qt.vector3d(0.321, 0.1625, -0.4055)
            rotation: Qt.quaternion(0.707107, 6.86915e-17, -0.707107, -8.83177e-17)
            source: "meshes/____23_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____21_1
            objectName: "罩壳蒙皮21-1"
            position: Qt.vector3d(-0.053, 0.327, -0.4055)
            rotation: Qt.quaternion(1.22767e-16, -5.03356e-17, -0.707107, 0.707107)
            source: "meshes/____21_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____20_1
            objectName: "罩壳蒙皮20-1"
            position: Qt.vector3d(-0.016, 0.4025, -0.334)
            rotation: Qt.quaternion(-1.79651e-16, 1.52656e-16, 1, -1.49341e-32)
            source: "meshes/____20_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____18_1
            objectName: "罩壳蒙皮18-1"
            position: Qt.vector3d(-1.005, 0.4025, -0.3665)
            rotation: Qt.quaternion(0.707107, 6.86915e-17, -0.707107, -8.83177e-17)
            source: "meshes/____18_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: _______137
            objectName: "相机突出端盖-1"
            position: Qt.vector3d(0.997, 0.022, -0.1515)
            rotation: Qt.quaternion(0.707107, 2.45327e-16, 0.707107, -8.83177e-17)
            source: "meshes/_______1_mesh38.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____16_1
            objectName: "罩壳蒙皮16-1"
            position: Qt.vector3d(-0.717, 0.5, -0.3665)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/____16_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____12_1
            objectName: "罩壳蒙皮12-1"
            position: Qt.vector3d(-0.597, 0.446, -0.117)
            rotation: Qt.quaternion(0.707107, 2.45327e-16, 0.707107, -8.83177e-17)
            source: "meshes/____12_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____8_1
            objectName: "罩壳蒙皮8-1"
            position: Qt.vector3d(-0.264, 0.39, 0.142)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/____8_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____1_1
            objectName: "罩壳蒙皮1-1"
            position: Qt.vector3d(-0.4775, 0.195, 0.262)
            rotation: Qt.quaternion(4.24857e-32, 1, -2.01273e-16, -5.81102e-17)
            source: "meshes/____1_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material47
            ]
        }
        Model {
            id: ____11_1
            objectName: "罩壳蒙皮11-1"
            position: Qt.vector3d(-0.1, 0.446, 0.02)
            source: "meshes/____11_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____4_1
            objectName: "罩壳蒙皮4-1"
            position: Qt.vector3d(0.925677, 0.1885, 0.344286)
            rotation: Qt.quaternion(0.925315, -4.21468e-08, 0.3792, 0)
            source: "meshes/____4_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____2_1
            objectName: "罩壳蒙皮2-1"
            position: Qt.vector3d(0.325092, 0.195, 0.336083)
            rotation: Qt.quaternion(0.991536, 4.21468e-08, -0.129835, -2.2394e-16)
            source: "meshes/____2_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: node30_x_30_x_2_0x440_88
            objectName: "30 x 30 x 2.0x440-88"
            position: Qt.vector3d(-0.785, 0.47, -0.284)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x440_88_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x225_119
            objectName: "30 x 30 x 2.0x225-119"
            position: Qt.vector3d(-1.005, 0.305, -0.3665)
            rotation: Qt.quaternion(6.19151e-17, 0.707107, 0.707107, -9.50941e-17)
            source: "meshes/node30_x_30_x_2_0x225_119_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: ____6_1
            objectName: "罩壳蒙皮6-1"
            position: Qt.vector3d(0.68, 0.1885, -0.336)
            source: "meshes/____6_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____10_1
            objectName: "罩壳蒙皮10-1"
            position: Qt.vector3d(0.397, 0.446, -0.157)
            rotation: Qt.quaternion(8.83177e-17, -0.707107, 8.83177e-17, 0.707107)
            source: "meshes/____10_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____15_1
            objectName: "罩壳蒙皮15-1"
            position: Qt.vector3d(-0.801, 0.39, -0.1225)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/____15_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____3_1
            objectName: "罩壳蒙皮3-1"
            position: Qt.vector3d(0.7275, 0.1885, 0.409334)
            source: "meshes/____3_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____13_1
            objectName: "罩壳蒙皮13-1"
            position: Qt.vector3d(-0.801, 0.445, -0.252)
            rotation: Qt.quaternion(1.33694e-32, 1, -1.10735e-16, -1.48648e-16)
            source: "meshes/____13_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____9_1
            objectName: "罩壳蒙皮9-1"
            position: Qt.vector3d(-0.7895, 0.39, 0.1345)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/____9_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____7_1
            objectName: "罩壳蒙皮7-1"
            position: Qt.vector3d(0.601686, 0.39, -0.00591263)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/____7_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____24_1
            objectName: "罩壳蒙皮24-1"
            position: Qt.vector3d(-1.386, 0.325, -0.3745)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/____24_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____22_1
            objectName: "罩壳蒙皮22-1"
            position: Qt.vector3d(-0.053, 0.1625, -0.475)
            source: "meshes/____22_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____14_1
            objectName: "罩壳蒙皮14-1"
            position: Qt.vector3d(-0.1, 0.5, -0.157)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/____14_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____19_1
            objectName: "罩壳蒙皮19-1"
            position: Qt.vector3d(-0.427, 0.4025, -0.4065)
            rotation: Qt.quaternion(8.83177e-17, -0.707107, 8.83177e-17, 0.707107)
            source: "meshes/____19_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____17_1
            objectName: "罩壳蒙皮17-1"
            position: Qt.vector3d(-1.007, 0.195, -0.012)
            rotation: Qt.quaternion(2.45327e-16, 0.707107, -8.83177e-17, 0.707107)
            source: "meshes/____17_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material47
            ]
        }
        Model {
            id: ____5_1_1c9f9d
            objectName: "罩壳蒙皮5-1_1c9f9d"
            position: Qt.vector3d(0.995, 0.1885, -0.029)
            rotation: Qt.quaternion(0.707107, 2.45327e-16, 0.707107, -8.83177e-17)
            source: "meshes/____5_1_1c9f9d_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: ____5_1_eedba9
            objectName: "罩壳蒙皮5-1_eedba9"
            position: Qt.vector3d(0.995, 0.1885, -0.029)
            rotation: Qt.quaternion(0.707107, 2.45327e-16, 0.707107, -8.83177e-17)
            source: "meshes/____5_1_eedba9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: node30_x_30_x_2_0x545_89
            objectName: "30 x 30 x 2.0x545-89"
            position: Qt.vector3d(-0.565, 0.36, -0.0125)
            rotation: Qt.quaternion(0.707107, 2.52103e-16, 9.50941e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x545_89_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x140_88
            objectName: "30 x 30 x 2.0x140-88"
            position: Qt.vector3d(-0.975, 0.43, -0.254)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x140_88_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x440_86
            objectName: "30 x 30 x 2.0x440-86"
            position: Qt.vector3d(-0.785, 0.36, -0.285)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x440_86_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x140_84
            objectName: "30 x 30 x 2.0x140-84"
            position: Qt.vector3d(-0.595, 0.43, -0.285)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x140_84_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x140_79
            objectName: "30 x 30 x 2.0x140-79"
            position: Qt.vector3d(-0.595, 0.43, -0.01)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x140_79_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x354_77
            objectName: "30 x 30 x 2.0x354-77"
            position: Qt.vector3d(0.395, 0.36, -0.157)
            rotation: Qt.quaternion(0.707107, 2.52103e-16, 9.50941e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x354_77_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x500_98
            objectName: "30 x 30 x 2.0x500-98"
            position: Qt.vector3d(-0.975, 0.25, -0.449)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x500_98_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x140_77
            objectName: "30 x 30 x 2.0x140-77"
            position: Qt.vector3d(0.365, 0.43, 0.02)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node30_x_30_x_2_0x140_77_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x354_76
            objectName: "30 x 30 x 2.0x354-76"
            position: Qt.vector3d(0.395, 0.47, -0.157)
            rotation: Qt.quaternion(0.707107, 2.52103e-16, 9.50941e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x354_76_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x2000_75
            objectName: "30 x 30 x 2.0x2000-75"
            position: Qt.vector3d(-0.005, 0.39, 0.02)
            rotation: Qt.quaternion(8.83177e-17, -0.707107, 8.83177e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x2000_75_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x354_60
            objectName: "30 x 30 x 2.0x354-60"
            position: Qt.vector3d(-0.565, 0.47, -0.157)
            rotation: Qt.quaternion(0.707107, 2.52103e-16, 9.50941e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x354_60_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x500_97
            objectName: "30 x 30 x 2.0x500-97"
            position: Qt.vector3d(-0.429, 0.25, -0.449)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x500_97_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x145_117
            objectName: "30 x 30 x 2.0x145-117"
            position: Qt.vector3d(-0.459, 0.305, -0.4065)
            rotation: Qt.quaternion(6.19151e-17, 0.707107, 0.707107, -9.50941e-17)
            source: "meshes/node30_x_30_x_2_0x145_117_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x606_68
            objectName: "30 x 30 x 2.0x606-68"
            position: Qt.vector3d(0.692, 0.39, -0.334)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, -0.5)
            source: "meshes/node30_x_30_x_2_0x606_68_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x135_118
            objectName: "20 x 20 x 2.0x135-118"
            position: Qt.vector3d(-0.405, 0.305, -0.4055)
            rotation: Qt.quaternion(7.36834e-17, 1.64035e-16, 1, -4.8106e-32)
            source: "meshes/node20_x_20_x_2_0x135_118_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x744_107
            objectName: "20 x 20 x 2.0x744-107"
            position: Qt.vector3d(-0.053, 0.325, -0.338)
            rotation: Qt.quaternion(8.83177e-17, -0.707107, 8.83177e-17, 0.707107)
            source: "meshes/node20_x_20_x_2_0x744_107_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x854_57
            objectName: "30 x 30 x 2.0x854-57"
            position: Qt.vector3d(-0.032, 0.335, -0.304)
            rotation: Qt.quaternion(-0.5, 0.5, -0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x854_57_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x754_115
            objectName: "20 x 20 x 2.0x754-115"
            position: Qt.vector3d(-1.386, 0.325, -0.3)
            rotation: Qt.quaternion(2.45327e-16, 0.707107, -8.83177e-17, 0.707107)
            source: "meshes/node20_x_20_x_2_0x754_115_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x325_120
            objectName: "20 x 20 x 2.0x325-120"
            position: Qt.vector3d(-1.029, 0.1625, -0.449)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node20_x_20_x_2_0x325_120_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x325_108
            objectName: "20 x 20 x 2.0x325-108"
            position: Qt.vector3d(0.299, 0.1625, -0.453)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node20_x_20_x_2_0x325_108_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x1055_24
            objectName: "30 x 30 x 2.0x1055-24"
            position: Qt.vector3d(-0.4775, 0.39, 0.26)
            rotation: Qt.quaternion(8.83177e-17, -0.707107, 8.83177e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x1055_24_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x190_96
            objectName: "30 x 30 x 2.0x190-96"
            position: Qt.vector3d(0.927321, 0.39, 0.342667)
            rotation: Qt.quaternion(-0.273057, 0.652257, -0.652257, 0.273057)
            source: "meshes/node30_x_30_x_2_0x190_96_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x325_110
            objectName: "20 x 20 x 2.0x325-110"
            position: Qt.vector3d(-0.425, 0.1625, -0.453)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node20_x_20_x_2_0x325_110_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x744_106
            objectName: "20 x 20 x 2.0x744-106"
            position: Qt.vector3d(-0.053, 0.325, -0.453)
            rotation: Qt.quaternion(8.83177e-17, -0.707107, 8.83177e-17, 0.707107)
            source: "meshes/node20_x_20_x_2_0x744_106_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x580_94
            objectName: "30 x 30 x 2.0x580-94"
            position: Qt.vector3d(0.319777, 0.39, 0.334667)
            rotation: Qt.quaternion(-4.10995e-17, 0.792929, -9.90369e-17, -0.609314)
            source: "meshes/node30_x_30_x_2_0x580_94_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x135_62
            objectName: "20 x 20 x 2.0x135-62"
            position: Qt.vector3d(0.319, 0.305, -0.4055)
            rotation: Qt.quaternion(7.36834e-17, 1.64035e-16, 1, -4.8106e-32)
            source: "meshes/node20_x_20_x_2_0x135_62_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x175_113
            objectName: "30 x 30 x 2.0x175-113"
            position: Qt.vector3d(-0.459, 0.47, -0.3915)
            rotation: Qt.quaternion(6.19151e-17, 0.707107, 0.707107, -9.50941e-17)
            source: "meshes/node30_x_30_x_2_0x175_113_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x610_120
            objectName: "30 x 30 x 2.0x610-120"
            position: Qt.vector3d(0.995, 0.39, -0.029)
            rotation: Qt.quaternion(-9.50941e-17, -0.707107, 0.707107, 9.50941e-17)
            source: "meshes/node30_x_30_x_2_0x610_120_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x544_116
            objectName: "30 x 30 x 2.0x544-116"
            position: Qt.vector3d(-1.005, 0.39, -0.012)
            rotation: Qt.quaternion(2.90376e-32, 1, -4.16334e-17, -2.39011e-17)
            source: "meshes/node30_x_30_x_2_0x544_116_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x325_124
            objectName: "20 x 20 x 2.0x325-124"
            position: Qt.vector3d(0.299, 0.1625, -0.338)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node20_x_20_x_2_0x325_124_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x195_101
            objectName: "30 x 30 x 2.0x195-101"
            position: Qt.vector3d(-0.429, 0.4025, -0.304)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x195_101_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x189_51
            objectName: "20 x 20 x 2.0x189-51"
            position: Qt.vector3d(-1.743, 0.325, -0.3745)
            rotation: Qt.quaternion(1.02756e-16, 7.89722e-17, 2.07983e-32, 1)
            source: "meshes/node20_x_20_x_2_0x189_51_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x253_95
            objectName: "30 x 30 x 2.0x253-95"
            position: Qt.vector3d(0.7265, 0.39, 0.409334)
            rotation: Qt.quaternion(8.83177e-17, -0.707107, 8.83177e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x253_95_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x576_119
            objectName: "30 x 30 x 2.0x576-119"
            position: Qt.vector3d(-0.717, 0.47, -0.479)
            rotation: Qt.quaternion(0.707107, 6.86915e-17, -0.707107, -8.83177e-17)
            source: "meshes/node30_x_30_x_2_0x576_119_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x189_53
            objectName: "20 x 20 x 2.0x189-53"
            position: Qt.vector3d(-1.009, 0.325, -0.3745)
            rotation: Qt.quaternion(1.02756e-16, 7.89722e-17, 2.07983e-32, 1)
            source: "meshes/node20_x_20_x_2_0x189_53_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x325_121
            objectName: "20 x 20 x 2.0x325-121"
            position: Qt.vector3d(-1.763, 0.1625, -0.449)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node20_x_20_x_2_0x325_121_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x325_122
            objectName: "20 x 20 x 2.0x325-122"
            position: Qt.vector3d(-1.763, 0.1625, -0.28)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node20_x_20_x_2_0x325_122_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x270_60
            objectName: "30 x 30 x 2.0x270-60"
            position: Qt.vector3d(0.05, 0.36, 0.125)
            rotation: Qt.quaternion(0.707107, 2.52103e-16, 9.50941e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x270_60_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x754_116
            objectName: "20 x 20 x 2.0x754-116"
            position: Qt.vector3d(-1.386, 0.325, -0.469)
            rotation: Qt.quaternion(2.45327e-16, 0.707107, -8.83177e-17, 0.707107)
            source: "meshes/node20_x_20_x_2_0x754_116_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node20_x_20_x_2_0x325_123
            objectName: "20 x 20 x 2.0x325-123"
            position: Qt.vector3d(-1.029, 0.1625, -0.28)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node20_x_20_x_2_0x325_123_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x500_16
            objectName: "30 x 30 x 2.0x500-16"
            position: Qt.vector3d(0.365, 0.25, -0.304)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node30_x_30_x_2_0x500_16_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x403_66
            objectName: "30 x 30 x 2.0x403-66"
            position: Qt.vector3d(0.965, 0.1885, 0.02)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node30_x_30_x_2_0x403_66_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x390_62
            objectName: "30 x 30 x 2.0x390-62"
            position: Qt.vector3d(0.02, 0.195, 0.23)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x390_62_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x990_91
            objectName: "30 x 30 x 2.0x990-91"
            position: Qt.vector3d(-0.1, 0.5, -0.304)
            rotation: Qt.quaternion(8.83177e-17, -0.707107, 8.83177e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x990_91_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x990_78
            objectName: "30 x 30 x 2.0x990-78"
            position: Qt.vector3d(-0.1, 0.5, 0.02)
            rotation: Qt.quaternion(8.83177e-17, -0.707107, 8.83177e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x990_78_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x390_83
            objectName: "30 x 30 x 2.0x390-83"
            position: Qt.vector3d(-1.005, 0.195, -0.01)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x390_83_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x403_64
            objectName: "30 x 30 x 2.0x403-64"
            position: Qt.vector3d(0.823, 0.1885, 0.379334)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x403_64_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x403_63
            objectName: "30 x 30 x 2.0x403-63"
            position: Qt.vector3d(0.6, 0.1885, 0.379334)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x403_63_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x390_61
            objectName: "30 x 30 x 2.0x390-61"
            position: Qt.vector3d(-1.005, 0.195, 0.23)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x390_61_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x390_84
            objectName: "30 x 30 x 2.0x390-84"
            position: Qt.vector3d(-1.005, 0.195, -0.284)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/node30_x_30_x_2_0x390_84_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x403_65
            objectName: "30 x 30 x 2.0x403-65"
            position: Qt.vector3d(0.965, 0.1885, 0.276)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node30_x_30_x_2_0x403_65_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x225_112
            objectName: "30 x 30 x 2.0x225-112"
            position: Qt.vector3d(-0.975, 0.47, -0.3665)
            rotation: Qt.quaternion(0.707107, 2.52103e-16, 9.50941e-17, 0.707107)
            source: "meshes/node30_x_30_x_2_0x225_112_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: node30_x_30_x_2_0x403_67
            objectName: "30 x 30 x 2.0x403-67"
            position: Qt.vector3d(0.965, 0.1885, -0.304)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.83412e-16, 6.77641e-18)
            source: "meshes/node30_x_30_x_2_0x403_67_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: ___5
            objectName: "斜铁-5"
            position: Qt.vector3d(-0.6025, -0.686, 0.275)
            rotation: Qt.quaternion(-1.08523e-16, 1.66194e-16, 0.707107, 0.707107)
            source: "meshes/___5_mesh.mesh"
            materials: [
                defaultplastic_material196
            ]
        }
        Model {
            id: ___7
            objectName: "斜铁-7"
            position: Qt.vector3d(0.6575, -0.686, -0.245)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 2.41637e-16)
            source: "meshes/___7_mesh.mesh"
            materials: [
                defaultplastic_material196
            ]
        }
        Model {
            id: ___6
            objectName: "斜铁-6"
            position: Qt.vector3d(-0.6025, -0.686, -0.245)
            rotation: Qt.quaternion(-1.20121e-16, 1.90218e-16, 0.707107, 0.707107)
            source: "meshes/___6_mesh.mesh"
            materials: [
                defaultplastic_material196
            ]
        }
        Model {
            id: ___8
            objectName: "斜铁-8"
            position: Qt.vector3d(0.6575, -0.686, 0.275)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.79682e-16, 6.5002e-17)
            source: "meshes/___8_mesh.mesh"
            materials: [
                defaultplastic_material196
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________1_58f0f2
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-连接板-1_58f0f2"
            position: Qt.vector3d(0.0275, -0.485, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________1_58f0f2_mesh.mesh"
            materials: [
                defaultplastic_material205
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________1_f03973
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-连接板-1_f03973"
            position: Qt.vector3d(0.0275, -0.485, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________1_f03973_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________1_ac0589
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-连接板-1_ac0589"
            position: Qt.vector3d(0.0275, -0.485, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________1_ac0589_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09__________2
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-防脱挡块-2"
            position: Qt.vector3d(-0.507104, -0.515, -0.257394)
            rotation: Qt.quaternion(0.165071, 0.165071, 0.687569, -0.687569)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09__________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR_B_M6F_grease_nipple_joint_2
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-3/HCR-B-M6F_grease_nipple_joint-2"
            position: Qt.vector3d(-0.619801, -0.119065, 0.495)
            rotation: Qt.quaternion(0.555303, 0.555303, -0.437766, -0.437766)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR_B_M6F_grease_nipple_joint_2_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR35A_60_600R_SS_B_M6F_1_Slider_2
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-3/HCR35A+60_600R-SS-B-M6F-1 Slider-2"
            position: Qt.vector3d(-0.607055, -0.170291, 0.5265)
            rotation: Qt.quaternion(0.560986, -0.560986, 0.430459, -0.430459)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR35A_60_600R_SS_B_M6F_1_Slider_2_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR_B_M6F_grease_nipple_joint_1
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-3/HCR-B-M6F_grease_nipple_joint-1"
            position: Qt.vector3d(-0.592481, 0.191027, 0.495)
            rotation: Qt.quaternion(-0.423079, -0.423079, 0.566572, 0.566572)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR_B_M6F_grease_nipple_joint_1_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR35A_60_600R_Track_1_70ad68
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-3/HCR35A+60_600R-Track-1_70ad68"
            position: Qt.vector3d(-0.6275, -0.015, 0.535)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR35A_60_600R_Track_1_70ad68_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR35A_60_600R_Track_1_49c5f0
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-3/HCR35A+60_600R-Track-1_49c5f0"
            position: Qt.vector3d(-0.6275, -0.015, 0.535)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR35A_60_600R_Track_1_49c5f0_mesh.mesh"
            materials: [
                defaultplastic_material224
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR35A_60_600R_SS_B_M6F_1_Slider_1
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-3/HCR35A+60_600R-SS-B-M6F-1 Slider-1"
            position: Qt.vector3d(-0.607055, 0.140291, 0.5265)
            rotation: Qt.quaternion(0.430459, -0.430459, 0.560986, -0.560986)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_3_HCR35A_60_600R_SS_B_M6F_1_Slider_1_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09__________5
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-防脱挡块-5"
            position: Qt.vector3d(0.562104, -0.515, -0.257394)
            rotation: Qt.quaternion(-0.165071, -0.165071, 0.687569, -0.687569)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09__________5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1___5_3_7a6f98
            objectName: "QUEST08-ML-SYS09-旋转层-1/焊板5-3_7a6f98"
            position: Qt.vector3d(0.6025, -0.535, 0.015)
            rotation: Qt.quaternion(3.38561e-16, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09_____1___5_3_7a6f98_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1___5_3_151b9c
            objectName: "QUEST08-ML-SYS09-旋转层-1/焊板5-3_151b9c"
            position: Qt.vector3d(0.6025, -0.535, 0.015)
            rotation: Qt.quaternion(3.38561e-16, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09_____1___5_3_151b9c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_4
            objectName: "QUEST08-ML-SYS09-旋转层-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-4"
            position: Qt.vector3d(-0.4725, -0.568, -0.285)
            rotation: Qt.quaternion(0.707107, -8.7714e-17, -0.707107, -8.7714e-17)
            source: "meshes/quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_4_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1___5_1_a88fd5
            objectName: "QUEST08-ML-SYS09-旋转层-1/焊板5-1_a88fd5"
            position: Qt.vector3d(-0.5475, -0.543, 0.015)
            rotation: Qt.quaternion(0.707107, -0.707107, 3.38561e-16, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09_____1___5_1_a88fd5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1___5_1_b73ac6
            objectName: "QUEST08-ML-SYS09-旋转层-1/焊板5-1_b73ac6"
            position: Qt.vector3d(-0.5475, -0.543, 0.015)
            rotation: Qt.quaternion(0.707107, -0.707107, 3.38561e-16, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09_____1___5_1_b73ac6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09__________6
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-防脱挡块-6"
            position: Qt.vector3d(0.562104, -0.515, 0.287394)
            rotation: Qt.quaternion(0.165071, 0.165071, 0.687569, -0.687569)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09__________6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR_B_M6F_grease_nipple_joint_2
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-1/HCR-B-M6F_grease_nipple_joint-2"
            position: Qt.vector3d(0.564801, 0.0890654, 0.495)
            rotation: Qt.quaternion(0.437766, 0.437766, 0.555303, 0.555303)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR_B_M6F_grease_nipple_joint_2_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR35A_60_600R_SS_B_M6F_1_Slider_2
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-1/HCR35A+60_600R-SS-B-M6F-1 Slider-2"
            position: Qt.vector3d(0.552055, 0.140291, 0.5265)
            rotation: Qt.quaternion(-0.430459, 0.430459, 0.560986, -0.560986)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR35A_60_600R_SS_B_M6F_1_Slider_2_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR_B_M6F_grease_nipple_joint_1
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-1/HCR-B-M6F_grease_nipple_joint-1"
            position: Qt.vector3d(0.53748, -0.221027, 0.495)
            rotation: Qt.quaternion(0.566572, 0.566572, 0.423079, 0.423079)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR_B_M6F_grease_nipple_joint_1_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR35A_60_600R_Track_1_025464
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-1/HCR35A+60_600R-Track-1_025464"
            position: Qt.vector3d(0.5725, -0.015, 0.535)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR35A_60_600R_Track_1_025464_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR35A_60_600R_Track_1_9d7a0c
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-1/HCR35A+60_600R-Track-1_9d7a0c"
            position: Qt.vector3d(0.5725, -0.015, 0.535)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR35A_60_600R_Track_1_9d7a0c_mesh.mesh"
            materials: [
                defaultplastic_material224
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR35A_60_600R_SS_B_M6F_1_Slider_1
            objectName: "QUEST08-ML-SYS09-旋转层-1/HCR35A2SS-60_600R_B-M6F_1-1/HCR35A+60_600R-SS-B-M6F-1 Slider-1"
            position: Qt.vector3d(0.552055, -0.170291, 0.5265)
            rotation: Qt.quaternion(0.560986, -0.560986, -0.430459, 0.430459)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS09_____1_HCR35A2SS_60_600R_B_M6F_1_1_HCR35A_60_600R_SS_B_M6F_1_Slider_1_mesh.mesh"
            materials: [
                defaultplastic_material215
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_3
            objectName: "QUEST08-ML-SYS09-旋转层-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-3"
            position: Qt.vector3d(0.6775, -0.568, 0.315)
            rotation: Qt.quaternion(2.45426e-16, -0.707107, -1.30609e-18, 0.707107)
            source: "meshes/quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_3_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1300_2
            objectName: "QUEST08-ML-SYS09-旋转层-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X1300-2"
            position: Qt.vector3d(0.6775, -0.568, -0.285)
            rotation: Qt.quaternion(-1.26708e-16, 1.88217e-16, 9.50692e-17, 1)
            source: "meshes/quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1300_2_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09__________1
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-防脱挡块-1"
            position: Qt.vector3d(-0.507104, -0.515, 0.287394)
            rotation: Qt.quaternion(-0.165071, -0.165071, 0.687569, -0.687569)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09__________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1300_1
            objectName: "QUEST08-ML-SYS09-旋转层-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X1300-1"
            position: Qt.vector3d(0.6775, -0.568, 0.315)
            rotation: Qt.quaternion(-1.88217e-16, 4.73907e-17, 1, -3.43667e-17)
            source: "meshes/quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1300_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_2
            objectName: "QUEST08-ML-SYS09-旋转层-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-2"
            position: Qt.vector3d(-0.6225, -0.568, 0.315)
            rotation: Qt.quaternion(0.707107, 1.36779e-16, 0.707107, 2.02299e-17)
            source: "meshes/quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_2_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1___10_4
            objectName: "QUEST08-ML-SYS09-旋转层-1/焊板10-4"
            position: Qt.vector3d(0.6275, -0.601, 0.265)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS09_____1___10_4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1___10_3
            objectName: "QUEST08-ML-SYS09-旋转层-1/焊板10-3"
            position: Qt.vector3d(0.6275, -0.601, -0.235)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS09_____1___10_3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1___10_2
            objectName: "QUEST08-ML-SYS09-旋转层-1/焊板10-2"
            position: Qt.vector3d(-0.5725, -0.601, 0.265)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS09_____1___10_2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_6
            objectName: "QUEST08-ML-SYS09-旋转层-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-6"
            position: Qt.vector3d(0.009, -0.568, -0.285)
            rotation: Qt.quaternion(-4.84777e-16, 0.707107, -5.42448e-16, 0.707107)
            source: "meshes/quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_6_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1___9_1
            objectName: "QUEST08-ML-SYS09-旋转层-1/焊板9-1"
            position: Qt.vector3d(0.728, -0.532, 0.015)
            rotation: Qt.quaternion(-5.71038e-16, 1.88217e-16, 5.08021e-18, 1)
            source: "meshes/quest08_ML_SYS09_____1___9_1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1___10_1
            objectName: "QUEST08-ML-SYS09-旋转层-1/焊板10-1"
            position: Qt.vector3d(-0.5725, -0.601, -0.235)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS09_____1___10_1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_5
            objectName: "QUEST08-ML-SYS09-旋转层-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-5"
            position: Qt.vector3d(0.5275, -0.568, 0.315)
            rotation: Qt.quaternion(0.707107, 2.44723e-16, 0.707107, -8.7714e-17)
            source: "meshes/quest08_ML_SYS09_____1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_5_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________2_8b97dc
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-连接板-2_8b97dc"
            position: Qt.vector3d(0.0275, -0.485, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________2_8b97dc_mesh.mesh"
            materials: [
                defaultplastic_material205
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________2_28aca7
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-连接板-2_28aca7"
            position: Qt.vector3d(0.0275, -0.485, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________2_28aca7_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________2_e150f0
            objectName: "QUEST08-ML-SYS09-旋转层-1/QUEST08-ML-SYS09-旋转层-连接板-2_e150f0"
            position: Qt.vector3d(0.0275, -0.485, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS09_____1_QUEST08_ML_SYS09_________2_e150f0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y________1
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-旋钮支架挡板-1"
            position: Qt.vector3d(0.7479, -0.38, 0.015)
            rotation: Qt.quaternion(0.695246, 0.128971, 0.695246, 0.128971)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___6_1_d0b867
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板6-1_d0b867"
            position: Qt.vector3d(0.0275, -0.474, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____y_1___6_1_d0b867_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___6_1_f15362
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板6-1_f15362"
            position: Qt.vector3d(0.0275, -0.474, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____y_1___6_1_f15362_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-衬套-1"
            position: Qt.vector3d(0.7495, -0.38, 0.015)
            rotation: Qt.quaternion(0.681621, -0.188129, 0.681621, -0.188129)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_4
            objectName: "QUEST08-ML-SYS09-平移层y-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X500-4"
            position: Qt.vector3d(0.6275, -0.441, 0.265)
            rotation: Qt.quaternion(-3.58076e-16, -0.707107, 3.17616e-16, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_4_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______2
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-旋钮支架-2"
            position: Qt.vector3d(0.7495, -0.38, 0.015)
            rotation: Qt.quaternion(0.707107, 8.7714e-17, 0.707107, -8.7714e-17)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_6
            objectName: "QUEST08-ML-SYS09-平移层y-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X500-6"
            position: Qt.vector3d(0.009, -0.441, 0.265)
            rotation: Qt.quaternion(0.707107, 8.7714e-17, 0.707107, -8.7714e-17)
            source: "meshes/quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_6_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______3
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-防脱挡块-3"
            position: Qt.vector3d(0.7655, -0.398, 0.2465)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______2300
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-防脱挡块-2"
            position: Qt.vector3d(0.7655, -0.398, -0.2165)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______2_mesh301.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______4
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-防脱挡块-4"
            position: Qt.vector3d(-0.7105, -0.398, 0.2465)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______1
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-防脱挡块-1"
            position: Qt.vector3d(-0.7105, -0.398, -0.2165)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_1_8fe2ae
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-连接板1-1_8fe2ae"
            position: Qt.vector3d(-0.5926, -0.37, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_1_8fe2ae_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_1_c71119
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-连接板1-1_c71119"
            position: Qt.vector3d(-0.5926, -0.37, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_1_c71119_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_1_aab083
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-连接板1-1_aab083"
            position: Qt.vector3d(-0.5926, -0.37, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_1_aab083_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_4_BLOCK______SHRZ30_220_MISUMI_1_45e946
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-4/BLOCK_直线导轨_SHRZ30-220_MISUMI-1_45e946"
            position: Qt.vector3d(0.5926, 0.2165, 0.408)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_4_BLOCK______SHRZ30_220_MISUMI_1_45e946_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_4_BLOCK______SHRZ30_220_MISUMI_1_a0a52b
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-4/BLOCK_直线导轨_SHRZ30-220_MISUMI-1_a0a52b"
            position: Qt.vector3d(0.5926, 0.2165, 0.408)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_4_BLOCK______SHRZ30_220_MISUMI_1_a0a52b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_4_RAIL______SHRZ30_220_MISUMI_1
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-4/RAIL_直线导轨_SHRZ30-220_MISUMI-1"
            position: Qt.vector3d(0.6825, 0.2165, 0.408)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_4_RAIL______SHRZ30_220_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_3_BLOCK______SHRZ30_220_MISUMI_1_ea2a64
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-3/BLOCK_直线导轨_SHRZ30-220_MISUMI-1_ea2a64"
            position: Qt.vector3d(-0.6476, 0.2165, 0.408)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_3_BLOCK______SHRZ30_220_MISUMI_1_ea2a64_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_3_BLOCK______SHRZ30_220_MISUMI_1_e15874
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-3/BLOCK_直线导轨_SHRZ30-220_MISUMI-1_e15874"
            position: Qt.vector3d(-0.6476, 0.2165, 0.408)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_3_BLOCK______SHRZ30_220_MISUMI_1_e15874_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_3_RAIL______SHRZ30_220_MISUMI_1
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-3/RAIL_直线导轨_SHRZ30-220_MISUMI-1"
            position: Qt.vector3d(-0.7375, 0.2165, 0.408)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_3_RAIL______SHRZ30_220_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_2_BLOCK______SHRZ30_220_MISUMI_1_94d6ec
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-2/BLOCK_直线导轨_SHRZ30-220_MISUMI-1_94d6ec"
            position: Qt.vector3d(-0.6476, -0.2465, 0.408)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_2_BLOCK______SHRZ30_220_MISUMI_1_94d6ec_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_2_BLOCK______SHRZ30_220_MISUMI_1_e4a2ce
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-2/BLOCK_直线导轨_SHRZ30-220_MISUMI-1_e4a2ce"
            position: Qt.vector3d(-0.6476, -0.2465, 0.408)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_2_BLOCK______SHRZ30_220_MISUMI_1_e4a2ce_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_2_RAIL______SHRZ30_220_MISUMI_1
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-2/RAIL_直线导轨_SHRZ30-220_MISUMI-1"
            position: Qt.vector3d(-0.7375, -0.2465, 0.408)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_2_RAIL______SHRZ30_220_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___3_1_251c81
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板3-1_251c81"
            position: Qt.vector3d(-0.6025, -0.408, -0.2165)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____y_1___3_1_251c81_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___3_1_f60998
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板3-1_f60998"
            position: Qt.vector3d(-0.6025, -0.408, -0.2165)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____y_1___3_1_f60998_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_1_BLOCK______SHRZ30_220_MISUMI_1_00f5b9
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-1/BLOCK_直线导轨_SHRZ30-220_MISUMI-1_00f5b9"
            position: Qt.vector3d(0.5926, -0.2465, 0.408)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_1_BLOCK______SHRZ30_220_MISUMI_1_00f5b9_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_1_BLOCK______SHRZ30_220_MISUMI_1_4c3ee7
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-1/BLOCK_直线导轨_SHRZ30-220_MISUMI-1_4c3ee7"
            position: Qt.vector3d(0.5926, -0.2465, 0.408)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_1_BLOCK______SHRZ30_220_MISUMI_1_4c3ee7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_1_RAIL______SHRZ30_220_MISUMI_1
            objectName: "QUEST08-ML-SYS09-平移层y-1/直线导轨_SHRZ30-220_MISUMI-1/RAIL_直线导轨_SHRZ30-220_MISUMI-1"
            position: Qt.vector3d(0.6825, -0.2465, 0.408)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1______SHRZ30_220_MISUMI_1_RAIL______SHRZ30_220_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1500_1
            objectName: "QUEST08-ML-SYS09-平移层y-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X1500-1"
            position: Qt.vector3d(0.7775, -0.441, 0.265)
            rotation: Qt.quaternion(-7.71952e-17, 1.02232e-16, 1, 6.93889e-17)
            source: "meshes/quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1500_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___3_2_298702
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板3-2_298702"
            position: Qt.vector3d(-0.6025, -0.416, 0.2465)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____y_1___3_2_298702_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___3_2_416dd1
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板3-2_416dd1"
            position: Qt.vector3d(-0.6025, -0.416, 0.2465)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____y_1___3_2_416dd1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1500_2
            objectName: "QUEST08-ML-SYS09-平移层y-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X1500-2"
            position: Qt.vector3d(-0.7225, -0.441, -0.235)
            rotation: Qt.quaternion(1, 6.97879e-17, 7.71952e-17, 6.9686e-16)
            source: "meshes/quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1500_2_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___3_4_c1c7b8
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板3-4_c1c7b8"
            position: Qt.vector3d(0.6575, -0.416, -0.2165)
            rotation: Qt.quaternion(-6.12359e-18, 1.81552e-16, 0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1___3_4_c1c7b8_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___3_4_3ae707
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板3-4_3ae707"
            position: Qt.vector3d(0.6575, -0.416, -0.2165)
            rotation: Qt.quaternion(-6.12359e-18, 1.81552e-16, 0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1___3_4_3ae707_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_3
            objectName: "QUEST08-ML-SYS09-平移层y-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X500-3"
            position: Qt.vector3d(0.7775, -0.441, -0.235)
            rotation: Qt.quaternion(0.707107, 1.21693e-15, -0.707107, 2.74871e-16)
            source: "meshes/quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_3_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_1
            objectName: "QUEST08-ML-SYS09-平移层y-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X500-1"
            position: Qt.vector3d(-0.7225, -0.441, 0.265)
            rotation: Qt.quaternion(0.707107, 8.7714e-17, 0.707107, -8.7714e-17)
            source: "meshes/quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___3_3_d268f4
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板3-3_d268f4"
            position: Qt.vector3d(0.6575, -0.408, 0.2465)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1___3_3_d268f4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___3_3_810bb7
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板3-3_810bb7"
            position: Qt.vector3d(0.6575, -0.408, 0.2465)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1___3_3_810bb7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___6_2_d42de8
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板6-2_d42de8"
            position: Qt.vector3d(0.0275, -0.474, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS09____y_1___6_2_d42de8_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1___6_2_46142a
            objectName: "QUEST08-ML-SYS09-平移层y-1/焊板6-2_46142a"
            position: Qt.vector3d(0.0275, -0.474, 0.015)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS09____y_1___6_2_46142a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_5
            objectName: "QUEST08-ML-SYS09-平移层y-1/GB_INTERCHANGEABLE_PARTS_TM_SS 5X500-5"
            position: Qt.vector3d(-0.5725, -0.441, -0.235)
            rotation: Qt.quaternion(-4.12254e-16, 0.707107, 1.04029e-15, 0.707107)
            source: "meshes/quest08_ML_SYS09____y_1_GB_INTERCHANGEABLE_PARTS_TM_SS_5X500_5_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_3_503585
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-连接板1-3_503585"
            position: Qt.vector3d(0.6476, -0.37, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_3_503585_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_3_fd1095
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-连接板1-3_fd1095"
            position: Qt.vector3d(0.6476, -0.37, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_3_fd1095_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_3_57f7d5
            objectName: "QUEST08-ML-SYS09-平移层y-1/QUEST08-ML-SYS09-平移层y-连接板1-3_57f7d5"
            position: Qt.vector3d(0.6476, -0.37, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____y_1_QUEST08_ML_SYS09____y____1_3_57f7d5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_BLOCK_MISUMI_SH2RZ30_520_MISUMI_2_e5dbcf
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SH2RZ30-520_MISUMI-1/BLOCK_MISUMI_SH2RZ30-520_MISUMI-2_e5dbcf"
            position: Qt.vector3d(0.595, -0.1341, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_BLOCK_MISUMI_SH2RZ30_520_MISUMI_2_e5dbcf_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_BLOCK_MISUMI_SH2RZ30_520_MISUMI_2_1174c5
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SH2RZ30-520_MISUMI-1/BLOCK_MISUMI_SH2RZ30-520_MISUMI-2_1174c5"
            position: Qt.vector3d(0.595, -0.1341, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_BLOCK_MISUMI_SH2RZ30_520_MISUMI_2_1174c5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_RAIL_MISUMI_SH2RZ30_520_MISUMI_1
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SH2RZ30-520_MISUMI-1/RAIL_MISUMI_SH2RZ30-520_MISUMI-1"
            position: Qt.vector3d(0.595, 0.255, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_RAIL_MISUMI_SH2RZ30_520_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_BLOCK_MISUMI_SH2RZ30_520_MISUMI_3_861ea3
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SH2RZ30-520_MISUMI-1/BLOCK_MISUMI_SH2RZ30-520_MISUMI-3_861ea3"
            position: Qt.vector3d(0.595, 0.1841, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_BLOCK_MISUMI_SH2RZ30_520_MISUMI_3_861ea3_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_BLOCK_MISUMI_SH2RZ30_520_MISUMI_3_c17fb8
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SH2RZ30-520_MISUMI-1/BLOCK_MISUMI_SH2RZ30-520_MISUMI-3_c17fb8"
            position: Qt.vector3d(0.595, 0.1841, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SH2RZ30_520_MISUMI_1_BLOCK_MISUMI_SH2RZ30_520_MISUMI_3_c17fb8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x____1_1_a447a2
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层x-连接板1-1_a447a2"
            position: Qt.vector3d(0.65, -0.265, 0.015)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x____1_1_a447a2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x____1_1_1405e5
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层x-连接板1-1_1405e5"
            position: Qt.vector3d(0.65, -0.265, 0.015)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x____1_1_1405e5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_10
            objectName: "QUEST08-ML-SYS09-平移层x-2/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-10"
            position: Qt.vector3d(0.046, -0.337, 0.315)
            rotation: Qt.quaternion(-2.87028e-16, -0.707107, -4.89413e-16, 0.707107)
            source: "meshes/quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_10_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___2_1_c9ca75
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板2-1_c9ca75"
            position: Qt.vector3d(-0.595, -0.312, 0.015)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____x_2___2_1_c9ca75_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___2_1_4db994
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板2-1_4db994"
            position: Qt.vector3d(-0.595, -0.312, 0.015)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____x_2___2_1_4db994_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___2_1_f7f606
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板2-1_f7f606"
            position: Qt.vector3d(-0.595, -0.312, 0.015)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.45423e-17, 6.12359e-18)
            source: "meshes/quest08_ML_SYS09____x_2___2_1_f7f606_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x____2_1_a6784c
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层x-连接板2-1_a6784c"
            position: Qt.vector3d(-0.595, -0.265, -0.025)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x____2_1_a6784c_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x____2_1_235156
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层x-连接板2-1_235156"
            position: Qt.vector3d(-0.595, -0.265, -0.025)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x____2_1_235156_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___1_1_2031cd
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板1-1_2031cd"
            position: Qt.vector3d(0.65, -0.304, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____x_2___1_1_2031cd_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___1_1_a67fb5
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板1-1_a67fb5"
            position: Qt.vector3d(0.65, -0.304, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____x_2___1_1_a67fb5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___1_1_282ba0
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板1-1_282ba0"
            position: Qt.vector3d(0.65, -0.304, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____x_2___1_1_282ba0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1420_10
            objectName: "QUEST08-ML-SYS09-平移层x-2/GB_INTERCHANGEABLE_PARTS_TM_SS 5X1420-10"
            position: Qt.vector3d(-0.6825, -0.337, 0.315)
            rotation: Qt.quaternion(-8.75965e-17, 1, 4.86576e-16, -7.71952e-17)
            source: "meshes/quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1420_10_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_7
            objectName: "QUEST08-ML-SYS09-平移层x-2/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-7"
            position: Qt.vector3d(0.6685, -0.337, 0.315)
            rotation: Qt.quaternion(-3.58774e-16, -0.707107, -3.68601e-16, 0.707107)
            source: "meshes/quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_7_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_3
            objectName: "QUEST08-ML-SYS09-平移层x-2/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-3"
            position: Qt.vector3d(-0.6825, -0.337, 0.315)
            rotation: Qt.quaternion(0.707107, 8.7714e-17, 0.707107, -8.7714e-17)
            source: "meshes/quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_3_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_2
            objectName: "QUEST08-ML-SYS09-平移层x-2/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-2"
            position: Qt.vector3d(0.7375, -0.337, -0.285)
            rotation: Qt.quaternion(0.707107, 8.40149e-17, -0.707107, -1.02434e-16)
            source: "meshes/quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_2_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_1_BLOCK_MISUMI_SHRZ30_220_MISUMI_1_420c9f
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SHRZ30-220_MISUMI-1/BLOCK_MISUMI_SHRZ30-220_MISUMI-1_420c9f"
            position: Qt.vector3d(-0.65, -0.2141, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_1_BLOCK_MISUMI_SHRZ30_220_MISUMI_1_420c9f_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_1_BLOCK_MISUMI_SHRZ30_220_MISUMI_1_df9c82
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SHRZ30-220_MISUMI-1/BLOCK_MISUMI_SHRZ30-220_MISUMI-1_df9c82"
            position: Qt.vector3d(-0.65, -0.2141, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_1_BLOCK_MISUMI_SHRZ30_220_MISUMI_1_df9c82_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_1_RAIL_MISUMI_SHRZ30_220_MISUMI_1
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SHRZ30-220_MISUMI-1/RAIL_MISUMI_SHRZ30-220_MISUMI-1"
            position: Qt.vector3d(-0.65, -0.285, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_1_RAIL_MISUMI_SHRZ30_220_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1420_9
            objectName: "QUEST08-ML-SYS09-平移层x-2/GB_INTERCHANGEABLE_PARTS_TM_SS 5X1420-9"
            position: Qt.vector3d(-0.6825, -0.337, -0.285)
            rotation: Qt.quaternion(1, -1.59322e-16, 7.71952e-17, 2.29811e-16)
            source: "meshes/quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X1420_9_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___8_1_1f6531
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板8-1_1f6531"
            position: Qt.vector3d(0.0275, -0.312, 0.28)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS09____x_2___8_1_1f6531_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___8_1_f9e17c
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板8-1_f9e17c"
            position: Qt.vector3d(0.0275, -0.312, 0.28)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS09____x_2___8_1_f9e17c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______2
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层x-防脱挡块-2"
            position: Qt.vector3d(0.65, -0.294, -0.2805)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______1
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层x-旋钮支架-1"
            position: Qt.vector3d(0.0275, -0.252, 0.265)
            rotation: Qt.quaternion(1, -1.59322e-16, 7.71952e-17, 2.29811e-16)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___4_1
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板4-1"
            position: Qt.vector3d(0.6476, -0.362, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____x_2___4_1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______3
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层x-防脱挡块-3"
            position: Qt.vector3d(-0.595, -0.304, -0.2805)
            rotation: Qt.quaternion(-6.12359e-18, 1.81552e-16, 0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______1433
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层x-防脱挡块-1"
            position: Qt.vector3d(0.65, -0.294, 0.3105)
            rotation: Qt.quaternion(2.45423e-17, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______1_mesh434.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______4
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层x-防脱挡块-4"
            position: Qt.vector3d(-0.595, -0.304, 0.2505)
            rotation: Qt.quaternion(-6.12359e-18, 1.81552e-16, 0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____x______4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____y____1
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层y-衬套-1"
            position: Qt.vector3d(0.0275, -0.252, 0.28)
            rotation: Qt.quaternion(-7.71952e-17, 1.00141e-16, 1, 2.39055e-17)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____y____1_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____y________1
            objectName: "QUEST08-ML-SYS09-平移层x-2/QUEST08-ML-SYS09-平移层y-旋钮支架挡板-1"
            position: Qt.vector3d(0.0275, -0.252, 0.2634)
            rotation: Qt.quaternion(0.189287, -4.21468e-08, -4.52265e-16, 0.981922)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS09____x_2_QUEST08_ML_SYS09____y________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2___4_2
            objectName: "QUEST08-ML-SYS09-平移层x-2/焊板4-2"
            position: Qt.vector3d(-0.5926, -0.362, 0.015)
            rotation: Qt.quaternion(0.707107, 0.707107, -1.50886e-16, -2.45423e-17)
            source: "meshes/quest08_ML_SYS09____x_2___4_2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_11
            objectName: "QUEST08-ML-SYS09-平移层x-2/GB_INTERCHANGEABLE_PARTS_TM_SS 5X600-11"
            position: Qt.vector3d(-0.6135, -0.337, -0.285)
            rotation: Qt.quaternion(3.77193e-16, 0.707107, -3.8702e-16, 0.707107)
            source: "meshes/quest08_ML_SYS09____x_2_GB_INTERCHANGEABLE_PARTS_TM_SS_5X600_11_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_3_BLOCK_MISUMI_SHRZ30_220_MISUMI_1_ca270c
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SHRZ30-220_MISUMI-3/BLOCK_MISUMI_SHRZ30-220_MISUMI-1_ca270c"
            position: Qt.vector3d(-0.65, 0.1841, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_3_BLOCK_MISUMI_SHRZ30_220_MISUMI_1_ca270c_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_3_BLOCK_MISUMI_SHRZ30_220_MISUMI_1_b2591a
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SHRZ30-220_MISUMI-3/BLOCK_MISUMI_SHRZ30-220_MISUMI-1_b2591a"
            position: Qt.vector3d(-0.65, 0.1841, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_3_BLOCK_MISUMI_SHRZ30_220_MISUMI_1_b2591a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_3_RAIL_MISUMI_SHRZ30_220_MISUMI_1
            objectName: "QUEST08-ML-SYS09-平移层x-2/MISUMI_SHRZ30-220_MISUMI-3/RAIL_MISUMI_SHRZ30-220_MISUMI-1"
            position: Qt.vector3d(-0.65, 0.255, 0.304)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS09____x_2_MISUMI_SHRZ30_220_MISUMI_3_RAIL_MISUMI_SHRZ30_220_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS09______1
            objectName: "QUEST08-ML-SYS09-光学平台-1"
            rotation: Qt.quaternion(1.81552e-16, 6.12359e-18, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS09______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: __________165mm_1
            objectName: "相机镜头遮光波纹管-165mm-1"
            position: Qt.vector3d(0.584886, 0.214, 0.200565)
            rotation: Qt.quaternion(0.778791, -1.04349e-17, 0.627284, -1.24709e-18)
            source: "meshes/__________165mm_1_mesh.mesh"
            materials: [
                whitemediumglossplastic_material
            ]
        }
        Model {
            id: node01_00_________Lamost_1_1
            objectName: "01-00________-Lamost-1_1"
            position: Qt.vector3d(-1.54052, 0.214, -0.38019)
            rotation: Qt.quaternion(0.503045, 0.503045, 0.496936, -0.496936)
            source: "meshes/node01_00_________Lamost_1_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__20_3_1
            objectName: "GBT70.1____M3__20-3_1"
            position: Qt.vector3d(-1.5339, 0.266611, -0.349731)
            rotation: Qt.quaternion(-0.178837, 0.681882, 0.684118, 0.187182)
            source: "meshes/gbt70_1____M3__20_3_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_4_1
            objectName: "GBT70.1____M3__25-4_1"
            position: Qt.vector3d(-1.54081, 0.269921, -0.356454)
            rotation: Qt.quaternion(-0.178837, 0.681882, 0.684118, 0.187182)
            source: "meshes/gbt70_1____M3__25_4_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_3_1
            objectName: "GBT70.1____M3__25-3_1"
            position: Qt.vector3d(-1.54097, 0.165483, -0.343632)
            rotation: Qt.quaternion(0.681882, -0.178837, -0.187182, -0.684118)
            source: "meshes/gbt70_1____M3__25_3_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_6_1
            objectName: "GBT70.1____M3__25-6_1"
            position: Qt.vector3d(-1.54097, 0.262517, -0.343632)
            rotation: Qt.quaternion(-0.178837, 0.681882, 0.684118, 0.187182)
            source: "meshes/gbt70_1____M3__25_6_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_5_1
            objectName: "GBT70.1____M3__25-5_1"
            position: Qt.vector3d(-1.54081, 0.158079, -0.356454)
            rotation: Qt.quaternion(0.681882, -0.178837, -0.187182, -0.684118)
            source: "meshes/gbt70_1____M3__25_5_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__20_1_1
            objectName: "GBT70.1____M3__20-1_1"
            position: Qt.vector3d(-1.53278, 0.214, -0.440849)
            rotation: Qt.quaternion(0.503045, 0.503045, 0.496936, -0.496936)
            source: "meshes/gbt70_1____M3__20_1_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_2_1
            objectName: "GBT70.1____M3__25-2_1"
            position: Qt.vector3d(-1.53979, 0.206596, -0.440482)
            rotation: Qt.quaternion(0.503045, 0.503045, 0.496936, -0.496936)
            source: "meshes/gbt70_1____M3__25_2_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__20_2_1
            objectName: "GBT70.1____M3__20-2_1"
            position: Qt.vector3d(-1.5339, 0.161389, -0.349731)
            rotation: Qt.quaternion(0.681882, -0.178837, -0.187182, -0.684118)
            source: "meshes/gbt70_1____M3__20_2_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_1_1
            objectName: "GBT70.1____M3__25-1_1"
            position: Qt.vector3d(-1.53979, 0.221404, -0.440482)
            rotation: Qt.quaternion(0.503045, 0.503045, 0.496936, -0.496936)
            source: "meshes/gbt70_1____M3__25_1_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_________1
            objectName: "QUEST07-ML-Model02-Unity3-八通基座支撑架-1"
            position: Qt.vector3d(-0.663215, 0.078, -0.33138)
            source: "meshes/quest07_ML_Model02_Unity3_________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_________2
            objectName: "QUEST07-ML-Model02-Unity3-八通基座支撑架-2"
            position: Qt.vector3d(-0.781215, 0.078, -0.33138)
            rotation: Qt.quaternion(6.73254e-16, -1.41553e-15, 1, 6.87296e-16)
            source: "meshes/quest07_ML_Model02_Unity3_________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3______________1_6856bb
            objectName: "QUEST07-ML-Model02-Unity3-八通基座支撑架-加强横杆-1_6856bb"
            position: Qt.vector3d(-0.722215, 0.112, -0.33138)
            source: "meshes/quest07_ML_Model02_Unity3______________1_6856bb_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3______________1_1d1ac8
            objectName: "QUEST07-ML-Model02-Unity3-八通基座支撑架-加强横杆-1_1d1ac8"
            position: Qt.vector3d(-0.722215, 0.112, -0.33138)
            source: "meshes/quest07_ML_Model02_Unity3______________1_1d1ac8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ____4_fb4a0e
            objectName: "黄铜套-4_fb4a0e"
            position: Qt.vector3d(-0.723215, 0.056, -0.322236)
            rotation: Qt.quaternion(0.596461, -0.596461, 0.379782, -0.379782)
            source: "meshes/____4_fb4a0e_mesh.mesh"
            materials: [
                polishedbrass_material
            ]
        }
        Model {
            id: ____4_bff082
            objectName: "黄铜套-4_bff082"
            position: Qt.vector3d(-0.723215, 0.056, -0.322236)
            rotation: Qt.quaternion(0.596461, -0.596461, 0.379782, -0.379782)
            source: "meshes/____4_bff082_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ____3_fa1e2c
            objectName: "黄铜套-3_fa1e2c"
            position: Qt.vector3d(-0.723215, 0.056, -0.415523)
            rotation: Qt.quaternion(-0.379782, -0.379782, 0.596461, 0.596461)
            source: "meshes/____3_fa1e2c_mesh.mesh"
            materials: [
                polishedbrass_material
            ]
        }
        Model {
            id: ____3_633d95
            objectName: "黄铜套-3_633d95"
            position: Qt.vector3d(-0.723215, 0.056, -0.415523)
            rotation: Qt.quaternion(-0.379782, -0.379782, 0.596461, 0.596461)
            source: "meshes/____3_633d95_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_________________1_f56e10
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-顶部连接板-1_f56e10"
            position: Qt.vector3d(-0.722215, 0.04, -0.36938)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.41179e-15, 5.18812e-16)
            source: "meshes/quest07_ML_Model02_Unity3_________________1_f56e10_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_________________1_ae3b7c
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-顶部连接板-1_ae3b7c"
            position: Qt.vector3d(-0.722215, 0.04, -0.36938)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.41179e-15, 5.18812e-16)
            source: "meshes/quest07_ML_Model02_Unity3_________________1_ae3b7c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____2_763412
            objectName: "弹簧柱塞-2_763412"
            position: Qt.vector3d(-0.771715, 0.054, -0.37638)
            rotation: Qt.quaternion(6.73254e-16, -1.41553e-15, 1, 6.87296e-16)
            source: "meshes/_____2_763412_mesh.mesh"
            materials: [
                principledMaterial
            ]
        }
        Model {
            id: _____2_01b473
            objectName: "弹簧柱塞-2_01b473"
            position: Qt.vector3d(-0.771715, 0.054, -0.37638)
            rotation: Qt.quaternion(6.73254e-16, -1.41553e-15, 1, 6.87296e-16)
            source: "meshes/_____2_01b473_mesh.mesh"
            materials: [
                defaultplastic_material502
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_________________1_9ab1f9
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-导向块-短-1_9ab1f9"
            position: Qt.vector3d(-0.666715, 0.04, -0.37638)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest07_ML_Model02_Unity3_________________1_9ab1f9_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_________________1_370d33
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-导向块-短-1_370d33"
            position: Qt.vector3d(-0.666715, 0.04, -0.37638)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest07_ML_Model02_Unity3_________________1_370d33_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: ____2_a6b90b
            objectName: "黄铜套-2_a6b90b"
            position: Qt.vector3d(-0.807358, 0.046, -0.38138)
            rotation: Qt.quaternion(-9.9289e-18, 0.707107, 0.707107, 1.06731e-15)
            source: "meshes/____2_a6b90b_mesh.mesh"
            materials: [
                polishedbrass_material
            ]
        }
        Model {
            id: ____2_257a0b
            objectName: "黄铜套-2_257a0b"
            position: Qt.vector3d(-0.807358, 0.046, -0.38138)
            rotation: Qt.quaternion(-9.9289e-18, 0.707107, 0.707107, 1.06731e-15)
            source: "meshes/____2_257a0b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________________2_e61a44
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-弹簧压紧块-高-2_e61a44"
            position: Qt.vector3d(-0.779715, 0.04, -0.37638)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest07_ML_Model02_Unity3___________________2_e61a44_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________________2_edd4ea
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-弹簧压紧块-高-2_edd4ea"
            position: Qt.vector3d(-0.779715, 0.04, -0.37638)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest07_ML_Model02_Unity3___________________2_edd4ea_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ____1_e7e2bd
            objectName: "黄铜套-1_e7e2bd"
            position: Qt.vector3d(-0.639071, 0.046, -0.38138)
            rotation: Qt.quaternion(-9.62054e-16, 0.707107, -0.707107, -8.84335e-17)
            source: "meshes/____1_e7e2bd_mesh.mesh"
            materials: [
                polishedbrass_material
            ]
        }
        Model {
            id: ____1_35dbf1
            objectName: "黄铜套-1_35dbf1"
            position: Qt.vector3d(-0.639071, 0.046, -0.38138)
            rotation: Qt.quaternion(-9.62054e-16, 0.707107, -0.707107, -8.84335e-17)
            source: "meshes/____1_35dbf1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____1_33ffd4
            objectName: "弹簧柱塞-1_33ffd4"
            position: Qt.vector3d(-0.728215, 0.0365, -0.43288)
            rotation: Qt.quaternion(0.707107, -5.23034e-16, 0.707107, 1.48693e-15)
            source: "meshes/_____1_33ffd4_mesh.mesh"
            materials: [
                principledMaterial
            ]
        }
        Model {
            id: _____1_3e6b31
            objectName: "弹簧柱塞-1_3e6b31"
            position: Qt.vector3d(-0.728215, 0.0365, -0.43288)
            rotation: Qt.quaternion(0.707107, -5.23034e-16, 0.707107, 1.48693e-15)
            source: "meshes/_____1_3e6b31_mesh.mesh"
            materials: [
                defaultplastic_material502
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_________________1_5ca7ab
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-弹簧压紧块-1_5ca7ab"
            position: Qt.vector3d(-0.728215, 0.03, -0.44138)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.477e-15, 5.59167e-16)
            source: "meshes/quest07_ML_Model02_Unity3_________________1_5ca7ab_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_________________1_db0ed0
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-弹簧压紧块-1_db0ed0"
            position: Qt.vector3d(-0.728215, 0.03, -0.44138)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.477e-15, 5.59167e-16)
            source: "meshes/quest07_ML_Model02_Unity3_________________1_db0ed0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_1_6c1563
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-1-1_6c1563"
            position: Qt.vector3d(-0.723215, 0.03, -0.38138)
            rotation: Qt.quaternion(-4.69938e-16, -1.47113e-15, 0.707107, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_1_6c1563_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_1_80b326
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-1-1_80b326"
            position: Qt.vector3d(-0.723215, 0.03, -0.38138)
            rotation: Qt.quaternion(-4.69938e-16, -1.47113e-15, 0.707107, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_1_80b326_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest________1_02_02___1
            objectName: "QUEST_导星相机底座-1/02-02支架-1"
            position: Qt.vector3d(0.147087, 0.214, -0.380837)
            rotation: Qt.quaternion(0.711413, 9.96882e-16, -0.702774, 1.40857e-15)
            source: "meshes/quest________1_02_02___1_mesh.mesh"
            materials: [
                defaultplastic_material534
            ]
        }
        Model {
            id: quest________1_02_04___1
            objectName: "QUEST_导星相机底座-1/02-04垫块-1"
            position: Qt.vector3d(0.147087, -2.30371e-14, -0.380837)
            rotation: Qt.quaternion(0.999981, -2.681e-16, 0.0061086, 1.64006e-15)
            source: "meshes/quest________1_02_04___1_mesh.mesh"
            materials: [
                defaultplastic_material534
            ]
        }
        Model {
            id: quest________1_02_03___1
            objectName: "QUEST_导星相机底座-1/02-03底座-1"
            position: Qt.vector3d(0.147087, 0.044, -0.380837)
            rotation: Qt.quaternion(0.711413, 9.96882e-16, -0.702774, 1.40857e-15)
            source: "meshes/quest________1_02_03___1_mesh.mesh"
            materials: [
                defaultplastic_material534
            ]
        }
        Model {
            id: quest________1_02_01____1
            objectName: "QUEST_导星相机底座-1/02-01相机筒-1"
            position: Qt.vector3d(0.187084, 0.214, -0.381326)
            rotation: Qt.quaternion(0.711413, 9.96882e-16, -0.702774, 1.40857e-15)
            source: "meshes/quest________1_02_01____1_mesh.mesh"
            materials: [
                defaultplastic_material541
            ]
        }
        Model {
            id: quest________1_xm88h_50_1
            objectName: "QUEST_导星相机底座-1/xm88h-50-1"
            position: Qt.vector3d(0.147066, 0.0194192, -0.38253)
            rotation: Qt.quaternion(0.711413, 9.96882e-16, -0.702774, 1.40857e-15)
            source: "meshes/quest________1_xm88h_50_1_mesh.mesh"
            materials: [
                defaultplastic_material544
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1
            objectName: "QUEST07-ML-Model02-Unity2-波前系统固定架-1"
            position: Qt.vector3d(-0.833225, 0.288, -0.356107)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest07_ML_Model02_Unity2_________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________3_1_bffe3c
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前系统五维调整-3-1_bffe3c"
            position: Qt.vector3d(-0.600062, 0.351633, -0.411146)
            rotation: Qt.quaternion(-0.270757, 0.269259, 0.65708, -0.649951)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________3_1_bffe3c_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________3_1_47367e
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前系统五维调整-3-1_47367e"
            position: Qt.vector3d(-0.600062, 0.351633, -0.411146)
            rotation: Qt.quaternion(-0.270757, 0.269259, 0.65708, -0.649951)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________3_1_47367e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_e9f1d6
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_e9f1d6"
            position: Qt.vector3d(-0.623354, 0.328258, -0.411427)
            rotation: Qt.quaternion(0.267958, 0.650631, -0.27209, 0.656388)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_e9f1d6_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_8924bf
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_8924bf"
            position: Qt.vector3d(-0.623354, 0.328258, -0.411427)
            rotation: Qt.quaternion(0.267958, 0.650631, -0.27209, 0.656388)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_8924bf_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_70420e
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_70420e"
            position: Qt.vector3d(-0.623354, 0.328258, -0.411427)
            rotation: Qt.quaternion(0.267958, 0.650631, -0.27209, 0.656388)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_70420e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_cb873c
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_cb873c"
            position: Qt.vector3d(-0.623354, 0.328258, -0.411427)
            rotation: Qt.quaternion(0.267958, 0.650631, -0.27209, 0.656388)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_cb873c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________2_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前系统五维调整-2-1"
            position: Qt.vector3d(-0.613473, 0.338174, -0.411308)
            rotation: Qt.quaternion(0.685211, -0.350814, 0.610471, 0.186387)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________2_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_7bd8d3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_7bd8d3"
            position: Qt.vector3d(-0.559618, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.0029212, 0.924202, -0.381871, 0.00407101)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_7bd8d3_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_ccdffa
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_ccdffa"
            position: Qt.vector3d(-0.559618, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.0029212, 0.924202, -0.381871, 0.00407101)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_ccdffa_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_7b4e3e
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_7b4e3e"
            position: Qt.vector3d(-0.559618, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.0029212, 0.924202, -0.381871, 0.00407101)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_7b4e3e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_e6a692
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_e6a692"
            position: Qt.vector3d(-0.559618, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.0029212, 0.924202, -0.381871, 0.00407101)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_e6a692_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_f922d4
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_f922d4"
            position: Qt.vector3d(-0.559618, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.0029212, 0.924202, -0.381871, 0.00407101)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_f922d4_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4______1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/波前示意-1"
            position: Qt.vector3d(-0.735037, 0.225781, -1.30616)
            rotation: Qt.quaternion(0.00124074, -0.00175461, 0.999997, -0.00124068)
            source: "meshes/quest07_ML_Model02_Unity2_________4______1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2____________1_aa2155
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前准直胶合透镜镜室-1_aa2155"
            position: Qt.vector3d(-0.617216, 0.334418, -0.411353)
            rotation: Qt.quaternion(0.924202, 0.0029212, -0.00407101, -0.381871)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2____________1_aa2155_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2____________1_ca55e3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前准直胶合透镜镜室-1_ca55e3"
            position: Qt.vector3d(-0.617216, 0.334418, -0.411353)
            rotation: Qt.quaternion(0.924202, 0.0029212, -0.00407101, -0.381871)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2____________1_ca55e3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_13_1_5______3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/13-1.5丁晴橡胶圈-3"
            position: Qt.vector3d(-0.60944, 0.342221, -0.411259)
            rotation: Qt.quaternion(-0.27209, 0.656388, -0.267958, -0.650631)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_13_1_5______3_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_1_5566bb
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_5566bb"
            position: Qt.vector3d(-0.60712, 0.344549, -0.411231)
            rotation: Qt.quaternion(-0.429751, 0.0900199, 0.70438, -0.557727)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_1_5566bb_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_1_0940fa
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_0940fa"
            position: Qt.vector3d(-0.60712, 0.344549, -0.411231)
            rotation: Qt.quaternion(-0.429751, 0.0900199, 0.70438, -0.557727)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_1_0940fa_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_1_ce310b
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_ce310b"
            position: Qt.vector3d(-0.60712, 0.344549, -0.411231)
            rotation: Qt.quaternion(-0.429751, 0.0900199, 0.70438, -0.557727)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_1_ce310b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_48c2c0
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜底座-1_48c2c0"
            position: Qt.vector3d(-0.0295425, 0.471697, 0.102455)
            rotation: Qt.quaternion(-0.144328, -0.352675, 0.853914, 0.35443)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_48c2c0_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_fd1ff9
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜底座-1_fd1ff9"
            position: Qt.vector3d(-0.0295425, 0.471697, 0.102455)
            rotation: Qt.quaternion(-0.144328, -0.352675, 0.853914, 0.35443)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_fd1ff9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1______________1_07523a
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/哈特曼反射镜（图纸自建）-1_07523a"
            position: Qt.vector3d(-0.0303425, 0.472497, 0.103586)
            rotation: Qt.quaternion(-0.144328, -0.352675, 0.853914, 0.35443)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1______________1_07523a_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1______________1_4afdaf
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/哈特曼反射镜（图纸自建）-1_4afdaf"
            position: Qt.vector3d(-0.0303425, 0.472497, 0.103586)
            rotation: Qt.quaternion(-0.144328, -0.352675, 0.853914, 0.35443)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1______________1_4afdaf_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_WFSS_detail_1_eBom_FreeParts_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/WFSS_detail-1/eBom-FreeParts-1"
            position: Qt.vector3d(-0.177428, 0.622341, 0.0899363)
            rotation: Qt.quaternion(-0.381507, -0.0521059, -0.0169327, 0.922741)
            source: "meshes/quest07_ML_Model02_Unity2_________4_WFSS_detail_1_eBom_FreeParts_1_mesh.mesh"
            materials: [
                defaultplastic_material597
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________2_2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前系统五维调整-2-2"
            position: Qt.vector3d(-0.612767, 0.338883, -0.411299)
            rotation: Qt.quaternion(0.350814, 0.685211, 0.186387, -0.610471)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________2_2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_DH_SNA_1_______1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/DH-SNA-1_高精度法兰-1"
            position: Qt.vector3d(-0.637674, 0.313501, -0.46315)
            rotation: Qt.quaternion(-0.0029212, 0.924202, -0.381871, 0.00407101)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_DH_SNA_1_______1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2_______1_b5428b
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-光纤支撑架-1_b5428b"
            position: Qt.vector3d(-0.638177, 0.313383, -0.411606)
            rotation: Qt.quaternion(0.655575, -0.651444, 0.267145, -0.272903)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2_______1_b5428b_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2_______1_66b052
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-光纤支撑架-1_66b052"
            position: Qt.vector3d(-0.638177, 0.313383, -0.411606)
            rotation: Qt.quaternion(0.655575, -0.651444, 0.267145, -0.272903)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2_______1_66b052_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4________1_724f9d
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/插入式反射镜-1_724f9d"
            position: Qt.vector3d(-0.639759, 0.311816, -0.408821)
            rotation: Qt.quaternion(0.149897, 0.351245, 0.852733, 0.356376)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4________1_724f9d_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4________1_a1bb1c
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/插入式反射镜-1_a1bb1c"
            position: Qt.vector3d(-0.639759, 0.311816, -0.408821)
            rotation: Qt.quaternion(0.149897, 0.351245, 0.852733, 0.356376)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4________1_a1bb1c_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_M3x0_25_12_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/M3x0.25-12-1"
            position: Qt.vector3d(-0.590887, 0.330003, -0.405524)
            rotation: Qt.quaternion(0.921957, -0.0220583, -0.0645024, -0.381245)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_M3x0_25_12_1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_M3x0_25_12_3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/M3x0.25-12-3"
            position: Qt.vector3d(-0.614203, 0.353539, -0.43064)
            rotation: Qt.quaternion(0.915712, -0.0471045, -0.125047, -0.378966)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_M3x0_25_12_3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_M3x0_25_12_2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/M3x0.25-12-2"
            position: Qt.vector3d(-0.610437, 0.349292, -0.389455)
            rotation: Qt.quaternion(-0.479856, 0.323962, 0.789876, 0.202196)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_M3x0_25_12_2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-插入式反射镜镜室-1"
            position: Qt.vector3d(-0.637532, 0.314027, -0.411905)
            rotation: Qt.quaternion(0.351245, -0.149897, -0.356376, 0.852733)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_____1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/滤光片-1"
            position: Qt.vector3d(-0.576311, 0.375468, -0.41086)
            rotation: Qt.quaternion(0.337778, 0.681101, 0.200888, -0.61778)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_____1_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前镜筒光阑-1"
            position: Qt.vector3d(-0.668768, 0.282684, -0.411974)
            rotation: Qt.quaternion(-0.267731, 0.272312, 0.65582, -0.651203)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1623
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-4/QUEST07-ML-Model02-Unity2-波前滤光片固定架-1"
            position: Qt.vector3d(-0.576099, 0.375681, -0.410857)
            rotation: Qt.quaternion(0.649541, 0.27059, -0.656533, 0.27174)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________4_QUEST07_ML_Model02_Unity2__________1_mesh624.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________3_1_ab52a6
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前系统五维调整-3-1_ab52a6"
            position: Qt.vector3d(-0.846367, 0.0763674, -0.411146)
            rotation: Qt.quaternion(0.649951, -0.65708, 0.269259, -0.270757)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________3_1_ab52a6_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________3_1_14a105
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前系统五维调整-3-1_14a105"
            position: Qt.vector3d(-0.846367, 0.0763674, -0.411146)
            rotation: Qt.quaternion(0.649951, -0.65708, 0.269259, -0.270757)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________3_1_14a105_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_283f28
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_283f28"
            position: Qt.vector3d(-0.823075, 0.0997423, -0.411427)
            rotation: Qt.quaternion(0.656388, -0.27209, -0.650631, -0.267958)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_283f28_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_a138d8
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_a138d8"
            position: Qt.vector3d(-0.823075, 0.0997423, -0.411427)
            rotation: Qt.quaternion(0.656388, -0.27209, -0.650631, -0.267958)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_a138d8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_44583b
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_44583b"
            position: Qt.vector3d(-0.823075, 0.0997423, -0.411427)
            rotation: Qt.quaternion(0.656388, -0.27209, -0.650631, -0.267958)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_44583b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_e19f88
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_e19f88"
            position: Qt.vector3d(-0.823075, 0.0997423, -0.411427)
            rotation: Qt.quaternion(0.656388, -0.27209, -0.650631, -0.267958)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_e19f88_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________2_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前系统五维调整-2-1"
            position: Qt.vector3d(-0.832956, 0.0898256, -0.411308)
            rotation: Qt.quaternion(-0.186387, -0.610471, -0.350814, 0.685211)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________2_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_dacf28
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_dacf28"
            position: Qt.vector3d(-0.886811, 0.03578, -0.410658)
            rotation: Qt.quaternion(-0.00407101, 0.381871, 0.924202, -0.0029212)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_dacf28_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_c5ea6e
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_c5ea6e"
            position: Qt.vector3d(-0.886811, 0.03578, -0.410658)
            rotation: Qt.quaternion(-0.00407101, 0.381871, 0.924202, -0.0029212)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_c5ea6e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_370bd4
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_370bd4"
            position: Qt.vector3d(-0.886811, 0.03578, -0.410658)
            rotation: Qt.quaternion(-0.00407101, 0.381871, 0.924202, -0.0029212)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_370bd4_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_34d3ad
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_34d3ad"
            position: Qt.vector3d(-0.886811, 0.03578, -0.410658)
            rotation: Qt.quaternion(-0.00407101, 0.381871, 0.924202, -0.0029212)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_34d3ad_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_c29fba
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_c29fba"
            position: Qt.vector3d(-0.886811, 0.03578, -0.410658)
            rotation: Qt.quaternion(-0.00407101, 0.381871, 0.924202, -0.0029212)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_c29fba_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2____________1_5a956d
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前准直胶合透镜镜室-1_5a956d"
            position: Qt.vector3d(-0.829213, 0.0935825, -0.411353)
            rotation: Qt.quaternion(0.381871, 0.00407101, 0.0029212, 0.924202)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2____________1_5a956d_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2____________1_bef13f
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前准直胶合透镜镜室-1_bef13f"
            position: Qt.vector3d(-0.829213, 0.0935825, -0.411353)
            rotation: Qt.quaternion(0.381871, 0.00407101, 0.0029212, 0.924202)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2____________1_bef13f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_13_1_5______3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/13-1.5丁晴橡胶圈-3"
            position: Qt.vector3d(-0.836989, 0.0857785, -0.411259)
            rotation: Qt.quaternion(0.650631, 0.267958, 0.656388, -0.27209)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_13_1_5______3_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_1_bc6806
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_bc6806"
            position: Qt.vector3d(-0.839309, 0.0834507, -0.411231)
            rotation: Qt.quaternion(0.557727, -0.70438, 0.0900199, -0.429751)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_1_bc6806_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_1_e0ebe1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_e0ebe1"
            position: Qt.vector3d(-0.839309, 0.0834507, -0.411231)
            rotation: Qt.quaternion(0.557727, -0.70438, 0.0900199, -0.429751)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_1_e0ebe1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_1_b2af8c
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_b2af8c"
            position: Qt.vector3d(-0.839309, 0.0834507, -0.411231)
            rotation: Qt.quaternion(0.557727, -0.70438, 0.0900199, -0.429751)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_1_b2af8c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_5265e0
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜底座-1_5265e0"
            position: Qt.vector3d(0.0295424, 0.384303, 0.102455)
            rotation: Qt.quaternion(0.35443, 0.853914, 0.352675, 0.144328)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_5265e0_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_d65197
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜底座-1_d65197"
            position: Qt.vector3d(0.0295424, 0.384303, 0.102455)
            rotation: Qt.quaternion(0.35443, 0.853914, 0.352675, 0.144328)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_d65197_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1______________1_1e91f3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/哈特曼反射镜（图纸自建）-1_1e91f3"
            position: Qt.vector3d(0.0303424, 0.383503, 0.103586)
            rotation: Qt.quaternion(0.35443, 0.853914, 0.352675, 0.144328)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1______________1_1e91f3_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1______________1_922111
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/哈特曼反射镜（图纸自建）-1_922111"
            position: Qt.vector3d(0.0303424, 0.383503, 0.103586)
            rotation: Qt.quaternion(0.35443, 0.853914, 0.352675, 0.144328)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1______________1_922111_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_WFSS_detail_1_eBom_FreeParts_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/WFSS_detail-1/eBom-FreeParts-1"
            position: Qt.vector3d(0.177428, 0.233659, 0.0899363)
            rotation: Qt.quaternion(0.922741, -0.0169327, 0.0521059, 0.381507)
            source: "meshes/quest07_ML_Model02_Unity2_________2_WFSS_detail_1_eBom_FreeParts_1_mesh.mesh"
            materials: [
                defaultplastic_material597
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________2_2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前系统五维调整-2-2"
            position: Qt.vector3d(-0.833662, 0.0891173, -0.411299)
            rotation: Qt.quaternion(0.610471, -0.186387, 0.685211, 0.350814)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________2_2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_DH_SNA_1_______1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/DH-SNA-1_高精度法兰-1"
            position: Qt.vector3d(-0.808755, 0.114499, -0.46315)
            rotation: Qt.quaternion(-0.00407101, 0.381871, 0.924202, -0.0029212)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_DH_SNA_1_______1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2_______1_8b1165
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-光纤支撑架-1_8b1165"
            position: Qt.vector3d(-0.808252, 0.114617, -0.411606)
            rotation: Qt.quaternion(0.272903, -0.267145, -0.651444, 0.655575)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2_______1_8b1165_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2_______1_275f56
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-光纤支撑架-1_275f56"
            position: Qt.vector3d(-0.808252, 0.114617, -0.411606)
            rotation: Qt.quaternion(0.272903, -0.267145, -0.651444, 0.655575)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2_______1_275f56_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2________1_ce2e7c
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/插入式反射镜-1_ce2e7c"
            position: Qt.vector3d(-0.806671, 0.116184, -0.408821)
            rotation: Qt.quaternion(0.356376, 0.852733, -0.351245, -0.149897)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2________1_ce2e7c_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2________1_324b11
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/插入式反射镜-1_324b11"
            position: Qt.vector3d(-0.806671, 0.116184, -0.408821)
            rotation: Qt.quaternion(0.356376, 0.852733, -0.351245, -0.149897)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2________1_324b11_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_M3x0_25_12_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/M3x0.25-12-1"
            position: Qt.vector3d(-0.855543, 0.0979967, -0.405524)
            rotation: Qt.quaternion(0.381245, 0.0645024, -0.0220583, 0.921957)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_M3x0_25_12_1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_M3x0_25_12_3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/M3x0.25-12-3"
            position: Qt.vector3d(-0.832226, 0.0744605, -0.43064)
            rotation: Qt.quaternion(0.378966, 0.125047, -0.0471045, 0.915712)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_M3x0_25_12_3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_M3x0_25_12_2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/M3x0.25-12-2"
            position: Qt.vector3d(-0.835992, 0.0787081, -0.389455)
            rotation: Qt.quaternion(0.202196, 0.789876, -0.323962, 0.479856)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_M3x0_25_12_2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-插入式反射镜镜室-1"
            position: Qt.vector3d(-0.808897, 0.113973, -0.411905)
            rotation: Qt.quaternion(0.852733, -0.356376, 0.149897, -0.351245)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_____1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/滤光片-1"
            position: Qt.vector3d(-0.870118, 0.052532, -0.41086)
            rotation: Qt.quaternion(0.61778, -0.200888, 0.681101, 0.337778)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_____1_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前镜筒光阑-1"
            position: Qt.vector3d(-0.777662, 0.145316, -0.411974)
            rotation: Qt.quaternion(0.651203, -0.65582, 0.272312, -0.267731)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1695
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-2/QUEST07-ML-Model02-Unity2-波前滤光片固定架-1"
            position: Qt.vector3d(-0.87033, 0.0523195, -0.410857)
            rotation: Qt.quaternion(-0.27174, 0.656533, 0.27059, 0.649541)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________2_QUEST07_ML_Model02_Unity2__________1_mesh696.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________3_1_aa58e2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前系统五维调整-3-1_aa58e2"
            position: Qt.vector3d(-0.600062, 0.0763674, -0.411146)
            rotation: Qt.quaternion(0.65198, -0.655025, -0.274221, 0.265834)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________3_1_aa58e2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________3_1_5a9b2a
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前系统五维调整-3-1_5a9b2a"
            position: Qt.vector3d(-0.600062, 0.0763674, -0.411146)
            rotation: Qt.quaternion(0.65198, -0.655025, -0.274221, 0.265834)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________3_1_5a9b2a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_cd1ebd
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_cd1ebd"
            position: Qt.vector3d(-0.623354, 0.0997423, -0.411427)
            rotation: Qt.quaternion(0.65295, 0.266994, -0.654081, 0.273036)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_cd1ebd_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_82a954
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_82a954"
            position: Qt.vector3d(-0.623354, 0.0997423, -0.411427)
            rotation: Qt.quaternion(0.65295, 0.266994, -0.654081, 0.273036)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_82a954_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_57e313
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_57e313"
            position: Qt.vector3d(-0.623354, 0.0997423, -0.411427)
            rotation: Qt.quaternion(0.65295, 0.266994, -0.654081, 0.273036)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_57e313_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_64965e
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_64965e"
            position: Qt.vector3d(-0.623354, 0.0997423, -0.411427)
            rotation: Qt.quaternion(0.65295, 0.266994, -0.654081, 0.273036)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_64965e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________2_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前系统五维调整-2-1"
            position: Qt.vector3d(-0.613473, 0.0898256, -0.411308)
            rotation: Qt.quaternion(0.616308, 0.186, 0.67908, -0.352731)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________2_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_5c54c0
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_5c54c0"
            position: Qt.vector3d(-0.559618, 0.03578, -0.410658)
            rotation: Qt.quaternion(0.000799821, -0.381859, 0.92421, -0.00427278)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_5c54c0_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_ff8fe2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_ff8fe2"
            position: Qt.vector3d(-0.559618, 0.03578, -0.410658)
            rotation: Qt.quaternion(0.000799821, -0.381859, 0.92421, -0.00427278)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_ff8fe2_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_ad593b
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_ad593b"
            position: Qt.vector3d(-0.559618, 0.03578, -0.410658)
            rotation: Qt.quaternion(0.000799821, -0.381859, 0.92421, -0.00427278)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_ad593b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_93033f
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_93033f"
            position: Qt.vector3d(-0.559618, 0.03578, -0.410658)
            rotation: Qt.quaternion(0.000799821, -0.381859, 0.92421, -0.00427278)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_93033f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_5be91f
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_5be91f"
            position: Qt.vector3d(-0.559618, 0.03578, -0.410658)
            rotation: Qt.quaternion(0.000799821, -0.381859, 0.92421, -0.00427278)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_5be91f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1______1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/波前示意-1"
            position: Qt.vector3d(-0.723215, 0.214, -1.30613)
            rotation: Qt.quaternion(3.09218e-08, 0.707107, 0.707107, -1.08591e-07)
            source: "meshes/quest07_ML_Model02_Unity2_________1______1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2____________1_fe848a
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前准直胶合透镜镜室-1_fe848a"
            position: Qt.vector3d(-0.617216, 0.0935825, -0.411353)
            rotation: Qt.quaternion(-0.381859, -0.000799821, 0.00427278, 0.92421)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2____________1_fe848a_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2____________1_72b571
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前准直胶合透镜镜室-1_72b571"
            position: Qt.vector3d(-0.617216, 0.0935825, -0.411353)
            rotation: Qt.quaternion(-0.381859, -0.000799821, 0.00427278, 0.92421)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2____________1_72b571_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_13_1_5______3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/13-1.5丁晴橡胶圈-3"
            position: Qt.vector3d(-0.60944, 0.0857785, -0.411259)
            rotation: Qt.quaternion(0.654081, -0.273036, 0.65295, 0.266994)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_13_1_5______3_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_1_d4b7cc
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_d4b7cc"
            position: Qt.vector3d(-0.60712, 0.0834507, -0.411231)
            rotation: Qt.quaternion(0.698567, -0.561732, -0.43441, 0.0880316)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_1_d4b7cc_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_1_f09c9c
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_f09c9c"
            position: Qt.vector3d(-0.60712, 0.0834507, -0.411231)
            rotation: Qt.quaternion(0.698567, -0.561732, -0.43441, 0.0880316)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_1_f09c9c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_1_92070c
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_92070c"
            position: Qt.vector3d(-0.60712, 0.0834507, -0.411231)
            rotation: Qt.quaternion(0.698567, -0.561732, -0.43441, 0.0880316)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_1_92070c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_388b92
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜底座-1_388b92"
            position: Qt.vector3d(-0.02954, 0.3843, 0.102455)
            rotation: Qt.quaternion(0.353553, 0.853553, -0.353553, -0.146447)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_388b92_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_2a3218
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜底座-1_2a3218"
            position: Qt.vector3d(-0.02954, 0.3843, 0.102455)
            rotation: Qt.quaternion(0.353553, 0.853553, -0.353553, -0.146447)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_2a3218_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1______________1_45fef5
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/哈特曼反射镜（图纸自建）-1_45fef5"
            position: Qt.vector3d(-0.03034, 0.3835, 0.103586)
            rotation: Qt.quaternion(0.353553, 0.853553, -0.353553, -0.146447)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1______________1_45fef5_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1______________1_db6a69
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/哈特曼反射镜（图纸自建）-1_db6a69"
            position: Qt.vector3d(-0.03034, 0.3835, 0.103586)
            rotation: Qt.quaternion(0.353553, 0.853553, -0.353553, -0.146447)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1______________1_db6a69_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_WFSS_detail_1_eBom_FreeParts_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/WFSS_detail-1/eBom-FreeParts-1"
            position: Qt.vector3d(-0.179633, 0.235856, 0.0899308)
            rotation: Qt.quaternion(0.923003, 0.0241161, 0.0472421, -0.38112)
            source: "meshes/quest07_ML_Model02_Unity2_________1_WFSS_detail_1_eBom_FreeParts_1_mesh.mesh"
            materials: [
                defaultplastic_material597
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________2_2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前系统五维调整-2-2"
            position: Qt.vector3d(-0.612767, 0.0891173, -0.411299)
            rotation: Qt.quaternion(0.186, -0.616308, 0.352731, 0.67908)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________2_2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_DH_SNA_1_______1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/DH-SNA-1_高精度法兰-1"
            position: Qt.vector3d(-0.637932, 0.114242, -0.46315)
            rotation: Qt.quaternion(0.000799821, -0.381859, 0.92421, -0.00427278)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_DH_SNA_1_______1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2_______1_297892
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-光纤支撑架-1_297892"
            position: Qt.vector3d(-0.638177, 0.114617, -0.411606)
            rotation: Qt.quaternion(-0.27058, 0.269449, -0.650494, 0.656537)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2_______1_297892_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2_______1_ff5bfb
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-光纤支撑架-1_ff5bfb"
            position: Qt.vector3d(-0.638177, 0.114617, -0.411606)
            rotation: Qt.quaternion(-0.27058, 0.269449, -0.650494, 0.656537)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2_______1_ff5bfb_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1________1_b8e587
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/插入式反射镜-1_b8e587"
            position: Qt.vector3d(-0.639745, 0.116198, -0.408821)
            rotation: Qt.quaternion(0.357628, 0.852224, 0.352485, 0.14687)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1________1_b8e587_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1________1_f6cc73
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/插入式反射镜-1_f6cc73"
            position: Qt.vector3d(-0.639745, 0.116198, -0.408821)
            rotation: Qt.quaternion(0.357628, 0.852224, 0.352485, 0.14687)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1________1_f6cc73_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_M3x0_25_12_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/M3x0.25-12-1"
            position: Qt.vector3d(-0.621737, 0.0672539, -0.4056)
            rotation: Qt.quaternion(-0.380762, 0.0596426, 0.0292361, 0.922284)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_M3x0_25_12_1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_M3x0_25_12_3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/M3x0.25-12-3"
            position: Qt.vector3d(-0.598057, 0.0905501, -0.4306)
            rotation: Qt.quaternion(-0.378012, 0.120219, 0.0542349, 0.916359)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_M3x0_25_12_3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_M3x0_25_12_2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/M3x0.25-12-2"
            position: Qt.vector3d(-0.60242, 0.0866969, -0.389435)
            rotation: Qt.quaternion(-0.196057, 0.787336, 0.327713, 0.484012)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_M3x0_25_12_2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-插入式反射镜镜室-1"
            position: Qt.vector3d(-0.637534, 0.113971, -0.411905)
            rotation: Qt.quaternion(0.852224, -0.357628, -0.14687, 0.352485)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_____1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/滤光片-1"
            position: Qt.vector3d(-0.576311, 0.052532, -0.41086)
            rotation: Qt.quaternion(0.200371, -0.623655, 0.339571, 0.674979)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_____1_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前镜筒光阑-1"
            position: Qt.vector3d(-0.668768, 0.145316, -0.411974)
            rotation: Qt.quaternion(0.650736, -0.656293, -0.271171, 0.268864)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1769
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-1/QUEST07-ML-Model02-Unity2-波前滤光片固定架-1"
            position: Qt.vector3d(-0.576099, 0.0523195, -0.410857)
            rotation: Qt.quaternion(0.650498, -0.272912, -0.655571, -0.269439)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________1_QUEST07_ML_Model02_Unity2__________1_mesh770.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest________2_02_02___1
            objectName: "QUEST_导星相机底座-2/02-02支架-1"
            position: Qt.vector3d(-1.59352, 0.214, -0.380837)
            rotation: Qt.quaternion(0.711413, -1.62631e-15, 0.702774, 1.62153e-15)
            source: "meshes/quest________2_02_02___1_mesh.mesh"
            materials: [
                defaultplastic_material534
            ]
        }
        Model {
            id: quest________2_02_04___1
            objectName: "QUEST_导星相机底座-2/02-04垫块-1"
            position: Qt.vector3d(-1.59352, -2.86438e-14, -0.380837)
            rotation: Qt.quaternion(0.0061086, -2.35714e-15, 0.999981, -2.71325e-17)
            source: "meshes/quest________2_02_04___1_mesh.mesh"
            materials: [
                defaultplastic_material534
            ]
        }
        Model {
            id: quest________2_02_03___1
            objectName: "QUEST_导星相机底座-2/02-03底座-1"
            position: Qt.vector3d(-1.59352, 0.044, -0.380837)
            rotation: Qt.quaternion(0.711413, -1.62631e-15, 0.702774, 1.62153e-15)
            source: "meshes/quest________2_02_03___1_mesh.mesh"
            materials: [
                defaultplastic_material534
            ]
        }
        Model {
            id: quest________2_02_01____1
            objectName: "QUEST_导星相机底座-2/02-01相机筒-1"
            position: Qt.vector3d(-1.63351, 0.214, -0.381326)
            rotation: Qt.quaternion(0.711413, -1.62631e-15, 0.702774, 1.62153e-15)
            source: "meshes/quest________2_02_01____1_mesh.mesh"
            materials: [
                defaultplastic_material541
            ]
        }
        Model {
            id: quest________2_xm88h_50_1
            objectName: "QUEST_导星相机底座-2/xm88h-50-1"
            position: Qt.vector3d(-1.59354, 0.0194192, -0.379143)
            rotation: Qt.quaternion(0.711413, -1.62631e-15, 0.702774, 1.62153e-15)
            source: "meshes/quest________2_xm88h_50_1_mesh.mesh"
            materials: [
                defaultplastic_material544
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity4______1
            objectName: "QUEST07-ML-Model02-Unity4-平台底座-1"
            position: Qt.vector3d(-0.723215, -0.01, -0.40688)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.4524e-15, 5.23755e-16)
            source: "meshes/quest07_ML_Model02_Unity4______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________3_1_b6b97e
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前系统五维调整-3-1_b6b97e"
            position: Qt.vector3d(-0.846367, 0.351633, -0.411146)
            rotation: Qt.quaternion(0.265834, -0.274221, 0.655025, -0.65198)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________3_1_b6b97e_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________3_1_f30e35
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前系统五维调整-3-1_f30e35"
            position: Qt.vector3d(-0.846367, 0.351633, -0.411146)
            rotation: Qt.quaternion(0.265834, -0.274221, 0.655025, -0.65198)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________3_1_f30e35_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_085403
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_085403"
            position: Qt.vector3d(-0.823075, 0.328258, -0.411427)
            rotation: Qt.quaternion(-0.273036, 0.654081, 0.266994, 0.65295)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_085403_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_37229a
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_37229a"
            position: Qt.vector3d(-0.823075, 0.328258, -0.411427)
            rotation: Qt.quaternion(-0.273036, 0.654081, 0.266994, 0.65295)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_37229a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_02b575
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_02b575"
            position: Qt.vector3d(-0.823075, 0.328258, -0.411427)
            rotation: Qt.quaternion(-0.273036, 0.654081, 0.266994, 0.65295)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_02b575_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_54d08d
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前相机镜筒前段-1_54d08d"
            position: Qt.vector3d(-0.823075, 0.328258, -0.411427)
            rotation: Qt.quaternion(-0.273036, 0.654081, 0.266994, 0.65295)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_54d08d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________2_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前系统五维调整-2-1"
            position: Qt.vector3d(-0.832956, 0.338174, -0.411308)
            rotation: Qt.quaternion(-0.352731, 0.67908, -0.186, -0.616308)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________2_1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_bb3e48
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_bb3e48"
            position: Qt.vector3d(-0.886811, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.00427278, 0.92421, 0.381859, -0.000799821)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_bb3e48_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_4d0f7a
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_4d0f7a"
            position: Qt.vector3d(-0.886811, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.00427278, 0.92421, 0.381859, -0.000799821)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_4d0f7a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_78a2d7
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_78a2d7"
            position: Qt.vector3d(-0.886811, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.00427278, 0.92421, 0.381859, -0.000799821)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_78a2d7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_74e2d3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_74e2d3"
            position: Qt.vector3d(-0.886811, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.00427278, 0.92421, 0.381859, -0.000799821)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_74e2d3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_88293a
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前相机镜筒-1_88293a"
            position: Qt.vector3d(-0.886811, 0.39222, -0.410658)
            rotation: Qt.quaternion(-0.00427278, 0.92421, 0.381859, -0.000799821)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_88293a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3______1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/波前示意-1"
            position: Qt.vector3d(-0.723215, 0.214, -1.30613)
            rotation: Qt.quaternion(1.08591e-07, -0.707107, 0.707107, 3.09218e-08)
            source: "meshes/quest07_ML_Model02_Unity2_________3______1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2____________1_7bc62d
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前准直胶合透镜镜室-1_7bc62d"
            position: Qt.vector3d(-0.829213, 0.334418, -0.411353)
            rotation: Qt.quaternion(0.92421, 0.00427278, 0.000799821, 0.381859)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2____________1_7bc62d_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2____________1_247451
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前准直胶合透镜镜室-1_247451"
            position: Qt.vector3d(-0.829213, 0.334418, -0.411353)
            rotation: Qt.quaternion(0.92421, 0.00427278, 0.000799821, 0.381859)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2____________1_247451_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_13_1_5______3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/13-1.5丁晴橡胶圈-3"
            position: Qt.vector3d(-0.836989, 0.342221, -0.411259)
            rotation: Qt.quaternion(-0.266994, -0.65295, -0.273036, 0.654081)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_13_1_5______3_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_1_43238b
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_43238b"
            position: Qt.vector3d(-0.839309, 0.344549, -0.411231)
            rotation: Qt.quaternion(-0.0880316, 0.43441, -0.561732, 0.698567)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_1_43238b_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_1_a75746
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_a75746"
            position: Qt.vector3d(-0.839309, 0.344549, -0.411231)
            rotation: Qt.quaternion(-0.0880316, 0.43441, -0.561732, 0.698567)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_1_a75746_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_1_c03d8d
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前系统五维调整-1-1_c03d8d"
            position: Qt.vector3d(-0.839309, 0.344549, -0.411231)
            rotation: Qt.quaternion(-0.0880316, 0.43441, -0.561732, 0.698567)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_1_c03d8d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_078f31
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜底座-1_078f31"
            position: Qt.vector3d(0.0295399, 0.4717, 0.102455)
            rotation: Qt.quaternion(0.146447, 0.353553, 0.853553, 0.353553)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_078f31_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_e390cd
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/QUEST07-ML-Model02-Unity2-哈特曼反射镜底座-1_e390cd"
            position: Qt.vector3d(0.0295399, 0.4717, 0.102455)
            rotation: Qt.quaternion(0.146447, 0.353553, 0.853553, 0.353553)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_QUEST07_ML_Model02_Unity2__________1_e390cd_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1______________1_4a80f9
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/哈特曼反射镜（图纸自建）-1_4a80f9"
            position: Qt.vector3d(0.0303399, 0.4725, 0.103586)
            rotation: Qt.quaternion(0.146447, 0.353553, 0.853553, 0.353553)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1______________1_4a80f9_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1______________1_abf9e9
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-哈特曼反射镜-1/哈特曼反射镜（图纸自建）-1_abf9e9"
            position: Qt.vector3d(0.0303399, 0.4725, 0.103586)
            rotation: Qt.quaternion(0.146447, 0.353553, 0.853553, 0.353553)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1______________1_abf9e9_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_WFSS_detail_1_eBom_FreeParts_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/WFSS_detail-1/eBom-FreeParts-1"
            position: Qt.vector3d(0.179633, 0.620144, 0.0899309)
            rotation: Qt.quaternion(0.38112, -0.0472421, 0.0241161, 0.923003)
            source: "meshes/quest07_ML_Model02_Unity2_________3_WFSS_detail_1_eBom_FreeParts_1_mesh.mesh"
            materials: [
                defaultplastic_material597
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________2_2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前系统五维调整-2-2"
            position: Qt.vector3d(-0.833662, 0.338883, -0.411299)
            rotation: Qt.quaternion(0.67908, 0.352731, 0.616308, -0.186)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________2_2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_DH_SNA_1_______1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/DH-SNA-1_高精度法兰-1"
            position: Qt.vector3d(-0.808497, 0.313758, -0.46315)
            rotation: Qt.quaternion(-0.00427278, 0.92421, 0.381859, -0.000799821)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_DH_SNA_1_______1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2_______1_e9428d
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-光纤支撑架-1_e9428d"
            position: Qt.vector3d(-0.808252, 0.313383, -0.411606)
            rotation: Qt.quaternion(0.656537, -0.650494, -0.269449, 0.27058)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2_______1_e9428d_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2_______1_cfc634
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-光纤支撑架-1_cfc634"
            position: Qt.vector3d(-0.808252, 0.313383, -0.411606)
            rotation: Qt.quaternion(0.656537, -0.650494, -0.269449, 0.27058)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2_______1_cfc634_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3________1_52e611
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/插入式反射镜-1_52e611"
            position: Qt.vector3d(-0.806685, 0.311802, -0.408821)
            rotation: Qt.quaternion(-0.14687, -0.352485, 0.852224, 0.357628)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3________1_52e611_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3________1_3e8d9c
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/插入式反射镜-1_3e8d9c"
            position: Qt.vector3d(-0.806685, 0.311802, -0.408821)
            rotation: Qt.quaternion(-0.14687, -0.352485, 0.852224, 0.357628)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3________1_3e8d9c_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_M3x0_25_12_1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/M3x0.25-12-1"
            position: Qt.vector3d(-0.824692, 0.360746, -0.4056)
            rotation: Qt.quaternion(0.922284, 0.0292361, -0.0596426, 0.380762)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_M3x0_25_12_1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_M3x0_25_12_3
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/M3x0.25-12-3"
            position: Qt.vector3d(-0.848372, 0.33745, -0.4306)
            rotation: Qt.quaternion(0.916359, 0.0542349, -0.120219, 0.378012)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_M3x0_25_12_3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_M3x0_25_12_2
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/M3x0.25-12-2"
            position: Qt.vector3d(-0.844009, 0.341303, -0.389435)
            rotation: Qt.quaternion(-0.484012, -0.327713, 0.787336, -0.196057)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_M3x0_25_12_2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-插入式反射镜镜室-1"
            position: Qt.vector3d(-0.808895, 0.314029, -0.411905)
            rotation: Qt.quaternion(-0.352485, 0.14687, -0.357628, 0.852224)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_____1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/滤光片-1"
            position: Qt.vector3d(-0.870118, 0.375468, -0.41086)
            rotation: Qt.quaternion(0.674979, 0.339571, 0.623655, -0.200371)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_____1_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前镜筒光阑-1"
            position: Qt.vector3d(-0.777662, 0.282684, -0.411974)
            rotation: Qt.quaternion(0.268864, -0.271171, 0.656293, -0.650736)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1855
            objectName: "QUEST07-ML-Model02-Unity2-波前准直镜系统-3/QUEST07-ML-Model02-Unity2-波前滤光片固定架-1"
            position: Qt.vector3d(-0.87033, 0.375681, -0.410857)
            rotation: Qt.quaternion(0.269439, 0.655571, -0.272912, 0.650498)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML_Model02_Unity2_________3_QUEST07_ML_Model02_Unity2__________1_mesh856.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_____1_QUEST07_ML_Model02_Unity1_______1
            objectName: "QUEST07-ML-Model02-Unity1-导星镜-1/QUEST07-ML-Model02-Unity1-导星镜底座-1"
            position: Qt.vector3d(-0.675443, 0.214, -0.371035)
            rotation: Qt.quaternion(0.651616, -0.274584, 0.274584, -0.651616)
            source: "meshes/quest07_ML_Model02_Unity1_____1_QUEST07_ML_Model02_Unity1_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_____1_______________1_ec9694
            objectName: "QUEST07-ML-Model02-Unity1-导星镜-1/导星平面反射镜（图纸自建）-1_ec9694"
            position: Qt.vector3d(-0.669785, 0.214, -0.376832)
            rotation: Qt.quaternion(0.651616, -0.274584, 0.274584, -0.651616)
            source: "meshes/quest07_ML_Model02_Unity1_____1_______________1_ec9694_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_____1_______________1_094d77
            objectName: "QUEST07-ML-Model02-Unity1-导星镜-1/导星平面反射镜（图纸自建）-1_094d77"
            position: Qt.vector3d(-0.669785, 0.214, -0.376832)
            rotation: Qt.quaternion(0.651616, -0.274584, 0.274584, -0.651616)
            source: "meshes/quest07_ML_Model02_Unity1_____1_______________1_094d77_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1____8
            objectName: "QUEST07-ML-Model02-Unity1-狭缝-8"
            position: Qt.vector3d(-0.756177, 0.214, -0.363287)
            rotation: Qt.quaternion(0.501218, 1.6072e-15, -0.865321, 5.77734e-17)
            source: "meshes/quest07_ML_Model02_Unity1____8_mesh.mesh"
            materials: [
                whitesolid_material866
            ]
        }
        Model {
            id: mirrorQUEST07_ML_Model02_Unity2_________2
            objectName: "MirrorQUEST07-ML-Model02-Unity2-波前系统固定架-2"
            position: Qt.vector3d(-0.833225, 0.14, -0.356107)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/mirrorQUEST07_ML_Model02_Unity2_________2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: mirrorQUEST07_ML_Model02_Unity2_________3
            objectName: "MirrorQUEST07-ML-Model02-Unity2-波前系统固定架-3"
            position: Qt.vector3d(-0.613204, 0.288, -0.356107)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/mirrorQUEST07_ML_Model02_Unity2_________3_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: mirrorMirrorQUEST07_ML_Model02_Unity2_________4
            objectName: "MirrorMirrorQUEST07-ML-Model02-Unity2-波前系统固定架-4"
            position: Qt.vector3d(-0.613204, 0.14, -0.356107)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/mirrorMirrorQUEST07_ML_Model02_Unity2_________4_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_____2_QUEST07_ML_Model02_Unity1_______1
            objectName: "QUEST07-ML-Model02-Unity1-导星镜-2/QUEST07-ML-Model02-Unity1-导星镜底座-1"
            position: Qt.vector3d(-0.770986, 0.214, -0.371035)
            rotation: Qt.quaternion(0.651616, -0.274584, -0.274584, 0.651616)
            source: "meshes/quest07_ML_Model02_Unity1_____2_QUEST07_ML_Model02_Unity1_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_____2_______________1_d74baa
            objectName: "QUEST07-ML-Model02-Unity1-导星镜-2/导星平面反射镜（图纸自建）-1_d74baa"
            position: Qt.vector3d(-0.776644, 0.214, -0.376832)
            rotation: Qt.quaternion(0.651616, -0.274584, -0.274584, 0.651616)
            source: "meshes/quest07_ML_Model02_Unity1_____2_______________1_d74baa_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_____2_______________1_e7482e
            objectName: "QUEST07-ML-Model02-Unity1-导星镜-2/导星平面反射镜（图纸自建）-1_e7482e"
            position: Qt.vector3d(-0.776644, 0.214, -0.376832)
            rotation: Qt.quaternion(0.651616, -0.274584, -0.274584, 0.651616)
            source: "meshes/quest07_ML_Model02_Unity1_____2_______________1_e7482e_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_______________1_7c3b3c
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-导向块-1_7c3b3c"
            position: Qt.vector3d(-0.723215, 0.03, -0.32388)
            rotation: Qt.quaternion(-5.61958e-16, -1.51408e-15, 0.707107, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3_______________1_7c3b3c_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3_______________1_3a9cb1
            objectName: "QUEST07-ML-Model02-Unity3-八通基座平移调整架-导向块-1_3a9cb1"
            position: Qt.vector3d(-0.723215, 0.03, -0.32388)
            rotation: Qt.quaternion(-5.61958e-16, -1.51408e-15, 0.707107, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3_______________1_3a9cb1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________3_2_7b05df
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-3-2_7b05df"
            position: Qt.vector3d(-1.45164, 9.09989e-11, -0.379103)
            rotation: Qt.quaternion(0.711413, 2.98023e-08, 0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________3_2_7b05df_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________3_2_f75727
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-3-2_f75727"
            position: Qt.vector3d(-1.45164, 9.09989e-11, -0.379103)
            rotation: Qt.quaternion(0.711413, 2.98023e-08, 0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________3_2_f75727_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1_________1_03b3b3
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-镜筒角度调节圈-1_03b3b3"
            position: Qt.vector3d(-1.45167, 0.214, -0.379104)
            rotation: Qt.quaternion(0.711413, 2.98023e-08, 0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1_________1_03b3b3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1_________1_5f7b2c
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-镜筒角度调节圈-1_5f7b2c"
            position: Qt.vector3d(-1.45167, 0.214, -0.379104)
            rotation: Qt.quaternion(0.711413, 2.98023e-08, 0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1_________1_5f7b2c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1_________1_cde92e
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-镜筒角度调节圈-1_cde92e"
            position: Qt.vector3d(-1.45167, 0.214, -0.379104)
            rotation: Qt.quaternion(0.711413, 2.98023e-08, 0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1_________1_cde92e_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________2_1_b54824
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-2-1_b54824"
            position: Qt.vector3d(-1.45206, 0.0933289, -0.344106)
            rotation: Qt.quaternion(0.00610861, -1.5821e-15, 0.999981, 4.21468e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________2_1_b54824_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________2_1_5a781e
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-2-1_5a781e"
            position: Qt.vector3d(-1.45206, 0.0933289, -0.344106)
            rotation: Qt.quaternion(0.00610861, -1.5821e-15, 0.999981, 4.21468e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________2_1_5a781e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________2_1_6226ad
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-2-1_6226ad"
            position: Qt.vector3d(-1.45206, 0.0933289, -0.344106)
            rotation: Qt.quaternion(0.00610861, -1.5821e-15, 0.999981, 4.21468e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________2_1_6226ad_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1__________1_7f55dd
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-球窝压圈-锁紧端-1_7f55dd"
            position: Qt.vector3d(-1.06487, 0.214, -0.374378)
            rotation: Qt.quaternion(-0.178837, 0.681882, 0.684118, 0.187182)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1__________1_7f55dd_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1__________1_e962ce
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-球窝压圈-锁紧端-1_e962ce"
            position: Qt.vector3d(-1.06487, 0.214, -0.374378)
            rotation: Qt.quaternion(-0.178837, 0.681882, 0.684118, 0.187182)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1__________1_e962ce_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1______1_e9379c
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-球窝压圈-1_e9379c"
            position: Qt.vector3d(-1.06487, 0.214, -0.374378)
            rotation: Qt.quaternion(-0.496936, -0.496936, 0.503045, -0.503045)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1______1_e9379c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1______1_55cbf2
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-球窝压圈-1_55cbf2"
            position: Qt.vector3d(-1.06487, 0.214, -0.374378)
            rotation: Qt.quaternion(-0.496936, -0.496936, 0.503045, -0.503045)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1______1_55cbf2_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________3_1_0b726b
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-3-1_0b726b"
            position: Qt.vector3d(-1.06707, -1.07036e-10, -0.374405)
            rotation: Qt.quaternion(0.702774, 2.98023e-08, -0.711413, -2.98023e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________3_1_0b726b_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________3_1_b5a861
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-3-1_b5a861"
            position: Qt.vector3d(-1.06707, -1.07036e-10, -0.374405)
            rotation: Qt.quaternion(0.702774, 2.98023e-08, -0.711413, -2.98023e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________3_1_b5a861_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________1_1_8bc4be
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-1-1_8bc4be"
            position: Qt.vector3d(-1.06664, 0.060829, -0.409402)
            rotation: Qt.quaternion(0.999981, 4.21468e-08, -0.00610861, 1.45719e-15)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________1_1_8bc4be_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________1_1_f153ad
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-1-1_f153ad"
            position: Qt.vector3d(-1.06664, 0.060829, -0.409402)
            rotation: Qt.quaternion(0.999981, 4.21468e-08, -0.00610861, 1.45719e-15)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________1_1_f153ad_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity2_________1_1_2179c1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity2-导星镜筒调整架-1-1_2179c1"
            position: Qt.vector3d(-1.06664, 0.060829, -0.409402)
            rotation: Qt.quaternion(0.999981, 4.21468e-08, -0.00610861, 1.45719e-15)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity2_________1_1_2179c1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1_________1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-球窝压圈连接架-1"
            position: Qt.vector3d(-1.06707, 0.214, -0.374405)
            rotation: Qt.quaternion(0.711413, 2.98023e-08, 0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1_________1_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5隔圈-1"
            position: Qt.vector3d(-1.4972, 0.214, -0.37966)
            rotation: Qt.quaternion(-0.496936, 0.503045, 0.503045, -0.496936)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_567e3e
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5镜筒-1_567e3e"
            position: Qt.vector3d(-1.37001, 0.214, -0.378106)
            rotation: Qt.quaternion(0.707094, -0.00431941, -0.00431947, 0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_567e3e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_94de75
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5镜筒-1_94de75"
            position: Qt.vector3d(-1.37001, 0.214, -0.378106)
            rotation: Qt.quaternion(0.707094, -0.00431941, -0.00431947, 0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_94de75_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_6028d0
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5镜筒-1_6028d0"
            position: Qt.vector3d(-1.37001, 0.214, -0.378106)
            rotation: Qt.quaternion(0.707094, -0.00431941, -0.00431947, 0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_6028d0_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_bed3bb
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5镜筒-1_bed3bb"
            position: Qt.vector3d(-1.37001, 0.214, -0.378106)
            rotation: Qt.quaternion(0.707094, -0.00431941, -0.00431947, 0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_bed3bb_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4隔圈-1"
            position: Qt.vector3d(-1.34501, 0.214, -0.377801)
            rotation: Qt.quaternion(-0.496936, 0.503045, 0.503045, -0.496936)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1________L5_1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5单元-1/图纸自建-导星L5-1"
            position: Qt.vector3d(0.774669, 0.428, 0.0735406)
            rotation: Qt.quaternion(0.00294351, -0.00535263, 0.48186, 0.876227)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1________L5_1_mesh.mesh"
            materials: [
                clearglass_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_L5______1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5单元-1/L5轴向硅胶圈-1"
            position: Qt.vector3d(0.77467, 0.428, 0.0735406)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_L5______1_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_654147
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_654147"
            position: Qt.vector3d(0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_654147_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_c04618
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_c04618"
            position: Qt.vector3d(0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_c04618_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_34dd03
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_34dd03"
            position: Qt.vector3d(0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_34dd03_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_9a467b
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_9a467b"
            position: Qt.vector3d(0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_9a467b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_f8f990
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_f8f990"
            position: Qt.vector3d(0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_f8f990_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_4d93b3
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_4d93b3"
            position: Qt.vector3d(-1.21103, 0.214, -0.376164)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_4d93b3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_38f276
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_38f276"
            position: Qt.vector3d(-1.21103, 0.214, -0.376164)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_38f276_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_131d8e
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_131d8e"
            position: Qt.vector3d(-1.21103, 0.214, -0.376164)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_131d8e_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_e21cfb
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_e21cfb"
            position: Qt.vector3d(-1.21103, 0.214, -0.376164)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_e21cfb_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_728810
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_728810"
            position: Qt.vector3d(-1.21103, 0.214, -0.376164)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2___1_728810_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2-3隔圈-1"
            position: Qt.vector3d(-1.27187, 0.214, -0.376907)
            rotation: Qt.quaternion(0.503045, -0.496936, 0.496936, -0.503045)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_a8395a
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_a8395a"
            position: Qt.vector3d(-1.30875, 0.214, -0.377358)
            rotation: Qt.quaternion(0.707094, -0.00431941, -0.00431947, 0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_a8395a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_c939d9
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_c939d9"
            position: Qt.vector3d(-1.30875, 0.214, -0.377358)
            rotation: Qt.quaternion(0.707094, -0.00431941, -0.00431947, 0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_c939d9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_fc7bae
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_fc7bae"
            position: Qt.vector3d(-1.30875, 0.214, -0.377358)
            rotation: Qt.quaternion(0.707094, -0.00431941, -0.00431947, 0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_fc7bae_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_0c8cd0
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_0c8cd0"
            position: Qt.vector3d(-1.30875, 0.214, -0.377358)
            rotation: Qt.quaternion(0.707094, -0.00431941, -0.00431947, 0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_0c8cd0_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_f3ea3c
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_f3ea3c"
            position: Qt.vector3d(-1.30875, 0.214, -0.377358)
            rotation: Qt.quaternion(0.707094, -0.00431941, -0.00431947, 0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_f3ea3c_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_218c23
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4单元-1/QUEST07-ML-Model01-Unity1-导星L4镜室-1_218c23"
            position: Qt.vector3d(0.624367, 0.428, 0.0717042)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_218c23_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_590f2b
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4单元-1/QUEST07-ML-Model01-Unity1-导星L4镜室-1_590f2b"
            position: Qt.vector3d(0.624367, 0.428, 0.0717042)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_590f2b_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_e5e30a
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4单元-1/QUEST07-ML-Model01-Unity1-导星L4镜室-1_e5e30a"
            position: Qt.vector3d(0.624367, 0.428, 0.0717042)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_e5e30a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_f9ab46
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4单元-1/QUEST07-ML-Model01-Unity1-导星L4镜室-1_f9ab46"
            position: Qt.vector3d(0.624367, 0.428, 0.0717042)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_f9ab46_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_L4______1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4单元-1/L4轴向硅胶圈-1"
            position: Qt.vector3d(0.632332, 0.428, 0.0718015)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1_L4______1_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1________L4_1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L4单元-1/图纸自建-导星L4-1"
            position: Qt.vector3d(0.638879, 0.428, 0.0718815)
            rotation: Qt.quaternion(5.48944e-05, -0.00610837, 0.00897928, 0.999941)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L4___1________L4_1_mesh.mesh"
            materials: [
                clearglass_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_L2_3______1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/L2-3轴向硅胶圈-1"
            position: Qt.vector3d(0.569456, 0.428, 0.0710333)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_L2_3______1_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_____L2_3___1________L3_1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/图纸自建L2-3胶合-1/图纸自建-导星L3-1"
            position: Qt.vector3d(0.0213746, 0.591174, -0.575122)
            rotation: Qt.quaternion(0.00788592, -0.00352697, 0.934137, -0.35681)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_____L2_3___1________L3_1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_____L2_3___1________L2_1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/图纸自建L2-3胶合-1/图纸自建-导星L2-1"
            position: Qt.vector3d(0.00987628, 0.591034, -0.575263)
            rotation: Qt.quaternion(0.0085672, -0.00110926, 0.792001, -0.610458)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_____L2_3___1________L2_1_mesh.mesh"
            materials: [
                clearglass_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_49f4b6
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_49f4b6"
            position: Qt.vector3d(0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_49f4b6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_128ff1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_128ff1"
            position: Qt.vector3d(0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_128ff1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_ad5563
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_ad5563"
            position: Qt.vector3d(0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_ad5563_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_3f86b4
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_3f86b4"
            position: Qt.vector3d(0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_3f86b4_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_95f2a4
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_95f2a4"
            position: Qt.vector3d(0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.00431941, 0.707094, 0.707094, 0.00431947)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_95f2a4_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1________1_2d1a39
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_2d1a39"
            position: Qt.vector3d(-1.21905, 0.214, -0.376262)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1________1_2d1a39_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1________1_862d54
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_862d54"
            position: Qt.vector3d(-1.21905, 0.214, -0.376262)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1________1_862d54_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1________1_d45c32
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_d45c32"
            position: Qt.vector3d(-1.21905, 0.214, -0.376262)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1________1_d45c32_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1________1_8b1900
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_8b1900"
            position: Qt.vector3d(-1.21905, 0.214, -0.376262)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1________1_8b1900_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1________1_775ed4
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_775ed4"
            position: Qt.vector3d(-1.21905, 0.214, -0.376262)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1________1_775ed4_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1________1_465250
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_465250"
            position: Qt.vector3d(-1.21905, 0.214, -0.376262)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1________1_465250_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1________1_dabc4c
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_dabc4c"
            position: Qt.vector3d(-1.21905, 0.214, -0.376262)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1________1_dabc4c_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1________1_83e790
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_83e790"
            position: Qt.vector3d(-1.21905, 0.214, -0.376262)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1________1_83e790_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1________1_5f8c9b
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_5f8c9b"
            position: Qt.vector3d(-1.21905, 0.214, -0.376262)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1________1_5f8c9b_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______1
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1轴向硅胶圈-1"
            position: Qt.vector3d(0.158514, 0.428, 0.0660124)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______1_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______11017
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-1"
            position: Qt.vector3d(0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(-0.272246, 0.649279, -0.26894, 0.65726)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______1_mesh1018.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1________L1_2
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/图纸自建-导星L1-2"
            position: Qt.vector3d(0.16291, 0.428, 0.0660662)
            rotation: Qt.quaternion(-0.000851622, -0.00604896, -0.139411, 0.990216)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1________L1_2_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_8ff086
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_8ff086"
            position: Qt.vector3d(0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_8ff086_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_159698
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_159698"
            position: Qt.vector3d(0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_159698_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_00df24
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_00df24"
            position: Qt.vector3d(0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_00df24_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_e2c514
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_e2c514"
            position: Qt.vector3d(0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_e2c514_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_33a165
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_33a165"
            position: Qt.vector3d(0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_33a165_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_94238e
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_94238e"
            position: Qt.vector3d(0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.707094, 0.00431947, -0.00431941, -0.707094)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_94238e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______8
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-8"
            position: Qt.vector3d(0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(-2.98023e-08, 0.702774, -2.98023e-08, 0.711413)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______8_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______3
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-3"
            position: Qt.vector3d(0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.65726, -0.26894, 0.649279, -0.272246)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______3_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______6
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-6"
            position: Qt.vector3d(0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.503045, 0.496936, 0.496936, 0.503045)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______6_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______5
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-5"
            position: Qt.vector3d(0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.65726, 0.26894, 0.649279, 0.272246)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______5_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______4
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-4"
            position: Qt.vector3d(0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.711413, 2.98023e-08, 0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______4_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______2
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-2"
            position: Qt.vector3d(0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.503045, -0.496936, 0.496936, -0.503045)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______2_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______7
            objectName: "QUEST07-ML-导星镜筒模块-2/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-7"
            position: Qt.vector3d(0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.272246, 0.649279, 0.26894, 0.65726)
            source: "meshes/quest07_ML________2_QUEST07_ML_Model01_Unity1___L1___1_L1______7_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_________1_055d30
            objectName: "QUEST07-ML-Model02-Unity1-伺服电机支撑座-1_055d30"
            position: Qt.vector3d(-0.723215, 0.287, -0.34438)
            rotation: Qt.quaternion(5.39969e-15, -4.44756e-15, 0.707107, -0.707107)
            source: "meshes/quest07_ML_Model02_Unity1_________1_055d30_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_________1_6680c5
            objectName: "QUEST07-ML-Model02-Unity1-伺服电机支撑座-1_6680c5"
            position: Qt.vector3d(-0.723215, 0.287, -0.34438)
            rotation: Qt.quaternion(5.39969e-15, -4.44756e-15, 0.707107, -0.707107)
            source: "meshes/quest07_ML_Model02_Unity1_________1_6680c5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________3_2_8fa817
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-3-2_8fa817"
            position: Qt.vector3d(0.0052071, -9.10492e-11, -0.379103)
            rotation: Qt.quaternion(0.711413, -2.98023e-08, -0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________3_2_8fa817_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________3_2_64d5b8
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-3-2_64d5b8"
            position: Qt.vector3d(0.0052071, -9.10492e-11, -0.379103)
            rotation: Qt.quaternion(0.711413, -2.98023e-08, -0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________3_2_64d5b8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1_________1_3ed42c
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-镜筒角度调节圈-1_3ed42c"
            position: Qt.vector3d(0.00523979, 0.214, -0.379104)
            rotation: Qt.quaternion(0.711413, -2.98023e-08, -0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1_________1_3ed42c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1_________1_9f69d0
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-镜筒角度调节圈-1_9f69d0"
            position: Qt.vector3d(0.00523979, 0.214, -0.379104)
            rotation: Qt.quaternion(0.711413, -2.98023e-08, -0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1_________1_9f69d0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1_________1_04c753
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-镜筒角度调节圈-1_04c753"
            position: Qt.vector3d(0.00523979, 0.214, -0.379104)
            rotation: Qt.quaternion(0.711413, -2.98023e-08, -0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1_________1_04c753_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________2_1_8e5d38
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-2-1_8e5d38"
            position: Qt.vector3d(0.00477951, 0.0933289, -0.414101)
            rotation: Qt.quaternion(0.999981, -4.21468e-08, 0.00610861, 1.24902e-15)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________2_1_8e5d38_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________2_1_84bd04
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-2-1_84bd04"
            position: Qt.vector3d(0.00477951, 0.0933289, -0.414101)
            rotation: Qt.quaternion(0.999981, -4.21468e-08, 0.00610861, 1.24902e-15)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________2_1_84bd04_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________2_1_fc9593
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-2-1_fc9593"
            position: Qt.vector3d(0.00477951, 0.0933289, -0.414101)
            rotation: Qt.quaternion(0.999981, -4.21468e-08, 0.00610861, 1.24902e-15)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________2_1_fc9593_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1__________1_32d691
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-球窝压圈-锁紧端-1_32d691"
            position: Qt.vector3d(-0.381562, 0.214, -0.374378)
            rotation: Qt.quaternion(0.681882, -0.178837, 0.187182, 0.684118)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1__________1_32d691_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1__________1_d6d35d
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-球窝压圈-锁紧端-1_d6d35d"
            position: Qt.vector3d(-0.381562, 0.214, -0.374378)
            rotation: Qt.quaternion(0.681882, -0.178837, 0.187182, 0.684118)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1__________1_d6d35d_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1______1_fff050
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-球窝压圈-1_fff050"
            position: Qt.vector3d(-0.381562, 0.214, -0.374378)
            rotation: Qt.quaternion(-0.496936, -0.496936, -0.503045, 0.503045)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1______1_fff050_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1______1_91bed6
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-球窝压圈-1_91bed6"
            position: Qt.vector3d(-0.381562, 0.214, -0.374378)
            rotation: Qt.quaternion(-0.496936, -0.496936, -0.503045, 0.503045)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1______1_91bed6_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________3_1_195819
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-3-1_195819"
            position: Qt.vector3d(-0.379362, 1.06986e-10, -0.374405)
            rotation: Qt.quaternion(0.702774, -2.98023e-08, 0.711413, -2.98023e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________3_1_195819_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________3_1_287089
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-3-1_287089"
            position: Qt.vector3d(-0.379362, 1.06986e-10, -0.374405)
            rotation: Qt.quaternion(0.702774, -2.98023e-08, 0.711413, -2.98023e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________3_1_287089_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________1_1_e6ee8a
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-1-1_e6ee8a"
            position: Qt.vector3d(-0.378934, 0.060829, -0.339407)
            rotation: Qt.quaternion(-0.00610861, -1.3878e-15, 0.999981, -4.21468e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________1_1_e6ee8a_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________1_1_d4cd91
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-1-1_d4cd91"
            position: Qt.vector3d(-0.378934, 0.060829, -0.339407)
            rotation: Qt.quaternion(-0.00610861, -1.3878e-15, 0.999981, -4.21468e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________1_1_d4cd91_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity2_________1_1_2fea9e
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity2-导星镜筒调整架-1-1_2fea9e"
            position: Qt.vector3d(-0.378934, 0.060829, -0.339407)
            rotation: Qt.quaternion(-0.00610861, -1.3878e-15, 0.999981, -4.21468e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity2_________1_1_2fea9e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1_________1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-球窝压圈连接架-1"
            position: Qt.vector3d(-0.379362, 0.214, -0.374405)
            rotation: Qt.quaternion(0.711413, -2.98023e-08, -0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1_________1_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5隔圈-1"
            position: Qt.vector3d(0.0507711, 0.214, -0.37966)
            rotation: Qt.quaternion(0.496936, 0.503045, 0.503045, 0.496936)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_37c098
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5镜筒-1_37c098"
            position: Qt.vector3d(-0.0764194, 0.214, -0.378106)
            rotation: Qt.quaternion(-0.00431941, 0.707094, 0.707094, -0.00431947)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_37c098_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_2cd785
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5镜筒-1_2cd785"
            position: Qt.vector3d(-0.0764194, 0.214, -0.378106)
            rotation: Qt.quaternion(-0.00431941, 0.707094, 0.707094, -0.00431947)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_2cd785_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_38a42f
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5镜筒-1_38a42f"
            position: Qt.vector3d(-0.0764194, 0.214, -0.378106)
            rotation: Qt.quaternion(-0.00431941, 0.707094, 0.707094, -0.00431947)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_38a42f_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_6b34bb
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5镜筒-1_6b34bb"
            position: Qt.vector3d(-0.0764194, 0.214, -0.378106)
            rotation: Qt.quaternion(-0.00431941, 0.707094, 0.707094, -0.00431947)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_6b34bb_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4隔圈-1"
            position: Qt.vector3d(-0.101418, 0.214, -0.377801)
            rotation: Qt.quaternion(0.496936, 0.503045, 0.503045, 0.496936)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1________L5_1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5单元-1/图纸自建-导星L5-1"
            position: Qt.vector3d(-0.774669, 0.428, 0.0735405)
            rotation: Qt.quaternion(-0.48186, 0.876227, -0.00294359, -0.00535263)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1________L5_1_mesh.mesh"
            materials: [
                clearglass_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_L5______1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5单元-1/L5轴向硅胶圈-1"
            position: Qt.vector3d(-0.77467, 0.428, 0.0735405)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_L5______1_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_3e62c1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_3e62c1"
            position: Qt.vector3d(-0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_3e62c1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_358ee1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_358ee1"
            position: Qt.vector3d(-0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_358ee1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_5f2d77
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_5f2d77"
            position: Qt.vector3d(-0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_5f2d77_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_0d3e5c
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_0d3e5c"
            position: Qt.vector3d(-0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_0d3e5c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_fd1338
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L5单元-1/QUEST07-ML-Model01-Unity1-导星L5镜室-1_fd1338"
            position: Qt.vector3d(-0.763487, 0.428, 0.0734039)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L5___1_QUEST07_ML_Model01_Unity1___L5___1_fd1338_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_2c12c9
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_2c12c9"
            position: Qt.vector3d(-0.235395, 0.214, -0.376164)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_2c12c9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_e32d0e
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_e32d0e"
            position: Qt.vector3d(-0.235395, 0.214, -0.376164)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_e32d0e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_56181d
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_56181d"
            position: Qt.vector3d(-0.235395, 0.214, -0.376164)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_56181d_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_babb63
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_babb63"
            position: Qt.vector3d(-0.235395, 0.214, -0.376164)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_babb63_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_5198bf
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2镜筒-1_5198bf"
            position: Qt.vector3d(-0.235395, 0.214, -0.376164)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2___1_5198bf_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2-3隔圈-1"
            position: Qt.vector3d(-0.174564, 0.214, -0.376907)
            rotation: Qt.quaternion(0.503045, 0.496936, -0.496936, -0.503045)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_210e15
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_210e15"
            position: Qt.vector3d(-0.137677, 0.214, -0.377358)
            rotation: Qt.quaternion(-0.00431941, 0.707094, 0.707094, -0.00431947)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_210e15_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_6a2c7f
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_6a2c7f"
            position: Qt.vector3d(-0.137677, 0.214, -0.377358)
            rotation: Qt.quaternion(-0.00431941, 0.707094, 0.707094, -0.00431947)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_6a2c7f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_b719e8
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_b719e8"
            position: Qt.vector3d(-0.137677, 0.214, -0.377358)
            rotation: Qt.quaternion(-0.00431941, 0.707094, 0.707094, -0.00431947)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_b719e8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_a1d30f
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_a1d30f"
            position: Qt.vector3d(-0.137677, 0.214, -0.377358)
            rotation: Qt.quaternion(-0.00431941, 0.707094, 0.707094, -0.00431947)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_a1d30f_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_8d6e6f
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4镜筒-1_8d6e6f"
            position: Qt.vector3d(-0.137677, 0.214, -0.377358)
            rotation: Qt.quaternion(-0.00431941, 0.707094, 0.707094, -0.00431947)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_8d6e6f_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_b81140
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4单元-1/QUEST07-ML-Model01-Unity1-导星L4镜室-1_b81140"
            position: Qt.vector3d(-0.624367, 0.428, 0.0717042)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_b81140_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_824f59
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4单元-1/QUEST07-ML-Model01-Unity1-导星L4镜室-1_824f59"
            position: Qt.vector3d(-0.624367, 0.428, 0.0717042)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_824f59_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_17ef46
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4单元-1/QUEST07-ML-Model01-Unity1-导星L4镜室-1_17ef46"
            position: Qt.vector3d(-0.624367, 0.428, 0.0717042)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_17ef46_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_294735
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4单元-1/QUEST07-ML-Model01-Unity1-导星L4镜室-1_294735"
            position: Qt.vector3d(-0.624367, 0.428, 0.0717042)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_QUEST07_ML_Model01_Unity1___L4___1_294735_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_L4______1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4单元-1/L4轴向硅胶圈-1"
            position: Qt.vector3d(-0.632332, 0.428, 0.0718015)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1_L4______1_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1________L4_1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L4单元-1/图纸自建-导星L4-1"
            position: Qt.vector3d(-0.638879, 0.428, 0.0718815)
            rotation: Qt.quaternion(-0.00897928, 0.999941, -5.48101e-05, -0.00610837)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L4___1________L4_1_mesh.mesh"
            materials: [
                clearglass_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_L2_3______1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/L2-3轴向硅胶圈-1"
            position: Qt.vector3d(-0.569456, 0.428, 0.0710333)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_L2_3______1_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_____L2_3___1________L3_1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/图纸自建L2-3胶合-1/图纸自建-导星L3-1"
            position: Qt.vector3d(-0.321632, 0.591174, -0.161094)
            rotation: Qt.quaternion(-0.00788585, 0.00352702, 0.35674, 0.934164)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_____L2_3___1________L3_1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_____L2_3___1________L2_1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/图纸自建L2-3胶合-1/图纸自建-导星L2-1"
            position: Qt.vector3d(-0.333131, 0.591034, -0.160954)
            rotation: Qt.quaternion(-0.00856714, 0.00110932, 0.610399, 0.792047)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_____L2_3___1________L2_1_mesh.mesh"
            materials: [
                clearglass_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_379ab7
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_379ab7"
            position: Qt.vector3d(-0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_379ab7_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_8d7a22
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_8d7a22"
            position: Qt.vector3d(-0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_8d7a22_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_ca63fd
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_ca63fd"
            position: Qt.vector3d(-0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_ca63fd_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_f3f1bc
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_f3f1bc"
            position: Qt.vector3d(-0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_f3f1bc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_37a5a2
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L2-3单元-1/QUEST07-ML-Model01-Unity1-导星L2-3镜室-1_37a5a2"
            position: Qt.vector3d(-0.549151, 0.428, 0.0707852)
            rotation: Qt.quaternion(0.707094, 0.00431941, 0.00431947, 0.707094)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L2_3___1_QUEST07_ML_Model01_Unity1___L2_3___1_37a5a2_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1________1_37e996
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_37e996"
            position: Qt.vector3d(-0.227382, 0.214, -0.376262)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1________1_37e996_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1________1_c64f4a
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_c64f4a"
            position: Qt.vector3d(-0.227382, 0.214, -0.376262)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1________1_c64f4a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1________1_400ead
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_400ead"
            position: Qt.vector3d(-0.227382, 0.214, -0.376262)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1________1_400ead_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1________1_654380
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_654380"
            position: Qt.vector3d(-0.227382, 0.214, -0.376262)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1________1_654380_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1________1_3cf6c4
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_3cf6c4"
            position: Qt.vector3d(-0.227382, 0.214, -0.376262)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1________1_3cf6c4_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1________1_b23a90
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_b23a90"
            position: Qt.vector3d(-0.227382, 0.214, -0.376262)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1________1_b23a90_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1________1_9f4dde
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_9f4dde"
            position: Qt.vector3d(-0.227382, 0.214, -0.376262)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1________1_9f4dde_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1________1_aa88db
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_aa88db"
            position: Qt.vector3d(-0.227382, 0.214, -0.376262)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1________1_aa88db_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1________1_d5e9b5
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星基准镜筒-1_d5e9b5"
            position: Qt.vector3d(-0.227382, 0.214, -0.376262)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1________1_d5e9b5_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______1
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1轴向硅胶圈-1"
            position: Qt.vector3d(-0.158514, 0.428, 0.0660124)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______1_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______11183
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-1"
            position: Qt.vector3d(-0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(-0.272246, -0.649279, 0.26894, 0.65726)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______1_mesh1184.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1________L1_2
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/图纸自建-导星L1-2"
            position: Qt.vector3d(-0.16291, 0.428, 0.0660661)
            rotation: Qt.quaternion(0.139411, 0.990216, 0.000851622, -0.00604896)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1________L1_2_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_98489c
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_98489c"
            position: Qt.vector3d(-0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_98489c_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_67042f
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_67042f"
            position: Qt.vector3d(-0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_67042f_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_8906e9
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_8906e9"
            position: Qt.vector3d(-0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_8906e9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_292fd5
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_292fd5"
            position: Qt.vector3d(-0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_292fd5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_5fc489
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_5fc489"
            position: Qt.vector3d(-0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_5fc489_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_4c5475
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/QUEST07-ML-Model01-Unity1-导星L1镜室-1_4c5475"
            position: Qt.vector3d(-0.130094, 0.428, 0.0656652)
            rotation: Qt.quaternion(0.00431947, 0.707094, -0.707094, -0.00431941)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_QUEST07_ML_Model01_Unity1___L1___1_4c5475_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______8
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-8"
            position: Qt.vector3d(-0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(-2.98023e-08, -0.702774, 2.98023e-08, 0.711413)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______8_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______3
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-3"
            position: Qt.vector3d(-0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.65726, 0.26894, -0.649279, -0.272246)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______3_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______6
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-6"
            position: Qt.vector3d(-0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.503045, -0.496936, -0.496936, 0.503045)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______6_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______5
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-5"
            position: Qt.vector3d(-0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.65726, -0.26894, -0.649279, 0.272246)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______5_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______4
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-4"
            position: Qt.vector3d(-0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.711413, -2.98023e-08, -0.702774, 2.98023e-08)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______4_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______2
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-2"
            position: Qt.vector3d(-0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.503045, 0.496936, -0.496936, -0.503045)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______2_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______7
            objectName: "QUEST07-ML-导星镜筒模块-1/QUEST07-ML-Model01-Unity1-导星L1单元-1/L1侧向硅胶垫-7"
            position: Qt.vector3d(-0.144763, 0.428, 0.0658444)
            rotation: Qt.quaternion(0.272246, -0.649279, -0.26894, 0.65726)
            source: "meshes/quest07_ML________1_QUEST07_ML_Model01_Unity1___L1___1_L1______7_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3__________________2
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-不锈钢锁定片-2"
            position: Qt.vector3d(-0.823215, 0.016, -0.34638)
            rotation: Qt.quaternion(4.88494e-16, 0.707107, 1.46048e-15, -0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3__________________2_mesh.mesh"
            materials: [
                polishedsteel_material1215
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3__________________1
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-不锈钢锁定片-1"
            position: Qt.vector3d(-0.668215, 0.016, -0.45638)
            rotation: Qt.quaternion(-6.87296e-16, 1, 1.75294e-15, 5.50574e-16)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3__________________1_mesh.mesh"
            materials: [
                polishedsteel_material1215
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_____2_368ccf
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/黄铜套-2_368ccf"
            position: Qt.vector3d(-0.813215, 0.0241437, -0.32138)
            rotation: Qt.quaternion(-1.3366e-15, -7.20147e-16, -6.87296e-16, 1)
            source: "meshes/quest07_ML_Model02_Unity3___________1_____2_368ccf_mesh.mesh"
            materials: [
                polishedbrass_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_____2_0d52e3
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/黄铜套-2_0d52e3"
            position: Qt.vector3d(-0.813215, 0.0241437, -0.32138)
            rotation: Qt.quaternion(-1.3366e-15, -7.20147e-16, -6.87296e-16, 1)
            source: "meshes/quest07_ML_Model02_Unity3___________1_____2_0d52e3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_____1_2f1057
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/黄铜套-1_2f1057"
            position: Qt.vector3d(-0.638215, 0.0241437, -0.44638)
            rotation: Qt.quaternion(-1.3366e-15, -7.20147e-16, -6.87296e-16, 1)
            source: "meshes/quest07_ML_Model02_Unity3___________1_____1_2f1057_mesh.mesh"
            materials: [
                polishedbrass_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_____1_fe5c19
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/黄铜套-1_fe5c19"
            position: Qt.vector3d(-0.638215, 0.0241437, -0.44638)
            rotation: Qt.quaternion(-1.3366e-15, -7.20147e-16, -6.87296e-16, 1)
            source: "meshes/quest07_ML_Model02_Unity3___________1_____1_fe5c19_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________9
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-弹簧横杆-9"
            position: Qt.vector3d(-0.638215, 0.0041, -0.35138)
            rotation: Qt.quaternion(-4.21468e-08, 0.858998, 0.511979, 1.03397e-15)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________9_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________7
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-弹簧横杆-7"
            position: Qt.vector3d(-0.638215, 0.0285, -0.35138)
            rotation: Qt.quaternion(6.55026e-16, -1.39479e-15, 1, 6.87296e-16)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________7_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_______8_25_3
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/米思米弹簧-8-25-3"
            position: Qt.vector3d(-0.638215, 0.0013, -0.35138)
            rotation: Qt.quaternion(0.707107, 3.45989e-17, -9.37384e-16, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_______8_25_3_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________5
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-弹簧横杆-5"
            position: Qt.vector3d(-0.668215, 0.0041, -0.32138)
            rotation: Qt.quaternion(0.6989, 0.107419, 0.6989, 0.107419)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________4_1_5ebc86
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-4-1_5ebc86"
            position: Qt.vector3d(-0.723215, 0.02, -0.38138)
            rotation: Qt.quaternion(-5.23093e-16, -1.42588e-15, 0.707107, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________4_1_5ebc86_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________4_1_bfb6b1
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-4-1_bfb6b1"
            position: Qt.vector3d(-0.723215, 0.02, -0.38138)
            rotation: Qt.quaternion(-5.23093e-16, -1.42588e-15, 0.707107, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________4_1_bfb6b1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________4_1_312c7f
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-4-1_312c7f"
            position: Qt.vector3d(-0.723215, 0.02, -0.38138)
            rotation: Qt.quaternion(-5.23093e-16, -1.42588e-15, 0.707107, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________4_1_312c7f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________3_1_52e0fb
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-3-1_52e0fb"
            position: Qt.vector3d(-0.723215, 0.002, -0.38138)
            rotation: Qt.quaternion(-5.23093e-16, -1.42588e-15, 0.707107, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________3_1_52e0fb_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________3_1_b5c19e
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-3-1_b5c19e"
            position: Qt.vector3d(-0.723215, 0.002, -0.38138)
            rotation: Qt.quaternion(-5.23093e-16, -1.42588e-15, 0.707107, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3___________3_1_b5c19e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________1
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-弹簧横杆-1"
            position: Qt.vector3d(-0.668215, 0.0285, -0.32138)
            rotation: Qt.quaternion(0.707107, 1.46048e-15, -0.707107, 4.88494e-16)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_______8_25_1
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/米思米弹簧-8-25-1"
            position: Qt.vector3d(-0.668215, 0.0013, -0.32138)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest07_ML_Model02_Unity3___________1_______8_25_1_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1______20_1
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/不锈钢球-20-1"
            position: Qt.vector3d(-0.638215, 0.016, -0.32138)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest07_ML_Model02_Unity3___________1______20_1_mesh.mesh"
            materials: [
                polishedsteel_material
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_______8_25_4
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/米思米弹簧-8-25-4"
            position: Qt.vector3d(-0.638215, 0.0013, -0.42138)
            rotation: Qt.quaternion(0.707107, 3.45989e-17, -9.37384e-16, 0.707107)
            source: "meshes/quest07_ML_Model02_Unity3___________1_______8_25_4_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________8
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-弹簧横杆-8"
            position: Qt.vector3d(-0.638215, 0.0285, -0.42138)
            rotation: Qt.quaternion(6.55026e-16, -1.39479e-15, 1, 6.87296e-16)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________8_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________10
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-弹簧横杆-10"
            position: Qt.vector3d(-0.638215, 0.0041, -0.42138)
            rotation: Qt.quaternion(-4.21468e-08, 0.858998, 0.511979, 1.03397e-15)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________10_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_______8_25_2
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/米思米弹簧-8-25-2"
            position: Qt.vector3d(-0.788215, 0.0013, -0.32138)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest07_ML_Model02_Unity3___________1_______8_25_2_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________6
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-弹簧横杆-6"
            position: Qt.vector3d(-0.788215, 0.0041, -0.32138)
            rotation: Qt.quaternion(0.6989, 0.107419, 0.6989, 0.107419)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________4
            objectName: "QUEST07-ML-Model02-Unity3-八通基座角度调整台-1/QUEST07-ML-Model02-Unity3-八通基座角度调整架-弹簧横杆-4"
            position: Qt.vector3d(-0.788215, 0.0285, -0.32138)
            rotation: Qt.quaternion(0.707107, 1.46048e-15, -0.707107, 4.88494e-16)
            source: "meshes/quest07_ML_Model02_Unity3___________1_QUEST07_ML_Model02_Unity3________________4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1____6
            objectName: "QUEST07-ML-Model02-Unity1-狭缝-6"
            position: Qt.vector3d(-0.690359, 0.214, -0.363472)
            rotation: Qt.quaternion(0.498781, -7.74212e-16, 0.866728, 1.31699e-15)
            source: "meshes/quest07_ML_Model02_Unity1____6_mesh.mesh"
            materials: [
                whitesolid_material866
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1____5
            objectName: "QUEST07-ML-Model02-Unity1-狭缝-5"
            position: Qt.vector3d(-0.700167, 0.214, -0.374592)
            rotation: Qt.quaternion(0.320107, -1.04798e-15, 0.947381, 1.07089e-15)
            source: "meshes/quest07_ML_Model02_Unity1____5_mesh.mesh"
            materials: [
                whitesolid_material866
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_________1
            objectName: "QUEST07-ML-Model02-Unity1-切换轮顶部轴系-1"
            position: Qt.vector3d(-0.723215, 0.276, -0.34438)
            rotation: Qt.quaternion(-0.0014065, -1.3749e-15, 0.999999, 7.35179e-16)
            source: "meshes/quest07_ML_Model02_Unity1_________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: akm21X_ACBNAB01_1_akm_conn_conn_2
            objectName: "AKM21X-ACBNAB01-1/akm_conn_conn-2"
            position: Qt.vector3d(-0.723215, 0.33018, -0.34438)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/akm21X_ACBNAB01_1_akm_conn_conn_2_mesh.mesh"
            materials: [
                defaultplastic_material1272
            ]
        }
        Model {
            id: akm21X_ACBNAB01_1_conn_connector_2
            objectName: "AKM21X-ACBNAB01-1/conn-connector-2"
            position: Qt.vector3d(-0.723215, 0.330631, -0.34438)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/akm21X_ACBNAB01_1_conn_connector_2_mesh.mesh"
            materials: [
                defaultplastic_material1272
            ]
        }
        Model {
            id: akm21X_ACBNAB01_1_AKM21X_ACBNAB01_part1_1_65ce00
            objectName: "AKM21X-ACBNAB01-1/AKM21X-ACBNAB01_part1-1_65ce00"
            position: Qt.vector3d(-0.723215, 0.33018, -0.34438)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/akm21X_ACBNAB01_1_AKM21X_ACBNAB01_part1_1_65ce00_mesh.mesh"
            materials: [
                defaultplastic_material1277
            ]
        }
        Model {
            id: akm21X_ACBNAB01_1_AKM21X_ACBNAB01_part1_1_87c300
            objectName: "AKM21X-ACBNAB01-1/AKM21X-ACBNAB01_part1-1_87c300"
            position: Qt.vector3d(-0.723215, 0.33018, -0.34438)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/akm21X_ACBNAB01_1_AKM21X_ACBNAB01_part1_1_87c300_mesh.mesh"
            materials: [
                defaultplastic_material1280
            ]
        }
        Model {
            id: akm21X_ACBNAB01_1_conn_connector_1
            objectName: "AKM21X-ACBNAB01-1/conn-connector-1"
            position: Qt.vector3d(-0.723215, 0.330631, -0.31338)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/akm21X_ACBNAB01_1_conn_connector_1_mesh.mesh"
            materials: [
                defaultplastic_material1272
            ]
        }
        Model {
            id: akm21X_ACBNAB01_1_akm_conn_conn_1
            objectName: "AKM21X-ACBNAB01-1/akm_conn_conn-1"
            position: Qt.vector3d(-0.723215, 0.33018, -0.31338)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/akm21X_ACBNAB01_1_akm_conn_conn_1_mesh.mesh"
            materials: [
                defaultplastic_material1272
            ]
        }
        Model {
            id: _____E_B7203_MISUMI_2
            objectName: "滚珠轴承_E-B7203_MISUMI-2"
            position: Qt.vector3d(-0.723215, 0.283, -0.34438)
            rotation: Qt.quaternion(0.672955, 0.217099, -0.217099, -0.672955)
            source: "meshes/_____E_B7203_MISUMI_2_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____E_B7203_MISUMI_1
            objectName: "滚珠轴承_E-B7203_MISUMI-1"
            position: Qt.vector3d(-0.723215, 0.145, -0.34438)
            rotation: Qt.quaternion(0.299416, 0.640586, 0.640586, 0.299416)
            source: "meshes/_____E_B7203_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1__________2_71ed41
            objectName: "QUEST07-ML-Model02-Unity1-半圆柱旋转切换轮-2_71ed41"
            position: Qt.vector3d(-0.723215, 0.214, -0.34438)
            rotation: Qt.quaternion(0.707106, 0.707106, 0.000994546, -0.000994546)
            source: "meshes/quest07_ML_Model02_Unity1__________2_71ed41_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1__________2_0a62e7
            objectName: "QUEST07-ML-Model02-Unity1-半圆柱旋转切换轮-2_0a62e7"
            position: Qt.vector3d(-0.723215, 0.214, -0.34438)
            rotation: Qt.quaternion(0.707106, 0.707106, 0.000994546, -0.000994546)
            source: "meshes/quest07_ML_Model02_Unity1__________2_0a62e7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1__________2_3ed082
            objectName: "QUEST07-ML-Model02-Unity1-半圆柱旋转切换轮-2_3ed082"
            position: Qt.vector3d(-0.723215, 0.214, -0.34438)
            rotation: Qt.quaternion(0.707106, 0.707106, 0.000994546, -0.000994546)
            source: "meshes/quest07_ML_Model02_Unity1__________2_3ed082_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1__________2_30ff6d
            objectName: "QUEST07-ML-Model02-Unity1-半圆柱旋转切换轮-2_30ff6d"
            position: Qt.vector3d(-0.723215, 0.214, -0.34438)
            rotation: Qt.quaternion(0.707106, 0.707106, 0.000994546, -0.000994546)
            source: "meshes/quest07_ML_Model02_Unity1__________2_30ff6d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1__________2_76f901
            objectName: "QUEST07-ML-Model02-Unity1-半圆柱旋转切换轮-2_76f901"
            position: Qt.vector3d(-0.723215, 0.214, -0.34438)
            rotation: Qt.quaternion(0.707106, 0.707106, 0.000994546, -0.000994546)
            source: "meshes/quest07_ML_Model02_Unity1__________2_76f901_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1__________2_63f422
            objectName: "QUEST07-ML-Model02-Unity1-半圆柱旋转切换轮-2_63f422"
            position: Qt.vector3d(-0.723215, 0.214, -0.34438)
            rotation: Qt.quaternion(0.707106, 0.707106, 0.000994546, -0.000994546)
            source: "meshes/quest07_ML_Model02_Unity1__________2_63f422_mesh.mesh"
            materials: [
                whitesolid_material1301
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1______1
            objectName: "QUEST07-ML-Model02-Unity1-八通基座-1"
            position: Qt.vector3d(-0.723215, 0.214, -0.37038)
            rotation: Qt.quaternion(6.73254e-16, -1.41553e-15, 1, 6.87296e-16)
            source: "meshes/quest07_ML_Model02_Unity1______1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_M3_3_6__1
            objectName: "QUEST07-ML-Model02-Unity1-M3-3-6键-1"
            position: Qt.vector3d(-0.729215, 0.296772, -0.344363)
            rotation: Qt.quaternion(0.706112, 8.89563e-16, 0.708101, 2.78032e-15)
            source: "meshes/quest07_ML_Model02_Unity1_M3_3_6__1_mesh.mesh"
            materials: [
                polishedsteel_material1306
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_________2_fadf55
            objectName: "QUEST07-ML-Model02-Unity1-切换轮轴系端盖-2_fadf55"
            position: Qt.vector3d(-0.723215, 0.287, -0.34438)
            rotation: Qt.quaternion(1.57543e-16, 1, 6.96306e-15, 1.07116e-15)
            source: "meshes/quest07_ML_Model02_Unity1_________2_fadf55_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_________2_732c7a
            objectName: "QUEST07-ML-Model02-Unity1-切换轮轴系端盖-2_732c7a"
            position: Qt.vector3d(-0.723215, 0.287, -0.34438)
            rotation: Qt.quaternion(1.57543e-16, 1, 6.96306e-15, 1.07116e-15)
            source: "meshes/quest07_ML_Model02_Unity1_________2_732c7a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ______MCSLCWK25_9_53_9_53_MISUMI_1_NEZI_1_______MCSLCWK25_9_53_9_53_MISUMI_2_b3d0bb
            objectName: "标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1/NEZI-1_标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-2_b3d0bb"
            position: Qt.vector3d(-0.715466, 0.298, -0.348985)
            rotation: Qt.quaternion(0.24091, 0.24091, 0.664803, -0.664803)
            source: "meshes/______MCSLCWK25_9_53_9_53_MISUMI_1_NEZI_1_______MCSLCWK25_9_53_9_53_MISUMI_2_b3d0bb_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: ______MCSLCWK25_9_53_9_53_MISUMI_1_NEZI_1_______MCSLCWK25_9_53_9_53_MISUMI_2_84d862
            objectName: "标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1/NEZI-1_标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-2_84d862"
            position: Qt.vector3d(-0.715466, 0.298, -0.348985)
            rotation: Qt.quaternion(0.24091, 0.24091, 0.664803, -0.664803)
            source: "meshes/______MCSLCWK25_9_53_9_53_MISUMI_1_NEZI_1_______MCSLCWK25_9_53_9_53_MISUMI_2_84d862_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ______MCSLCWK25_9_53_9_53_MISUMI_1_BODY_______MCSLCWK25_9_53_9_53_MISUMI_1_40828f
            objectName: "标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1/BODY_标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1_40828f"
            position: Qt.vector3d(-0.723215, 0.3242, -0.34438)
            rotation: Qt.quaternion(0.6529, -0.271517, 0.271517, -0.6529)
            source: "meshes/______MCSLCWK25_9_53_9_53_MISUMI_1_BODY_______MCSLCWK25_9_53_9_53_MISUMI_1_40828f_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: ______MCSLCWK25_9_53_9_53_MISUMI_1_BODY_______MCSLCWK25_9_53_9_53_MISUMI_1_76cbae
            objectName: "标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1/BODY_标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1_76cbae"
            position: Qt.vector3d(-0.723215, 0.3242, -0.34438)
            rotation: Qt.quaternion(0.6529, -0.271517, 0.271517, -0.6529)
            source: "meshes/______MCSLCWK25_9_53_9_53_MISUMI_1_BODY_______MCSLCWK25_9_53_9_53_MISUMI_1_76cbae_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ______MCSLCWK25_9_53_9_53_MISUMI_1_NEZI_1_______MCSLCWK25_9_53_9_53_MISUMI_1_3a1f23
            objectName: "标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1/NEZI-1_标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1_3a1f23"
            position: Qt.vector3d(-0.727776, 0.3202, -0.336605)
            rotation: Qt.quaternion(0.297935, 0.297935, 0.641276, -0.641276)
            source: "meshes/______MCSLCWK25_9_53_9_53_MISUMI_1_NEZI_1_______MCSLCWK25_9_53_9_53_MISUMI_1_3a1f23_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: ______MCSLCWK25_9_53_9_53_MISUMI_1_NEZI_1_______MCSLCWK25_9_53_9_53_MISUMI_1_809e7d
            objectName: "标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1/NEZI-1_标准联轴器_MCSLCWK25-9.53-9.53_MISUMI-1_809e7d"
            position: Qt.vector3d(-0.727776, 0.3202, -0.336605)
            rotation: Qt.quaternion(0.297935, 0.297935, 0.641276, -0.641276)
            source: "meshes/______MCSLCWK25_9_53_9_53_MISUMI_1_NEZI_1_______MCSLCWK25_9_53_9_53_MISUMI_1_809e7d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_________11323
            objectName: "QUEST07-ML-Model02-Unity1-切换轮底部轴系-1"
            position: Qt.vector3d(-0.723215, 0.152, -0.34438)
            rotation: Qt.quaternion(5.0993e-17, 0.865321, 1.57133e-15, -0.501218)
            source: "meshes/quest07_ML_Model02_Unity1_________1_mesh1324.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_________1_382c95
            objectName: "QUEST07-ML-Model02-Unity1-切换轮轴系端盖-1_382c95"
            position: Qt.vector3d(-0.723215, 0.141, -0.34438)
            rotation: Qt.quaternion(6.73254e-16, -1.41553e-15, 1, 6.87296e-16)
            source: "meshes/quest07_ML_Model02_Unity1_________1_382c95_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1_________1_55c8e2
            objectName: "QUEST07-ML-Model02-Unity1-切换轮轴系端盖-1_55c8e2"
            position: Qt.vector3d(-0.723215, 0.141, -0.34438)
            rotation: Qt.quaternion(6.73254e-16, -1.41553e-15, 1, 6.87296e-16)
            source: "meshes/quest07_ML_Model02_Unity1_________1_55c8e2_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest07_ML_Model02_Unity1____7
            objectName: "QUEST07-ML-Model02-Unity1-狭缝-7"
            position: Qt.vector3d(-0.746432, 0.214, -0.374462)
            rotation: Qt.quaternion(-0.322771, -1.55607e-15, 0.946477, 1.87048e-16)
            source: "meshes/quest07_ML_Model02_Unity1____7_mesh.mesh"
            materials: [
                whitesolid_material866
            ]
        }
        Model {
            id: _____TFZF8_8_MISUMI_1_6
            objectName: "无油衬套_TFZF8-8_MISUMI-1_6"
            position: Qt.vector3d(-0.0469393, 0.0308, -0.145526)
            rotation: Qt.quaternion(0.0651656, -0.704098, 0.704098, -0.0651657)
            source: "meshes/_____TFZF8_8_MISUMI_1_6_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: ____E_MSC8_25_MISUMI_1_6
            objectName: "定位销_E-MSC8-25_MISUMI-1_6"
            position: Qt.vector3d(-0.0469393, 0.0128, -0.145526)
            rotation: Qt.quaternion(0.698341, 0.698341, 0.110994, -0.110994)
            source: "meshes/____E_MSC8_25_MISUMI_1_6_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: m6x0_25___4_2_2f77ff
            objectName: "M6x0.25顶丝-4_2_2f77ff"
            position: Qt.vector3d(-0.0263279, 0.1263, -0.157426)
            rotation: Qt.quaternion(-0.0807101, 0.245913, 0.301215, 0.91776)
            source: "meshes/m6x0_25___4_2_2f77ff_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___4_2_c2b367
            objectName: "M6x0.25顶丝-4_2_c2b367"
            position: Qt.vector3d(-0.0263279, 0.1263, -0.157426)
            rotation: Qt.quaternion(-0.0807101, 0.245913, 0.301215, 0.91776)
            source: "meshes/m6x0_25___4_2_c2b367_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS04_part03________1
            objectName: "QUEST08-ML-SYS04-part03-俯仰调节压板-1"
            position: Qt.vector3d(-0.033949, 0.1263, -0.153026)
            rotation: Qt.quaternion(0, -0.5, 4.21469e-08, 0.866025)
            source: "meshes/quest08_ML_SYS04_part03________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: m6x0_25___3_4_48a446
            objectName: "M6x0.25顶丝-3_4_48a446"
            position: Qt.vector3d(-0.0675507, 0.1263, -0.133626)
            rotation: Qt.quaternion(0.849384, 0.459956, 0.227592, -0.123245)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___3_4_48a446_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___3_4_cfceae
            objectName: "M6x0.25顶丝-3_4_cfceae"
            position: Qt.vector3d(-0.0675507, 0.1263, -0.133626)
            rotation: Qt.quaternion(0.849384, 0.459956, 0.227592, -0.123245)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___3_4_cfceae_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: m6x0_25___2_6_f0b7bc
            objectName: "M6x0.25顶丝-2_6_f0b7bc"
            position: Qt.vector3d(-0.048193, 0.0278, -0.0760979)
            rotation: Qt.quaternion(0.765406, -0.589208, 0.20509, 0.157878)
            source: "meshes/m6x0_25___2_6_f0b7bc_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___2_6_29d725
            objectName: "M6x0.25顶丝-2_6_29d725"
            position: Qt.vector3d(-0.048193, 0.0278, -0.0760979)
            rotation: Qt.quaternion(0.765406, -0.589208, 0.20509, 0.157878)
            source: "meshes/m6x0_25___2_6_29d725_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS04_part05_12___3
            objectName: "QUEST08-ML-SYS04-part05-12球头-3"
            position: Qt.vector3d(-0.00335047, 0.2198, -0.0700283)
            rotation: Qt.quaternion(-0.183013, 0.183013, 0.683013, 0.683013)
            source: "meshes/quest08_ML_SYS04_part05_12___3_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: m6x0_25___1_2_e0f174
            objectName: "M6x0.25顶丝-1_2_e0f174"
            position: Qt.vector3d(0.0311349, 0.0278, -0.121898)
            rotation: Qt.quaternion(0.0190715, 0.258115, -0.0711757, 0.9633)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___1_2_e0f174_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___1_2_dec030
            objectName: "M6x0.25顶丝-1_2_dec030"
            position: Qt.vector3d(0.0311349, 0.0278, -0.121898)
            rotation: Qt.quaternion(0.0190715, 0.258115, -0.0711757, 0.9633)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___1_2_dec030_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS04_part10_________1
            objectName: "QUEST08-ML-SYS04-part10-偏摆调整顶丝座-1"
            position: Qt.vector3d(0.0226478, 0.0208, -0.116998)
            rotation: Qt.quaternion(0.5, 0, 0.866025, -4.21469e-08)
            source: "meshes/quest08_ML_SYS04_part10_________1_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS04_part10_________2
            objectName: "QUEST08-ML-SYS04-part10-偏摆调整顶丝座-2"
            position: Qt.vector3d(-0.039706, 0.0208, -0.0809979)
            rotation: Qt.quaternion(0.5, 0, 0.866025, -4.21469e-08)
            source: "meshes/quest08_ML_SYS04_part10_________2_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS04_part02________2
            objectName: "QUEST08-ML-SYS04-part02-固定环氧胶垫-2"
            position: Qt.vector3d(-0.00987234, 0.1798, -0.0803246)
            rotation: Qt.quaternion(0.674988, 0.185138, 0.180863, 0.690944)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS04_part02________2_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS04_part06_________1
            objectName: "QUEST08-ML-SYS04-part06-分色镜球头顶盖-1"
            position: Qt.vector3d(-0.0974393, 0.2198, -0.232995)
            rotation: Qt.quaternion(0.612372, 0.353553, -0.353553, -0.612372)
            source: "meshes/quest08_ML_SYS04_part06_________1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS04_part08_______1_edeade
            objectName: "QUEST08-ML-SYS04-part08-分色镜底板-1_edeade"
            position: Qt.vector3d(-0.0382791, 0.00579999, -0.150526)
            rotation: Qt.quaternion(0.5, 0, 0.866025, -4.21469e-08)
            source: "meshes/quest08_ML_SYS04_part08_______1_edeade_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS04_part08_______1_b9e8dd
            objectName: "QUEST08-ML-SYS04-part08-分色镜底板-1_b9e8dd"
            position: Qt.vector3d(-0.0382791, 0.00579999, -0.150526)
            rotation: Qt.quaternion(0.5, 0, 0.866025, -4.21469e-08)
            source: "meshes/quest08_ML_SYS04_part08_______1_b9e8dd_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS04_part02________5
            objectName: "QUEST08-ML-SYS04-part02-固定环氧胶垫-5"
            position: Qt.vector3d(-0.0848723, 0.2598, -0.210228)
            rotation: Qt.quaternion(-0.183013, -0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS04_part02________5_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS04_part05_12___1
            objectName: "QUEST08-ML-SYS04-part05-12球头-1"
            position: Qt.vector3d(-0.0905282, 0.2198, -0.221025)
            rotation: Qt.quaternion(0.353553, -0.353553, 0.612372, 0.612372)
            source: "meshes/quest08_ML_SYS04_part05_12___1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS04_part04________1_e9a6a6
            objectName: "QUEST08-ML-SYS04-part04-分色镜支撑架-1_e9a6a6"
            position: Qt.vector3d(-0.0469393, 0.2198, -0.145526)
            rotation: Qt.quaternion(2.98023e-08, 0.965926, -2.98023e-08, -0.258819)
            source: "meshes/quest08_ML_SYS04_part04________1_e9a6a6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS04_part04________1_8a2dd8
            objectName: "QUEST08-ML-SYS04-part04-分色镜支撑架-1_8a2dd8"
            position: Qt.vector3d(-0.0469393, 0.2198, -0.145526)
            rotation: Qt.quaternion(2.98023e-08, 0.965926, -2.98023e-08, -0.258819)
            source: "meshes/quest08_ML_SYS04_part04________1_8a2dd8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS04_part04________1_834073
            objectName: "QUEST08-ML-SYS04-part04-分色镜支撑架-1_834073"
            position: Qt.vector3d(-0.0469393, 0.2198, -0.145526)
            rotation: Qt.quaternion(2.98023e-08, 0.965926, -2.98023e-08, -0.258819)
            source: "meshes/quest08_ML_SYS04_part04________1_834073_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest08_ML_SYS04_part04________1_4b9923
            objectName: "QUEST08-ML-SYS04-part04-分色镜支撑架-1_4b9923"
            position: Qt.vector3d(-0.0469393, 0.2198, -0.145526)
            rotation: Qt.quaternion(2.98023e-08, 0.965926, -2.98023e-08, -0.258819)
            source: "meshes/quest08_ML_SYS04_part04________1_4b9923_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS04_part04________1_639032
            objectName: "QUEST08-ML-SYS04-part04-分色镜支撑架-1_639032"
            position: Qt.vector3d(-0.0469393, 0.2198, -0.145526)
            rotation: Qt.quaternion(2.98023e-08, 0.965926, -2.98023e-08, -0.258819)
            source: "meshes/quest08_ML_SYS04_part04________1_639032_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS04_part04________1_76eb56
            objectName: "QUEST08-ML-SYS04-part04-分色镜支撑架-1_76eb56"
            position: Qt.vector3d(-0.0469393, 0.2198, -0.145526)
            rotation: Qt.quaternion(2.98023e-08, 0.965926, -2.98023e-08, -0.258819)
            source: "meshes/quest08_ML_SYS04_part04________1_76eb56_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS04_part02________3
            objectName: "QUEST08-ML-SYS04-part02-固定环氧胶垫-3"
            position: Qt.vector3d(-0.0273723, 0.2948, -0.110635)
            rotation: Qt.quaternion(0.353553, -0.353553, 0.612372, 0.612372)
            source: "meshes/quest08_ML_SYS04_part02________3_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS04_part02________8
            objectName: "QUEST08-ML-SYS04-part02-固定环氧胶垫-8"
            position: Qt.vector3d(-0.0673723, 0.14465, -0.179917)
            rotation: Qt.quaternion(0.353553, -0.353553, 0.612372, 0.612372)
            source: "meshes/quest08_ML_SYS04_part02________8_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS04_part02________7
            objectName: "QUEST08-ML-SYS04-part02-固定环氧胶垫-7"
            position: Qt.vector3d(-0.0273723, 0.14465, -0.110635)
            rotation: Qt.quaternion(0.353553, -0.353553, 0.612372, 0.612372)
            source: "meshes/quest08_ML_SYS04_part02________7_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS04_part02________6
            objectName: "QUEST08-ML-SYS04-part02-固定环氧胶垫-6"
            position: Qt.vector3d(-0.0848724, 0.1798, -0.210228)
            rotation: Qt.quaternion(-0.219996, -0.508836, 0.821035, 0.136342)
            source: "meshes/quest08_ML_SYS04_part02________6_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS04_part02________4
            objectName: "QUEST08-ML-SYS04-part02-固定环氧胶垫-4"
            position: Qt.vector3d(-0.0673723, 0.2948, -0.179917)
            rotation: Qt.quaternion(0.353553, -0.353553, 0.612372, 0.612372)
            source: "meshes/quest08_ML_SYS04_part02________4_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS04_part07__________1
            objectName: "QUEST08-ML-SYS04-part07-分色镜支撑架底座-1"
            position: Qt.vector3d(-0.0469393, 0.0703, -0.145526)
            rotation: Qt.quaternion(0.5, 0, 0.866025, -4.21469e-08)
            source: "meshes/quest08_ML_SYS04_part07__________1_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest08_ML_SYS04_part02________1
            objectName: "QUEST08-ML-SYS04-part02-固定环氧胶垫-1"
            position: Qt.vector3d(-0.00979734, 0.2598, -0.0801947)
            rotation: Qt.quaternion(-0.183013, -0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS04_part02________1_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS04_part01_______1_d8990c
            objectName: "QUEST08-ML-SYS04-part01-分色镜镜室-1_d8990c"
            position: Qt.vector3d(-0.034382, 0.2198, -0.152776)
            rotation: Qt.quaternion(0.353553, -0.353553, 0.612372, 0.612372)
            source: "meshes/quest08_ML_SYS04_part01_______1_d8990c_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest08_ML_SYS04_part01_______1_9fcdcb
            objectName: "QUEST08-ML-SYS04-part01-分色镜镜室-1_9fcdcb"
            position: Qt.vector3d(-0.034382, 0.2198, -0.152776)
            rotation: Qt.quaternion(0.353553, -0.353553, 0.612372, 0.612372)
            source: "meshes/quest08_ML_SYS04_part01_______1_9fcdcb_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _________1
            objectName: "图纸自建-分色镜-1"
            position: Qt.vector3d(-0.0391909, 0.2198, -0.15)
            rotation: Qt.quaternion(0, -0.5, 4.21469e-08, 0.866025)
            source: "meshes/_________1_mesh.mesh"
            materials: [
                pink_material1405
            ]
        }
        Model {
            id: node28___1
            objectName: "28__-1"
            position: Qt.vector3d(-0.396046, 0.35, -0.239956)
            rotation: Qt.quaternion(0.666523, 0.23611, -0.23611, -0.666523)
            source: "meshes/node28___1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: node28_________0_1
            objectName: "28________-0-1"
            position: Qt.vector3d(-0.396046, 0.287, -0.239956)
            rotation: Qt.quaternion(0.505852, 0.505852, 0.494078, -0.494078)
            source: "meshes/node28_________0_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: node28_________1
            objectName: "28________-1"
            position: Qt.vector3d(-0.396046, 0.323, -0.239956)
            rotation: Qt.quaternion(-0.494078, 0.494078, 0.505852, 0.505852)
            source: "meshes/node28_________1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: node28_____52_1
            objectName: "28____-52-1"
            position: Qt.vector3d(-0.396046, 0.287, -0.239956)
            rotation: Qt.quaternion(-0.494078, 0.494078, 0.505852, 0.505852)
            source: "meshes/node28_____52_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: node28_______1
            objectName: "28______-1"
            position: Qt.vector3d(-0.410396, 0.28472, -0.238013)
            rotation: Qt.quaternion(0.00832537, 0.707058, 0.707058, 0.00832541)
            source: "meshes/node28_______1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5________2_122bdb
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5偏心调节顶丝座-2_122bdb"
            position: Qt.vector3d(0.577009, 0.140552, 0.229986)
            rotation: Qt.quaternion(0.542468, 0.3276, -0.453573, 0.626641)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5________2_122bdb_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5________2_ff0b81
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5偏心调节顶丝座-2_ff0b81"
            position: Qt.vector3d(0.577009, 0.140552, 0.229986)
            rotation: Qt.quaternion(0.542468, 0.3276, -0.453573, 0.626641)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5________2_ff0b81_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5________4_5319ff
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5偏心调节顶丝座-4_5319ff"
            position: Qt.vector3d(0.589971, 0.287448, 0.170536)
            rotation: Qt.quaternion(-0.453573, 0.626641, -0.542468, -0.3276)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5________4_5319ff_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5________4_7bae17
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5偏心调节顶丝座-4_7bae17"
            position: Qt.vector3d(0.589971, 0.287448, 0.170536)
            rotation: Qt.quaternion(-0.453573, 0.626641, -0.542468, -0.3276)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5________4_7bae17_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5________3_8df335
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5偏心调节顶丝座-3_8df335"
            position: Qt.vector3d(0.599137, 0.183577, 0.128498)
            rotation: Qt.quaternion(-0.0628578, -0.67475, 0.704307, -0.211454)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5________3_8df335_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5________3_194306
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5偏心调节顶丝座-3_194306"
            position: Qt.vector3d(0.599137, 0.183577, 0.128498)
            rotation: Qt.quaternion(-0.0628578, -0.67475, 0.704307, -0.211454)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5________3_194306_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________7_8bf9d5
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底座地脚-7_8bf9d5"
            position: Qt.vector3d(0.553468, 1.11022e-16, 0.387109)
            rotation: Qt.quaternion(0.685068, 1.19244e-16, 0.728479, 1.65656e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________7_8bf9d5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________7_2ec988
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底座地脚-7_2ec988"
            position: Qt.vector3d(0.553468, 1.11022e-16, 0.387109)
            rotation: Qt.quaternion(0.685068, 1.19244e-16, 0.728479, 1.65656e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________7_2ec988_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_01c121
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度调节旋钮-6_01c121"
            position: Qt.vector3d(0.447521, 0.05, 0.293434)
            rotation: Qt.quaternion(4.04682e-17, 0.0113671, -5.14283e-17, 0.999935)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_01c121_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_5b8a17
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度调节旋钮-6_5b8a17"
            position: Qt.vector3d(0.447521, 0.05, 0.293434)
            rotation: Qt.quaternion(4.04682e-17, 0.0113671, -5.14283e-17, 0.999935)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_5b8a17_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_faf189
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度调节旋钮-6_faf189"
            position: Qt.vector3d(0.447521, 0.05, 0.293434)
            rotation: Qt.quaternion(4.04682e-17, 0.0113671, -5.14283e-17, 0.999935)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_faf189_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V__________1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒V型支撑架万向球顶盖-1"
            position: Qt.vector3d(0.263163, 0.122945, 0.223613)
            rotation: Qt.quaternion(-0.339028, 0.678511, -0.620532, -0.199054)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V__________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V________1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒V型支撑架万向球-1"
            position: Qt.vector3d(0.262917, 0.121791, 0.224739)
            rotation: Qt.quaternion(0.719509, 0.240051, 0.579535, 0.29803)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_da36b2
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度锁紧压圈-6_da36b2"
            position: Qt.vector3d(0.447521, 0.02, 0.293434)
            rotation: Qt.quaternion(0.80076, 1.03851e-16, 0.598986, -3.72224e-18)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_da36b2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_1d0278
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度锁紧压圈-6_1d0278"
            position: Qt.vector3d(0.447521, 0.02, 0.293434)
            rotation: Qt.quaternion(0.80076, 1.03851e-16, 0.598986, -3.72224e-18)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________6_1d0278_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____________4_13b7d1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-柔性-4_13b7d1"
            position: Qt.vector3d(0.239238, 0.0945, 0.286402)
            rotation: Qt.quaternion(0.994245, 1.71142e-16, -0.107132, 1.18615e-16)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____________4_13b7d1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____________4_0546d3
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-柔性-4_0546d3"
            position: Qt.vector3d(0.239238, 0.0945, 0.286402)
            rotation: Qt.quaternion(0.994245, 1.71142e-16, -0.107132, 1.18615e-16)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____________4_0546d3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_1e73c1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-10_1e73c1"
            position: Qt.vector3d(0.249008, 0.073, 0.288532)
            rotation: Qt.quaternion(0.107132, 1.01322e-16, 0.994245, 8.3216e-18)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_1e73c1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_597ea7
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-10_597ea7"
            position: Qt.vector3d(0.249008, 0.073, 0.288532)
            rotation: Qt.quaternion(0.107132, 1.01322e-16, 0.994245, 8.3216e-18)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_597ea7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_f7888c
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-10_f7888c"
            position: Qt.vector3d(0.249008, 0.073, 0.288532)
            rotation: Qt.quaternion(0.107132, 1.01322e-16, 0.994245, 8.3216e-18)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_f7888c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_7
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-7"
            position: Qt.vector3d(0.25263, 0.1005, 0.271922)
            rotation: Qt.quaternion(0.550688, 0.443557, 0.443557, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_7_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________3_35533d
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-3_35533d"
            position: Qt.vector3d(0.509723, 0.073, 0.184177)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________3_35533d_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________3_509ded
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-3_509ded"
            position: Qt.vector3d(0.509723, 0.073, 0.184177)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________3_509ded_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________3_2a4fd8
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-3_2a4fd8"
            position: Qt.vector3d(0.509723, 0.073, 0.184177)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________3_2a4fd8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6________3
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移块-3"
            position: Qt.vector3d(0.496533, 0.094, 0.181301)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6________3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_3
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-3"
            position: Qt.vector3d(0.507769, 0.1005, 0.183751)
            rotation: Qt.quaternion(0.121375, 0.696612, 0.696612, 0.121375)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_3_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____________3_a6c0f2
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-柔性-3_a6c0f2"
            position: Qt.vector3d(0.522249, 0.0945, 0.197143)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____________3_a6c0f2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____________3_dff0a0
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-柔性-3_dff0a0"
            position: Qt.vector3d(0.522249, 0.0945, 0.197143)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____________3_dff0a0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6________1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移块-1"
            position: Qt.vector3d(0.432172, 0.094, 0.0352373)
            rotation: Qt.quaternion(0.703037, -0.703037, -0.0757535, -0.0757535)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_1a02d3
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-1_1a02d3"
            position: Qt.vector3d(0.448014, 0.0945, 0.00952178)
            rotation: Qt.quaternion(0.107132, 8.17814e-17, 0.994245, 6.01325e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_1a02d3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_e78247
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-1_e78247"
            position: Qt.vector3d(0.448014, 0.0945, 0.00952178)
            rotation: Qt.quaternion(0.107132, 8.17814e-17, 0.994245, 6.01325e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_e78247_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_086471
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-1_086471"
            position: Qt.vector3d(0.435048, 0.073, 0.0220472)
            rotation: Qt.quaternion(0.107132, 1.0343e-16, 0.994245, 1.18298e-16)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_086471_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_b48504
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-1_b48504"
            position: Qt.vector3d(0.435048, 0.073, 0.0220472)
            rotation: Qt.quaternion(0.107132, 1.0343e-16, 0.994245, 1.18298e-16)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_b48504_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_1c3c44
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-1_1c3c44"
            position: Qt.vector3d(0.435048, 0.073, 0.0220472)
            rotation: Qt.quaternion(0.107132, 1.0343e-16, 0.994245, 1.18298e-16)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_1c3c44_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6________7
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移块-7"
            position: Qt.vector3d(0.133417, 0.094, 0.0253668)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6________7_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_11
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-11"
            position: Qt.vector3d(0.122181, 0.1015, 0.022917)
            rotation: Qt.quaternion(0.654357, -0.267987, 0.267987, -0.654357)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_11_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________11_74343e
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-11_74343e"
            position: Qt.vector3d(0.107701, 0.0945, 0.00952502)
            rotation: Qt.quaternion(0.627284, -4.32316e-17, -0.778791, 3.48212e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________11_74343e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________11_5ec84e
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-11_5ec84e"
            position: Qt.vector3d(0.107701, 0.0945, 0.00952502)
            rotation: Qt.quaternion(0.627284, -4.32316e-17, -0.778791, 3.48212e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________11_5ec84e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________8_c64db6
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-8_c64db6"
            position: Qt.vector3d(0.105571, 0.073, 0.0192955)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________8_c64db6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________8_d7126c
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-8_d7126c"
            position: Qt.vector3d(0.105571, 0.073, 0.0192955)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________8_d7126c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________8_b78d56
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-8_b78d56"
            position: Qt.vector3d(0.105571, 0.073, 0.0192955)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________8_b78d56_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_10
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-10"
            position: Qt.vector3d(0.19036, 0.1015, -0.0292563)
            rotation: Qt.quaternion(0.70654, -0.0283007, -0.0283007, 0.70654)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_10_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_9
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-9"
            position: Qt.vector3d(0.434622, 0.1015, 0.0240013)
            rotation: Qt.quaternion(0.550688, 0.443557, 0.443557, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_9_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_be8a34
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-10_be8a34"
            position: Qt.vector3d(0.203752, 0.0945, -0.0437358)
            rotation: Qt.quaternion(0.107132, -3.38202e-16, 0.994245, 7.34461e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_be8a34_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_8e98fd
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-10_8e98fd"
            position: Qt.vector3d(0.203752, 0.0945, -0.0437358)
            rotation: Qt.quaternion(0.107132, -3.38202e-16, 0.994245, 7.34461e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________10_8e98fd_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________7_2f0d69
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-7_2f0d69"
            position: Qt.vector3d(0.190786, 0.073, -0.0312104)
            rotation: Qt.quaternion(0.107132, -1.80836e-16, 0.994245, 1.65662e-16)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________7_2f0d69_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________7_7824b2
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-7_7824b2"
            position: Qt.vector3d(0.190786, 0.073, -0.0312104)
            rotation: Qt.quaternion(0.107132, -1.80836e-16, 0.994245, 1.65662e-16)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________7_7824b2_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________7_b00bbe
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-7_b00bbe"
            position: Qt.vector3d(0.190786, 0.073, -0.0312104)
            rotation: Qt.quaternion(0.107132, -1.80836e-16, 0.994245, 1.65662e-16)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________7_b00bbe_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_355079
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度调节旋钮-2_355079"
            position: Qt.vector3d(0.498648, 0.05, 0.0589428)
            rotation: Qt.quaternion(4.04682e-17, 0.0113671, -5.14283e-17, 0.999935)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_355079_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_362021
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度调节旋钮-2_362021"
            position: Qt.vector3d(0.498648, 0.05, 0.0589428)
            rotation: Qt.quaternion(4.04682e-17, 0.0113671, -5.14283e-17, 0.999935)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_362021_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_816321
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度调节旋钮-2_816321"
            position: Qt.vector3d(0.498648, 0.05, 0.0589428)
            rotation: Qt.quaternion(4.04682e-17, 0.0113671, -5.14283e-17, 0.999935)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_816321_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_f389d2
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度锁紧压圈-1_f389d2"
            position: Qt.vector3d(0.126233, 0.02, 0.100563)
            rotation: Qt.quaternion(0.786877, 1.05801e-16, 0.61711, -1.37502e-18)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_f389d2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_b04608
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度锁紧压圈-1_b04608"
            position: Qt.vector3d(0.126233, 0.02, 0.100563)
            rotation: Qt.quaternion(0.786877, 1.05801e-16, 0.61711, -1.37502e-18)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_b04608_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________1_a79f21
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底座地脚-1_a79f21"
            position: Qt.vector3d(0.202634, 1.66533e-16, 0.21957)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________1_a79f21_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________1_a73bcc
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底座地脚-1_a73bcc"
            position: Qt.vector3d(0.202634, 1.66533e-16, 0.21957)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________1_a73bcc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________2_9024b4
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底座地脚-2_9024b4"
            position: Qt.vector3d(0.604596, 1.11022e-16, 0.152618)
            rotation: Qt.quaternion(0.685068, 1.19244e-16, 0.728479, 1.65656e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________2_9024b4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________2_d21521
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底座地脚-2_d21521"
            position: Qt.vector3d(0.604596, 1.11022e-16, 0.152618)
            rotation: Qt.quaternion(0.685068, 1.19244e-16, 0.728479, 1.65656e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________2_d21521_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_b69d62
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度锁紧压圈-2_b69d62"
            position: Qt.vector3d(0.498648, 0.02, 0.0589428)
            rotation: Qt.quaternion(0.786877, 1.05801e-16, 0.61711, -1.37502e-18)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_b69d62_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_6dab8b
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度锁紧压圈-2_6dab8b"
            position: Qt.vector3d(0.498648, 0.02, 0.0589428)
            rotation: Qt.quaternion(0.786877, 1.05801e-16, 0.61711, -1.37502e-18)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________2_6dab8b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_41e13c
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度调节旋钮-1_41e13c"
            position: Qt.vector3d(0.126233, 0.05, 0.100563)
            rotation: Qt.quaternion(4.04682e-17, 0.0113671, -5.14283e-17, 0.999935)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_41e13c_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_28ec22
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度调节旋钮-1_28ec22"
            position: Qt.vector3d(0.126233, 0.05, 0.100563)
            rotation: Qt.quaternion(4.04682e-17, 0.0113671, -5.14283e-17, 0.999935)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_28ec22_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_0e67ee
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝底座高度调节旋钮-1_0e67ee"
            position: Qt.vector3d(0.126233, 0.05, 0.100563)
            rotation: Qt.quaternion(4.04682e-17, 0.0113671, -5.14283e-17, 0.999935)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6___________1_0e67ee_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V________2
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒V型支撑架万向球-2"
            position: Qt.vector3d(0.302203, 0.121791, 0.0445554)
            rotation: Qt.quaternion(0.579535, -0.29803, -0.719509, 0.240051)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V__________2
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒V型支撑架万向球顶盖-2"
            position: Qt.vector3d(0.301958, 0.122945, 0.0456821)
            rotation: Qt.quaternion(0.678511, -0.339028, 0.199054, 0.620532)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V__________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________2_3_fcc720
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒侧向三角架2-3_fcc720"
            position: Qt.vector3d(0.229375, 0.094, 0.261223)
            rotation: Qt.quaternion(0.107132, 4.18744e-17, 0.994245, 4.18744e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________2_3_fcc720_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________2_3_d47348
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒侧向三角架2-3_d47348"
            position: Qt.vector3d(0.229375, 0.094, 0.261223)
            rotation: Qt.quaternion(0.107132, 4.18744e-17, 0.994245, 4.18744e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________2_3_d47348_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________9_32c1eb
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-9_32c1eb"
            position: Qt.vector3d(0.0882722, 0.073, 0.169048)
            rotation: Qt.quaternion(0.627284, 0, -0.778791, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________9_32c1eb_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________9_307546
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-9_307546"
            position: Qt.vector3d(0.0882722, 0.073, 0.169048)
            rotation: Qt.quaternion(0.627284, 0, -0.778791, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________9_307546_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________9_91c74a
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移顶丝座-9_91c74a"
            position: Qt.vector3d(0.0882722, 0.073, 0.169048)
            rotation: Qt.quaternion(0.627284, 0, -0.778791, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________9_91c74a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_3_5086b0
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒侧向三角架1-3_5086b0"
            position: Qt.vector3d(0.274848, 0.094, 0.240433)
            rotation: Qt.quaternion(0.994245, 4.18744e-17, -0.107132, -4.18744e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_3_5086b0_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_3_fe4c6d
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒侧向三角架1-3_fe4c6d"
            position: Qt.vector3d(0.274848, 0.094, 0.240433)
            rotation: Qt.quaternion(0.994245, 4.18744e-17, -0.107132, -4.18744e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_3_fe4c6d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________12_3414e1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-12_3414e1"
            position: Qt.vector3d(0.0757468, 0.0945, 0.156082)
            rotation: Qt.quaternion(0.627284, 6.48474e-17, -0.778791, -5.22319e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________12_3414e1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________12_22db90
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移定位架-12_22db90"
            position: Qt.vector3d(0.0757468, 0.0945, 0.156082)
            rotation: Qt.quaternion(0.627284, 6.48474e-17, -0.778791, -5.22319e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________12_22db90_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6________8
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒平移块-8"
            position: Qt.vector3d(0.101462, 0.094, 0.171924)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6________8_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_12
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-12"
            position: Qt.vector3d(0.0902263, 0.1015, 0.169474)
            rotation: Qt.quaternion(0.582247, 0.401233, -0.401233, -0.582247)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_12_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_______1_c582b6
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底座-1_c582b6"
            position: Qt.vector3d(0.306986, 0.053, 0.139973)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_______1_c582b6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_______1_d4a0e4
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底座-1_d4a0e4"
            position: Qt.vector3d(0.306986, 0.053, 0.139973)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_______1_d4a0e4_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_______1_7ad588
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底座-1_7ad588"
            position: Qt.vector3d(0.306986, 0.053, 0.139973)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_______1_7ad588_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V_____1_0b2491
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒V型支撑架-1_0b2491"
            position: Qt.vector3d(0.258134, 0.214, 0.129322)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V_____1_0b2491_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V_____1_a2fdef
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒V型支撑架-1_a2fdef"
            position: Qt.vector3d(0.258134, 0.214, 0.129322)
            rotation: Qt.quaternion(0.778791, 1.06918e-16, 0.627284, 0)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_____V_____1_a2fdef_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_1_7964b1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒侧向三角架1-1_7964b1"
            position: Qt.vector3d(0.32278, 0.094, 0.0205974)
            rotation: Qt.quaternion(0.994245, 4.18744e-17, -0.107132, -4.18744e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_1_7964b1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_1_06128d
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒侧向三角架1-1_06128d"
            position: Qt.vector3d(0.32278, 0.094, 0.0205974)
            rotation: Qt.quaternion(0.994245, 4.18744e-17, -0.107132, -4.18744e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_1_06128d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底板滑块-1"
            position: Qt.vector3d(0.199143, 0.075, 0.0243451)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________1_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________4
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底板滑块-4"
            position: Qt.vector3d(0.160798, 0.075, 0.200213)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________4_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________3
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底板滑块-3"
            position: Qt.vector3d(0.41483, 0.075, 0.255601)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________3_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________2_1_9e8667
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒侧向三角架2-1_9e8667"
            position: Qt.vector3d(0.283698, 0.094, 0.0120761)
            rotation: Qt.quaternion(0.107132, 4.18744e-17, 0.994245, 4.18744e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________2_1_9e8667_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________2_1_b85301
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒侧向三角架2-1_b85301"
            position: Qt.vector3d(0.283698, 0.094, 0.0120761)
            rotation: Qt.quaternion(0.107132, 4.18744e-17, 0.994245, 4.18744e-17)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________2_1_b85301_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_49a8c6
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒移动底板-1_49a8c6"
            position: Qt.vector3d(0.306986, 0.074, 0.139973)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_49a8c6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_3f4cc6
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒移动底板-1_3f4cc6"
            position: Qt.vector3d(0.306986, 0.074, 0.139973)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_3f4cc6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_30c4f6
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒移动底板-1_30c4f6"
            position: Qt.vector3d(0.306986, 0.074, 0.139973)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6__________1_30c4f6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________2
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光镜筒支撑单元-1/QUEST08-ML-SYS01-Model02-Unity6-蓝镜筒底板滑块-2"
            position: Qt.vector3d(0.453175, 0.075, 0.079733)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6__________1_QUEST08_ML_SYS01_Model02_Unity6_________2_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5_______1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5镜筒连接隔圈-1"
            position: Qt.vector3d(0.587399, 0.214, 0.201113)
            rotation: Qt.quaternion(-1.06918e-16, 0.778791, 0, -0.627284)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5________1_c493ea
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5偏心调节顶丝座-1_c493ea"
            position: Qt.vector3d(0.567844, 0.244423, 0.272023)
            rotation: Qt.quaternion(0.704307, -0.211454, 0.0628578, 0.67475)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5________1_c493ea_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5________1_6f67c8
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5偏心调节顶丝座-1_6f67c8"
            position: Qt.vector3d(0.567844, 0.244423, 0.272023)
            rotation: Qt.quaternion(0.704307, -0.211454, 0.0628578, 0.67475)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5________1_6f67c8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5___1_26975f
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5镜筒-1_26975f"
            position: Qt.vector3d(0.275316, 0.214, 0.133068)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5___1_26975f_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5___1_7ee518
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5镜筒-1_7ee518"
            position: Qt.vector3d(0.275316, 0.214, 0.133068)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5___1_7ee518_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5___1_614b87
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5镜筒-1_614b87"
            position: Qt.vector3d(0.275316, 0.214, 0.133068)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5___1_614b87_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L5___1_bc4648
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L5镜筒-1_bc4648"
            position: Qt.vector3d(0.275316, 0.214, 0.133068)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L5___1_bc4648_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L2_______1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L2镜筒连接隔圈-1"
            position: Qt.vector3d(0.0894961, 0.214, 0.0925526)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L2_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____2_34aaa5
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/QUEST08-ML-SYS01-Model02-Unity4-蓝光L4球面底座-2_34aaa5"
            position: Qt.vector3d(0.238166, 0.260531, 0.0424811)
            rotation: Qt.quaternion(0.698688, 0.255132, 0.108787, -0.659475)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____2_34aaa5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____2_2b9422
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/QUEST08-ML-SYS01-Model02-Unity4-蓝光L4球面底座-2_2b9422"
            position: Qt.vector3d(0.238166, 0.260531, 0.0424811)
            rotation: Qt.quaternion(0.698688, 0.255132, 0.108787, -0.659475)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____2_2b9422_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____3_c604b7
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/QUEST08-ML-SYS01-Model02-Unity4-蓝光L4球面底座-3_c604b7"
            position: Qt.vector3d(0.203828, 0.260531, 0.199968)
            rotation: Qt.quaternion(0.255132, 0.698688, 0.659475, -0.108787)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____3_c604b7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____3_0a29bb
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/QUEST08-ML-SYS01-Model02-Unity4-蓝光L4球面底座-3_0a29bb"
            position: Qt.vector3d(0.203828, 0.260531, 0.199968)
            rotation: Qt.quaternion(0.255132, 0.698688, 0.659475, -0.108787)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____3_0a29bb_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1____L4______1
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/蓝通道L4-图纸自建-1"
            position: Qt.vector3d(0.242545, 0.214, 0.125923)
            rotation: Qt.quaternion(0.00495023, -0.107017, 0.0459413, 0.993183)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1____L4______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4___1_a17430
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室-1_a17430"
            position: Qt.vector3d(0.223928, 0.214, 0.121864)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4___1_a17430_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4___1_94316a
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室-1_94316a"
            position: Qt.vector3d(0.223928, 0.214, 0.121864)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4___1_94316a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4___1_7a741d
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室-1_7a741d"
            position: Qt.vector3d(0.223928, 0.214, 0.121864)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4___1_7a741d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____1_335d8f
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/QUEST08-ML-SYS01-Model02-Unity4-蓝光L4球面底座-1_335d8f"
            position: Qt.vector3d(0.220997, 0.120939, 0.121224)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____1_335d8f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____1_0954c9
            objectName: "QUEST08-ML-SYS01-Model02-Unity4-蓝光L4镜室单元-1/QUEST08-ML-SYS01-Model02-Unity4-蓝光L4球面底座-1_0954c9"
            position: Qt.vector3d(0.220997, 0.120939, 0.121224)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity4___L4_____1_QUEST08_ML_SYS01_Model02_Unity4___L4_____1_0954c9_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L3_______1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L3镜筒连接隔圈-1"
            position: Qt.vector3d(0.12252, 0.214, 0.099753)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L3_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4_______1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒连接隔圈-1"
            position: Qt.vector3d(0.280562, 0.214, 0.134212)
            rotation: Qt.quaternion(-0.443557, -0.443557, 0.550688, -0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____3_093f97
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5球面底座-3_093f97"
            position: Qt.vector3d(0.623401, 0.187213, 0.25645)
            rotation: Qt.quaternion(0.659475, 0.108787, -0.255132, 0.698688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____3_093f97_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____3_ea69ac
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5球面底座-3_ea69ac"
            position: Qt.vector3d(0.623401, 0.187213, 0.25645)
            rotation: Qt.quaternion(0.659475, 0.108787, -0.255132, 0.698688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____3_ea69ac_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____2_0ea06c
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5球面底座-2_0ea06c"
            position: Qt.vector3d(0.643169, 0.187213, 0.165786)
            rotation: Qt.quaternion(-0.108787, -0.659475, 0.698688, -0.255132)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____2_0ea06c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____2_41e76f
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5球面底座-2_41e76f"
            position: Qt.vector3d(0.643169, 0.187213, 0.165786)
            rotation: Qt.quaternion(-0.108787, -0.659475, 0.698688, -0.255132)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____2_41e76f_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1____L5______1
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/蓝通道L5-图纸自建-1"
            position: Qt.vector3d(0.598799, 0.214, 0.203599)
            rotation: Qt.quaternion(0.0757535, -0.0757535, 0.703037, 0.703037)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1____L5______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____1_ccf4c6
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5球面底座-1_ccf4c6"
            position: Qt.vector3d(0.633285, 0.267575, 0.211118)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____1_ccf4c6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____1_46e7c0
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5球面底座-1_46e7c0"
            position: Qt.vector3d(0.633285, 0.267575, 0.211118)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5_____1_46e7c0_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_845b5b
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室-1_845b5b"
            position: Qt.vector3d(0.623492, 0.214, 0.208982)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_845b5b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_78dcd3
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室-1_78dcd3"
            position: Qt.vector3d(0.623492, 0.214, 0.208982)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_78dcd3_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_b910bf
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室-1_b910bf"
            position: Qt.vector3d(0.623492, 0.214, 0.208982)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_b910bf_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_1cc1e8
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室-1_1cc1e8"
            position: Qt.vector3d(0.623492, 0.214, 0.208982)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_1cc1e8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_5c14be
            objectName: "QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室单元-1/QUEST08-ML-SYS01-Model02-Unity5-蓝光L5镜室-1_5c14be"
            position: Qt.vector3d(0.623492, 0.214, 0.208982)
            rotation: Qt.quaternion(0.550688, -0.550688, 0.443557, 0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity5___L5_____1_QUEST08_ML_SYS01_Model02_Unity5___L5___1_5c14be_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_36c958
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_36c958"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_36c958_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_182210
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_182210"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_182210_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_631582
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_631582"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_631582_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_e56649
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_e56649"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_e56649_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_c8c142
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_c8c142"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_c8c142_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_1f1492
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_1f1492"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_1f1492_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_66e415
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_66e415"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_66e415_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_1deb14
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_1deb14"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_1deb14_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_85262d
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_85262d"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_85262d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_31e201
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_31e201"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_31e201_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L4___1_581856
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L4镜筒-1_581856"
            position: Qt.vector3d(0.151856, 0.214, 0.106149)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L4___1_581856_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity6___L123___1
            objectName: "QUEST08-ML-SYS01-Model02-Unity6-蓝光L123镜筒-1"
            position: Qt.vector3d(0.0876397, 0.214, 0.0921478)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity6___L123___1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity2___L2_____1_QUEST08_ML_SYS01_Model02_Unity2___L2___1_44cea9
            objectName: "QUEST08-ML-SYS01-Model02-Unity2-蓝光L2镜室单元-1/QUEST08-ML-SYS01-Model02-Unity2-蓝光L2镜室-1_44cea9"
            position: Qt.vector3d(0.0435941, 0.214, 0.0825444)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity2___L2_____1_QUEST08_ML_SYS01_Model02_Unity2___L2___1_44cea9_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity2___L2_____1_QUEST08_ML_SYS01_Model02_Unity2___L2___1_58fc2e
            objectName: "QUEST08-ML-SYS01-Model02-Unity2-蓝光L2镜室单元-1/QUEST08-ML-SYS01-Model02-Unity2-蓝光L2镜室-1_58fc2e"
            position: Qt.vector3d(0.0435941, 0.214, 0.0825444)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity2___L2_____1_QUEST08_ML_SYS01_Model02_Unity2___L2___1_58fc2e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity2___L2_____1_QUEST08_ML_SYS01_Model02_Unity2___L2___1_955ff8
            objectName: "QUEST08-ML-SYS01-Model02-Unity2-蓝光L2镜室单元-1/QUEST08-ML-SYS01-Model02-Unity2-蓝光L2镜室-1_955ff8"
            position: Qt.vector3d(0.0435941, 0.214, 0.0825444)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity2___L2_____1_QUEST08_ML_SYS01_Model02_Unity2___L2___1_955ff8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity2___L2_____1____L2______1
            objectName: "QUEST08-ML-SYS01-Model02-Unity2-蓝光L2镜室单元-1/蓝通道L2-图纸自建-1"
            position: Qt.vector3d(0.0698175, 0.214, 0.088262)
            rotation: Qt.quaternion(-0.0453003, -0.0970828, -0.420413, 0.900986)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model02_Unity2___L2_____1____L2______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____3_aca50c
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/QUEST08-ML-SYS01-Model02-Unity1-蓝光L1球面底座-3_aca50c"
            position: Qt.vector3d(0.0334794, 0.182576, 0.0246318)
            rotation: Qt.quaternion(0.659475, -0.108787, -0.255132, -0.698688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____3_aca50c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____3_c4c9f7
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/QUEST08-ML-SYS01-Model02-Unity1-蓝光L1球面底座-3_c4c9f7"
            position: Qt.vector3d(0.0334794, 0.182576, 0.0246318)
            rotation: Qt.quaternion(0.659475, -0.108787, -0.255132, -0.698688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____3_c4c9f7_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____2_680bec
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/QUEST08-ML-SYS01-Model02-Unity1-蓝光L1球面底座-2_680bec"
            position: Qt.vector3d(0.0102896, 0.182576, 0.13099)
            rotation: Qt.quaternion(-0.108787, 0.659475, 0.698688, 0.255132)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____2_680bec_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____2_679f6b
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/QUEST08-ML-SYS01-Model02-Unity1-蓝光L1球面底座-2_679f6b"
            position: Qt.vector3d(0.0102896, 0.182576, 0.13099)
            rotation: Qt.quaternion(-0.108787, 0.659475, 0.698688, 0.255132)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____2_679f6b_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1___1_ecb32c
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室-1_ecb32c"
            position: Qt.vector3d(0.00627397, 0.214, 0.0744073)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1___1_ecb32c_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1___1_52c11a
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室-1_52c11a"
            position: Qt.vector3d(0.00627397, 0.214, 0.0744073)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1___1_52c11a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1___1_e2e161
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室-1_e2e161"
            position: Qt.vector3d(0.00627397, 0.214, 0.0744073)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1___1_e2e161_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____1_bab93a
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/QUEST08-ML-SYS01-Model02-Unity1-蓝光L1球面底座-1_bab93a"
            position: Qt.vector3d(0.0218845, 0.276849, 0.0778109)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____1_bab93a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____1_2b3c0f
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/QUEST08-ML-SYS01-Model02-Unity1-蓝光L1球面底座-1_2b3c0f"
            position: Qt.vector3d(0.0218845, 0.276849, 0.0778109)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1_QUEST08_ML_SYS01_Model02_Unity1___L1_____1_2b3c0f_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity1___L1_____1____L1______1
            objectName: "QUEST08-ML-SYS01-Model02-Unity1-蓝光L1镜室单元-1/蓝通道L1-图纸自建-1"
            position: Qt.vector3d(0.0342923, 0.214, 0.0805162)
            rotation: Qt.quaternion(0.0923826, -0.0542463, 0.857364, 0.503438)
            source: "meshes/quest08_ML_SYS01_Model02_Unity1___L1_____1____L1______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____3_b518eb
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/QUEST08-ML-SYS01-Model02-Unity3-蓝光L3球面底座-3_b518eb"
            position: Qt.vector3d(0.109597, 0.17753, 0.0322842)
            rotation: Qt.quaternion(0.659475, -0.108787, -0.255132, -0.698688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____3_b518eb_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____3_89b330
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/QUEST08-ML-SYS01-Model02-Unity3-蓝光L3球面底座-3_89b330"
            position: Qt.vector3d(0.109597, 0.17753, 0.0322842)
            rotation: Qt.quaternion(0.659475, -0.108787, -0.255132, -0.698688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____3_89b330_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____2_a46b5c
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/QUEST08-ML-SYS01-Model02-Unity3-蓝光L3球面底座-2_a46b5c"
            position: Qt.vector3d(0.0826844, 0.17753, 0.155719)
            rotation: Qt.quaternion(-0.108787, 0.659475, 0.698688, 0.255132)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____2_a46b5c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____2_420307
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/QUEST08-ML-SYS01-Model02-Unity3-蓝光L3球面底座-2_420307"
            position: Qt.vector3d(0.0826844, 0.17753, 0.155719)
            rotation: Qt.quaternion(-0.108787, 0.659475, 0.698688, 0.255132)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____2_420307_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3___1_31c2aa
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室-1_31c2aa"
            position: Qt.vector3d(0.099072, 0.214, 0.0946405)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3___1_31c2aa_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3___1_c5df4e
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室-1_c5df4e"
            position: Qt.vector3d(0.099072, 0.214, 0.0946405)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3___1_c5df4e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3___1_99c319
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室-1_99c319"
            position: Qt.vector3d(0.099072, 0.214, 0.0946405)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3___1_99c319_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____1_0cd9b7
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/QUEST08-ML-SYS01-Model02-Unity3-蓝光L3球面底座-1_0cd9b7"
            position: Qt.vector3d(0.0961409, 0.286939, 0.0940014)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____1_0cd9b7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____1_92e053
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/QUEST08-ML-SYS01-Model02-Unity3-蓝光L3球面底座-1_92e053"
            position: Qt.vector3d(0.0961409, 0.286939, 0.0940014)
            rotation: Qt.quaternion(0.550688, 0.550688, 0.443557, -0.443557)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1_QUEST08_ML_SYS01_Model02_Unity3___L3_____1_92e053_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model02_Unity3___L3_____1____L3______1
            objectName: "QUEST08-ML-SYS01-Model02-Unity3-蓝光L3镜室单元-1/蓝通道L3-图纸自建-1"
            position: Qt.vector3d(0.108251, 0.214, 0.0966419)
            rotation: Qt.quaternion(0.0077508, -0.106851, 0.071932, 0.991639)
            source: "meshes/quest08_ML_SYS01_Model02_Unity3___L3_____1____L3______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5____________3
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒基准传递组件-3"
            position: Qt.vector3d(-0.408948, 0.214, -0.2357)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5____________3_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5____________2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒基准传递组件-2"
            position: Qt.vector3d(-0.408948, 0.131121, -0.09215)
            rotation: Qt.quaternion(0.183013, 0.683013, 0.683013, -0.183013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5____________2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L2_34______________3_0fa0fa
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L2-34镜筒偏心调节板（可拆工装）-3_0fa0fa"
            position: Qt.vector3d(-0.290796, 0.233449, -0.0297015)
            rotation: Qt.quaternion(0.0616285, 0.704416, 0.704416, -0.0616285)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L2_34______________3_0fa0fa_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L2_34______________3_ba17ed
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L2-34镜筒偏心调节板（可拆工装）-3_ba17ed"
            position: Qt.vector3d(-0.290796, 0.233449, -0.0297015)
            rotation: Qt.quaternion(0.0616285, 0.704416, 0.704416, -0.0616285)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L2_34______________3_ba17ed_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L2_34______________2_bcf2a5
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L2-34镜筒偏心调节板（可拆工装）-2_bcf2a5"
            position: Qt.vector3d(-0.290796, 0.324298, -0.159449)
            rotation: Qt.quaternion(0.541675, 0.45452, 0.45452, -0.541675)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L2_34______________2_bcf2a5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L2_34______________2_d27316
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L2-34镜筒偏心调节板（可拆工装）-2_d27316"
            position: Qt.vector3d(-0.290796, 0.324298, -0.159449)
            rotation: Qt.quaternion(0.541675, 0.45452, 0.45452, -0.541675)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L2_34______________2_d27316_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L2_34______________4_a07625
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L2-34镜筒偏心调节板（可拆工装）-4_a07625"
            position: Qt.vector3d(-0.290796, 0.103702, -0.120551)
            rotation: Qt.quaternion(-0.45452, 0.541675, 0.541675, 0.45452)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L2_34______________4_a07625_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L2_34______________4_70b333
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L2-34镜筒偏心调节板（可拆工装）-4_70b333"
            position: Qt.vector3d(-0.290796, 0.103702, -0.120551)
            rotation: Qt.quaternion(-0.45452, 0.541675, 0.541675, 0.45452)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L2_34______________4_70b333_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_046ae2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒移动底板-1_046ae2"
            position: Qt.vector3d(-0.298546, 0.079, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_046ae2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_d5e3fc
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒移动底板-1_d5e3fc"
            position: Qt.vector3d(-0.298546, 0.079, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_d5e3fc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_00ec3f
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒移动底板-1_00ec3f"
            position: Qt.vector3d(-0.298546, 0.079, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_00ec3f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V__________1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒V型支撑架万向球顶盖-1"
            position: Qt.vector3d(-0.315546, 0.139754, -0.0657538)
            rotation: Qt.quaternion(6.01229e-17, 9.52659e-17, 0.92388, 0.382683)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V__________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________4_4ebf9b
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座地脚-4_4ebf9b"
            position: Qt.vector3d(-0.334556, 3.72529e-09, -0.368067)
            rotation: Qt.quaternion(-0.172792, 9.63955e-17, 0.984958, 1.68271e-18)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________4_4ebf9b_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________4_b32bd3
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座地脚-4_b32bd3"
            position: Qt.vector3d(-0.334556, 3.72529e-09, -0.368067)
            rotation: Qt.quaternion(-0.172792, 9.63955e-17, 0.984958, 1.68271e-18)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________4_b32bd3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_638945
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度锁紧压圈-4_638945"
            position: Qt.vector3d(-0.394546, 0.02, -0.24)
            rotation: Qt.quaternion(0.689426, 9.82405e-20, -0.724356, 3.97627e-18)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_638945_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_3b31e5
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度锁紧压圈-4_3b31e5"
            position: Qt.vector3d(-0.394546, 0.02, -0.24)
            rotation: Qt.quaternion(0.689426, 9.82405e-20, -0.724356, 3.97627e-18)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_3b31e5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_330b8e
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度调节旋钮-4_330b8e"
            position: Qt.vector3d(-0.394546, 0.055, -0.24)
            rotation: Qt.quaternion(-1.23217e-16, 0.852238, -2.94817e-17, -0.523154)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_330b8e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_130c39
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度调节旋钮-4_130c39"
            position: Qt.vector3d(-0.394546, 0.055, -0.24)
            rotation: Qt.quaternion(-1.23217e-16, 0.852238, -2.94817e-17, -0.523154)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_130c39_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_29910f
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度调节旋钮-4_29910f"
            position: Qt.vector3d(-0.394546, 0.055, -0.24)
            rotation: Qt.quaternion(-1.23217e-16, 0.852238, -2.94817e-17, -0.523154)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________4_29910f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5______________8_afa1f1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-柔性-8_afa1f1"
            position: Qt.vector3d(-0.288546, 0.0995, -0.2775)
            rotation: Qt.quaternion(5.21185e-18, -4.30211e-16, 1, 8.75485e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5______________8_afa1f1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5______________8_aedbc3
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-柔性-8_aedbc3"
            position: Qt.vector3d(-0.288546, 0.0995, -0.2775)
            rotation: Qt.quaternion(5.21185e-18, -4.30211e-16, 1, 8.75485e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5______________8_aedbc3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_9
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-9"
            position: Qt.vector3d(-0.298546, 0.1055, -0.2605)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_9_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________9_380ce6
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-9_380ce6"
            position: Qt.vector3d(-0.298546, 0.078, -0.2625)
            rotation: Qt.quaternion(5.21185e-18, -4.25097e-16, 1, 8.57939e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________9_380ce6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________9_b8e23f
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-9_b8e23f"
            position: Qt.vector3d(-0.298546, 0.078, -0.2625)
            rotation: Qt.quaternion(5.21185e-18, -4.25097e-16, 1, 8.57939e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________9_b8e23f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________9_90ac48
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-9_90ac48"
            position: Qt.vector3d(-0.298546, 0.078, -0.2625)
            rotation: Qt.quaternion(5.21185e-18, -4.25097e-16, 1, 8.57939e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________9_90ac48_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________4
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底板滑块-4"
            position: Qt.vector3d(-0.228546, 0.078, -0.065)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________4_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________3
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底板滑块-3"
            position: Qt.vector3d(-0.228546, 0.078, -0.215)
            rotation: Qt.quaternion(0.561324, -0.561324, -0.430018, -0.430018)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________3_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________2_05f9d9
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座地脚-2_05f9d9"
            position: Qt.vector3d(-0.334556, 3.72529e-09, -0.168067)
            rotation: Qt.quaternion(-0.172792, 9.63955e-17, 0.984958, 1.68271e-18)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________2_05f9d9_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________2_c2a998
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座地脚-2_c2a998"
            position: Qt.vector3d(-0.334556, 3.72529e-09, -0.168067)
            rotation: Qt.quaternion(-0.172792, 9.63955e-17, 0.984958, 1.68271e-18)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________2_c2a998_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底板滑块-1"
            position: Qt.vector3d(-0.368546, 0.078, -0.065)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_63c82e
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度调节旋钮-2_63c82e"
            position: Qt.vector3d(-0.394546, 0.055, -0.04)
            rotation: Qt.quaternion(-1.23217e-16, 0.852238, -2.94817e-17, -0.523154)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_63c82e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_12f2f3
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度调节旋钮-2_12f2f3"
            position: Qt.vector3d(-0.394546, 0.055, -0.04)
            rotation: Qt.quaternion(-1.23217e-16, 0.852238, -2.94817e-17, -0.523154)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_12f2f3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_ba8a30
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度调节旋钮-2_ba8a30"
            position: Qt.vector3d(-0.394546, 0.055, -0.04)
            rotation: Qt.quaternion(-1.23217e-16, 0.852238, -2.94817e-17, -0.523154)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_ba8a30_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_9a5082
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度锁紧压圈-2_9a5082"
            position: Qt.vector3d(-0.394546, 0.02, -0.04)
            rotation: Qt.quaternion(0.689426, 9.82405e-20, -0.724356, 3.97627e-18)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_9a5082_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_e34217
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度锁紧压圈-2_e34217"
            position: Qt.vector3d(-0.394546, 0.02, -0.04)
            rotation: Qt.quaternion(0.689426, 9.82405e-20, -0.724356, 3.97627e-18)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________2_e34217_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底板滑块-2"
            position: Qt.vector3d(-0.368546, 0.078, -0.215)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________2_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_70292e
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座地脚-1_70292e"
            position: Qt.vector3d(-0.296249, 3.72529e-09, -0.2468)
            rotation: Qt.quaternion(0.681732, -6.00184e-17, -0.731602, 1.21836e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_70292e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_f1efa9
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座地脚-1_f1efa9"
            position: Qt.vector3d(-0.296249, 3.72529e-09, -0.2468)
            rotation: Qt.quaternion(0.681732, -6.00184e-17, -0.731602, 1.21836e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5__________1_f1efa9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_4c3f10
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度锁紧压圈-1_4c3f10"
            position: Qt.vector3d(-0.203546, 0.02, -0.14)
            rotation: Qt.quaternion(0.767055, 1.13934e-18, -0.641582, -1.2791e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_4c3f10_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_a30a2b
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度锁紧压圈-1_a30a2b"
            position: Qt.vector3d(-0.203546, 0.02, -0.14)
            rotation: Qt.quaternion(0.767055, 1.13934e-18, -0.641582, -1.2791e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_a30a2b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_62bbf4
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度调节旋钮-1_62bbf4"
            position: Qt.vector3d(-0.203546, 0.055, -0.14)
            rotation: Qt.quaternion(7.13958e-18, 0.773517, 3.71978e-17, 0.633776)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_62bbf4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_77b9dc
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度调节旋钮-1_77b9dc"
            position: Qt.vector3d(-0.203546, 0.055, -0.14)
            rotation: Qt.quaternion(7.13958e-18, 0.773517, 3.71978e-17, 0.633776)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_77b9dc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_41fb89
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直底座高度调节旋钮-1_41fb89"
            position: Qt.vector3d(-0.203546, 0.055, -0.14)
            rotation: Qt.quaternion(7.13958e-18, 0.773517, 3.71978e-17, 0.633776)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5____________1_41fb89_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_7
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-7"
            position: Qt.vector3d(-0.414046, 0.1055, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_7_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________7_76920e
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-7_76920e"
            position: Qt.vector3d(-0.416046, 0.078, -0.14)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________7_76920e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________7_dfd74c
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-7_dfd74c"
            position: Qt.vector3d(-0.416046, 0.078, -0.14)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________7_dfd74c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________7_82683d
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-7_82683d"
            position: Qt.vector3d(-0.416046, 0.078, -0.14)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________7_82683d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5______________7_5fba8a
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-柔性-7_5fba8a"
            position: Qt.vector3d(-0.431046, 0.0995, -0.15)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5______________7_5fba8a_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5______________7_977dc0
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-柔性-7_977dc0"
            position: Qt.vector3d(-0.431046, 0.0995, -0.15)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5______________7_977dc0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________7
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移块-7"
            position: Qt.vector3d(-0.402546, 0.099, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________7_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-2"
            position: Qt.vector3d(-0.241046, 0.1065, -0.0195)
            rotation: Qt.quaternion(0.70306, 0.0755448, 0.0755449, 0.70306)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_2_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_e2a7de
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-2_e2a7de"
            position: Qt.vector3d(-0.241046, 0.078, -0.0175)
            rotation: Qt.quaternion(1, 9.71445e-17, -5.21185e-18, -4.24425e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_e2a7de_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_b0abfc
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-2_b0abfc"
            position: Qt.vector3d(-0.241046, 0.078, -0.0175)
            rotation: Qt.quaternion(1, 9.71445e-17, -5.21185e-18, -4.24425e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_b0abfc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_358ed2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-2_358ed2"
            position: Qt.vector3d(-0.241046, 0.078, -0.0175)
            rotation: Qt.quaternion(1, 9.71445e-17, -5.21185e-18, -4.24425e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_358ed2_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-1"
            position: Qt.vector3d(-0.183046, 0.1065, -0.2025)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_a7bcfa
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-1_a7bcfa"
            position: Qt.vector3d(-0.166046, 0.0995, -0.1925)
            rotation: Qt.quaternion(0.707107, 1.37383e-16, 0.707107, -1.96262e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_a7bcfa_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_bd81c9
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-1_bd81c9"
            position: Qt.vector3d(-0.166046, 0.0995, -0.1925)
            rotation: Qt.quaternion(0.707107, 1.37383e-16, 0.707107, -1.96262e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_bd81c9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_908dcf
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-1_908dcf"
            position: Qt.vector3d(-0.166046, 0.078, -0.2025)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_908dcf_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_cf6feb
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-1_cf6feb"
            position: Qt.vector3d(-0.166046, 0.078, -0.2025)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_cf6feb_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_7973f2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-1_7973f2"
            position: Qt.vector3d(-0.166046, 0.078, -0.2025)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________1_7973f2_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_34f0ee
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-2_34f0ee"
            position: Qt.vector3d(-0.251046, 0.0995, -0.0025)
            rotation: Qt.quaternion(1, 9.71445e-17, -5.21185e-18, -4.24425e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_34f0ee_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_2a0e59
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-2_2a0e59"
            position: Qt.vector3d(-0.251046, 0.0995, -0.0025)
            rotation: Qt.quaternion(1, 9.71445e-17, -5.21185e-18, -4.24425e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________2_2a0e59_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移块-2"
            position: Qt.vector3d(-0.241046, 0.099, -0.031)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.14072e-16, -4.29376e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移块-1"
            position: Qt.vector3d(-0.194546, 0.099, -0.2025)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5________1_40bbc2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座-1_40bbc2"
            position: Qt.vector3d(-0.298546, 0.058, -0.14)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5________1_40bbc2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5________1_262f89
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座-1_262f89"
            position: Qt.vector3d(-0.298546, 0.058, -0.14)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5________1_262f89_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5________1_072c8c
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座-1_072c8c"
            position: Qt.vector3d(-0.298546, 0.058, -0.14)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5________1_072c8c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5________1_178e69
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒底座-1_178e69"
            position: Qt.vector3d(-0.298546, 0.058, -0.14)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5________1_178e69_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________8
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移块-8"
            position: Qt.vector3d(-0.356046, 0.099, -0.031)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.14072e-16, -4.29376e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________8_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_7bbc09
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-8_7bbc09"
            position: Qt.vector3d(-0.356046, 0.078, -0.0025)
            rotation: Qt.quaternion(5.21185e-18, -9.03894e-18, 1, 5.91004e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_7bbc09_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_246ecf
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-8_246ecf"
            position: Qt.vector3d(-0.356046, 0.078, -0.0025)
            rotation: Qt.quaternion(5.21185e-18, -9.03894e-18, 1, 5.91004e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_246ecf_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_0a0e34
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-8_0a0e34"
            position: Qt.vector3d(-0.356046, 0.078, -0.0025)
            rotation: Qt.quaternion(5.21185e-18, -9.03894e-18, 1, 5.91004e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_0a0e34_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_9b2f56
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-8_9b2f56"
            position: Qt.vector3d(-0.366046, 0.0995, -0.0025)
            rotation: Qt.quaternion(1, 9.71445e-17, -5.21185e-18, -4.24425e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_9b2f56_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_a85313
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-8_a85313"
            position: Qt.vector3d(-0.366046, 0.0995, -0.0025)
            rotation: Qt.quaternion(1, 9.71445e-17, -5.21185e-18, -4.24425e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________8_a85313_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_8
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-8"
            position: Qt.vector3d(-0.356046, 0.1065, -0.0195)
            rotation: Qt.quaternion(0.0755449, 0.70306, 0.70306, 0.0755448)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_8_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_ec090c
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-4_ec090c"
            position: Qt.vector3d(-0.166046, 0.0995, -0.0675)
            rotation: Qt.quaternion(0.707107, 1.57009e-16, 0.707107, -9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_ec090c_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_f7d886
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移定位架-4_f7d886"
            position: Qt.vector3d(-0.166046, 0.0995, -0.0675)
            rotation: Qt.quaternion(0.707107, 1.57009e-16, 0.707107, -9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_f7d886_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________4
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移块-4"
            position: Qt.vector3d(-0.194546, 0.099, -0.0775)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_________4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_4
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-4"
            position: Qt.vector3d(-0.183046, 0.1065, -0.0775)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_Rolling_bearings_S719_4_GB_292_94_4_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V________1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒V型支撑架万向球-1"
            position: Qt.vector3d(-0.315546, 0.139754, -0.0657538)
            rotation: Qt.quaternion(-0.350107, 0.845232, 0.373009, 0.154505)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V_____1_aa7556
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒V型支撑架-1_aa7556"
            position: Qt.vector3d(-0.309546, 0.1565, -0.14)
            rotation: Qt.quaternion(0.707107, 1.96262e-16, 0.707107, -3.92523e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V_____1_aa7556_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V_____1_a261e2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒V型支撑架-1_a261e2"
            position: Qt.vector3d(-0.309546, 0.1565, -0.14)
            rotation: Qt.quaternion(0.707107, 1.96262e-16, 0.707107, -3.92523e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V_____1_a261e2_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V________2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒V型支撑架万向球-2"
            position: Qt.vector3d(-0.315546, 0.139754, -0.214246)
            rotation: Qt.quaternion(0.350107, 0.845232, 0.373009, -0.154505)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V__________2
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒V型支撑架万向球顶盖-2"
            position: Qt.vector3d(-0.315546, 0.139754, -0.214246)
            rotation: Qt.quaternion(0.92388, -0.382683, -5.20786e-17, -1.41741e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5_____V__________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_67c3f4
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-4_67c3f4"
            position: Qt.vector3d(-0.181046, 0.078, -0.0775)
            rotation: Qt.quaternion(0.707107, 1.57009e-16, 0.707107, -9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_67c3f4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_4b778e
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-4_4b778e"
            position: Qt.vector3d(-0.181046, 0.078, -0.0775)
            rotation: Qt.quaternion(0.707107, 1.57009e-16, 0.707107, -9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_4b778e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_88578d
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒支撑单元-1/QUEST08-ML-SYS01-Model03-Unity5-准直镜筒平移顶丝座-4_88578d"
            position: Qt.vector3d(-0.181046, 0.078, -0.0775)
            rotation: Qt.quaternion(0.707107, 1.57009e-16, 0.707107, -9.53407e-33)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5__________1_QUEST08_ML_SYS01_Model03_Unity5___________4_88578d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________4
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门加强筋-4"
            position: Qt.vector3d(-0.483502, 0.331, -0.2185)
            rotation: Qt.quaternion(0.707107, 0.707107, 3.77994e-16, 3.87148e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________4_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_______2
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门板-2"
            position: Qt.vector3d(-0.457252, 0.221, -0.2185)
            rotation: Qt.quaternion(6.47346e-18, -2.91986e-16, 1, 2.47351e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_______2_mesh.mesh"
            materials: [
                sandblastedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________2
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门控制壳体-2"
            position: Qt.vector3d(-0.412046, 0.344, -0.2145)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________2_mesh.mesh"
            materials: [
                pink_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________4
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门尼龙轴衬-4"
            position: Qt.vector3d(-0.421502, 0.08, -0.2145)
            rotation: Qt.quaternion(0.707107, 3.0246e-16, -0.707107, 2.6748e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________4_mesh.mesh"
            materials: [
                lightgreyhighglossplastic_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_______21920
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门轴-2"
            position: Qt.vector3d(-0.421502, 0.089, -0.2145)
            rotation: Qt.quaternion(0.707107, 9.02221e-18, 0.707107, 4.21953e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_______2_mesh1921.mesh"
            materials: [
                whitesolid_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________2_af39df
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门大齿轮连轴块-2_af39df"
            position: Qt.vector3d(-0.421502, 0.344, -0.2145)
            rotation: Qt.quaternion(0.999576, -2.98023e-08, 0.029129, 2.98023e-08)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________2_af39df_mesh.mesh"
            materials: [
                polishedsteel_material1215
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________2_df72dc
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门大齿轮连轴块-2_df72dc"
            position: Qt.vector3d(-0.421502, 0.344, -0.2145)
            rotation: Qt.quaternion(0.999576, -2.98023e-08, 0.029129, 2.98023e-08)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________2_df72dc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_____________2
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门小齿轮电机轴套-2"
            position: Qt.vector3d(-0.396046, 0.349, -0.239956)
            rotation: Qt.quaternion(0.63463, 0.63463, -0.311842, 0.311842)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_____________2_mesh.mesh"
            materials: [
                polishedsteel_material1215
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_e2d6db
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-2/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_e2d6db"
            position: Qt.vector3d(0.084, 0.453956, 0.256046)
            rotation: Qt.quaternion(2.98023e-08, 2.98023e-08, -0.322788, 0.946471)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_e2d6db_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_6ca9f2
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-2/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_6ca9f2"
            position: Qt.vector3d(0.084, 0.453956, 0.256046)
            rotation: Qt.quaternion(2.98023e-08, 2.98023e-08, -0.322788, 0.946471)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_6ca9f2_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_b7aa68
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-2/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_b7aa68"
            position: Qt.vector3d(0.084, 0.453956, 0.256046)
            rotation: Qt.quaternion(2.98023e-08, 2.98023e-08, -0.322788, 0.946471)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_b7aa68_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_a457b5
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-2/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_a457b5"
            position: Qt.vector3d(0.084, 0.453956, 0.256046)
            rotation: Qt.quaternion(2.98023e-08, 2.98023e-08, -0.322788, 0.946471)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_a457b5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_ff47c5
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-2/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_ff47c5"
            position: Qt.vector3d(0.084, 0.453956, 0.256046)
            rotation: Qt.quaternion(2.98023e-08, 2.98023e-08, -0.322788, 0.946471)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_ff47c5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_dd0011
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-2/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_dd0011"
            position: Qt.vector3d(0.084, 0.453956, 0.256046)
            rotation: Qt.quaternion(2.98023e-08, 2.98023e-08, -0.322788, 0.946471)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_2_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_dd0011_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_a0ac8d
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-2/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_a0ac8d"
            position: Qt.vector3d(0.0736, 0.4285, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.20633e-16, -4.55313e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_a0ac8d_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_d2daf5
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-2/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_d2daf5"
            position: Qt.vector3d(0.0736, 0.4285, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.20633e-16, -4.55313e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_d2daf5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_61318e
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-2/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_61318e"
            position: Qt.vector3d(0.0736, 0.4285, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.20633e-16, -4.55313e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_61318e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_654c25
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-2/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_654c25"
            position: Qt.vector3d(0.0736, 0.4285, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.20633e-16, -4.55313e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_654c25_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_5356c7
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-2/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_5356c7"
            position: Qt.vector3d(0.0736, 0.4285, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.20633e-16, -4.55313e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_5356c7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_48ce92
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-2/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_48ce92"
            position: Qt.vector3d(0.0736, 0.4285, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.20633e-16, -4.55313e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_48ce92_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_3632ae
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-2/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_3632ae"
            position: Qt.vector3d(0.0736, 0.4285, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.20633e-16, -4.55313e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_3632ae_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_68e76b
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-2/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_68e76b"
            position: Qt.vector3d(0.0736, 0.4285, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.20633e-16, -4.55313e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_2_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_68e76b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________3
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门加强筋-3"
            position: Qt.vector3d(-0.448502, 0.331, -0.2185)
            rotation: Qt.quaternion(0.707107, 0.707107, 3.77994e-16, 3.87148e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________3_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________2
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门右侧支撑立柱-2"
            position: Qt.vector3d(-0.411046, 0.078, -0.2565)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material1961
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________3
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门尼龙轴衬-3"
            position: Qt.vector3d(-0.421502, 0.342, -0.2145)
            rotation: Qt.quaternion(1.17976e-16, 0.833138, 3.67299e-16, -0.553066)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________3_mesh.mesh"
            materials: [
                lightgreyhighglossplastic_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1______________YC28233_05__5_2
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/哈特曼门步进电机-航宇九天YC28233-05-φ5-2"
            position: Qt.vector3d(-0.397568, 0.2995, -0.251797)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1______________YC28233_05__5_2_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________2
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门加强筋-2"
            position: Qt.vector3d(-0.483502, 0.111, -0.0615)
            rotation: Qt.quaternion(0.707107, -0.707107, -5.44158e-16, 3.77994e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6___________2_2ea448
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门控制限位块-2_2ea448"
            position: Qt.vector3d(-0.421502, 0.3686, -0.2145)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6___________2_2ea448_mesh.mesh"
            materials: [
                sandblastedbrass_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6___________2_68cf3d
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门控制限位块-2_68cf3d"
            position: Qt.vector3d(-0.421502, 0.3686, -0.2145)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6___________2_68cf3d_mesh.mesh"
            materials: [
                defaultplastic_material1973
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________1
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门控制壳体-1"
            position: Qt.vector3d(-0.412046, 0.344, -0.0655)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________1_mesh.mesh"
            materials: [
                pink_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6___________1_8caed4
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门控制限位块-1_8caed4"
            position: Qt.vector3d(-0.421502, 0.3686, -0.0655)
            rotation: Qt.quaternion(-4.97178e-16, -6.63342e-16, 0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6___________1_8caed4_mesh.mesh"
            materials: [
                sandblastedbrass_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6___________1_a86a9b
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门控制限位块-1_a86a9b"
            position: Qt.vector3d(-0.421502, 0.3686, -0.0655)
            rotation: Qt.quaternion(-4.97178e-16, -6.63342e-16, 0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6___________1_a86a9b_mesh.mesh"
            materials: [
                defaultplastic_material1973
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________1
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门左侧支撑立柱-1"
            position: Qt.vector3d(-0.411046, 0.078, -0.0235)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material1961
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_____________1
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门小齿轮电机轴套-1"
            position: Qt.vector3d(-0.396046, 0.335, -0.0400442)
            rotation: Qt.quaternion(0.63463, -0.63463, 0.311842, 0.311842)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_____________1_mesh.mesh"
            materials: [
                polishedsteel_material1215
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________1
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门加强筋-1"
            position: Qt.vector3d(-0.448502, 0.111, -0.0615)
            rotation: Qt.quaternion(0.707107, -0.707107, -5.44158e-16, 3.77994e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________1_67953a
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门顶部基板-1_67953a"
            position: Qt.vector3d(-0.406046, 0.334, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________1_67953a_mesh.mesh"
            materials: [
                polishedcarbonsteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________1_7efdcd
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门顶部基板-1_7efdcd"
            position: Qt.vector3d(-0.406046, 0.334, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________1_7efdcd_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________1_3c86a1
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门顶部基板-1_3c86a1"
            position: Qt.vector3d(-0.406046, 0.334, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________1_3c86a1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________11993
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门尼龙轴衬-1"
            position: Qt.vector3d(-0.421502, 0.342, -0.0655)
            rotation: Qt.quaternion(-2.1541e-16, 0.833138, 3.29528e-16, 0.553066)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________1_mesh1994.mesh"
            materials: [
                lightgreyhighglossplastic_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_______1
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门板-1"
            position: Qt.vector3d(-0.457252, 0.221, -0.0605)
            rotation: Qt.quaternion(6.47346e-18, -2.91986e-16, 1, 2.47351e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_______1_mesh.mesh"
            materials: [
                sandblastedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________21997
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门尼龙轴衬-2"
            position: Qt.vector3d(-0.421502, 0.08, -0.0655)
            rotation: Qt.quaternion(0.707107, -1.1047e-16, 0.707107, 3.0246e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6__________2_mesh1998.mesh"
            materials: [
                lightgreyhighglossplastic_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_______11999
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门轴-1"
            position: Qt.vector3d(-0.421502, 0.089, -0.0655)
            rotation: Qt.quaternion(0.707107, 1.82968e-16, -0.707107, 3.86972e-16)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_______1_mesh2000.mesh"
            materials: [
                whitesolid_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_e57304
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_e57304"
            position: Qt.vector3d(0.0736, 0.2795, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -6.94291e-17, -9.6735e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_e57304_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_f35a04
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_f35a04"
            position: Qt.vector3d(0.0736, 0.2795, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -6.94291e-17, -9.6735e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_f35a04_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_45841f
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_45841f"
            position: Qt.vector3d(0.0736, 0.2795, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -6.94291e-17, -9.6735e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_45841f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_c6ae75
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_c6ae75"
            position: Qt.vector3d(0.0736, 0.2795, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -6.94291e-17, -9.6735e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_c6ae75_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_10df87
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_10df87"
            position: Qt.vector3d(0.0736, 0.2795, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -6.94291e-17, -9.6735e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_10df87_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_831700
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_831700"
            position: Qt.vector3d(0.0736, 0.2795, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -6.94291e-17, -9.6735e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_831700_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_4075bb
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_4075bb"
            position: Qt.vector3d(0.0736, 0.2795, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -6.94291e-17, -9.6735e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_4075bb_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_e2827b
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1/Spur Gear_直齿轮・斜齿轮_GEAS1.0-52-10-B-12_MISUMI-1_e2827b"
            position: Qt.vector3d(0.0736, 0.2795, 0.281502)
            rotation: Qt.quaternion(0.707107, -0.707107, -6.94291e-17, -9.6735e-17)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEAS1_0_52_10_B_12_MISUMI_1_Spur_Gear_________GEAS1_0_52_10_B_12_MISUMI_1_e2827b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1______________YC28233_05__5_1
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/哈特曼门步进电机-航宇九天YC28233-05-φ5-1"
            position: Qt.vector3d(-0.397568, 0.2995, -0.051885)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1______________YC28233_05__5_1_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_75f1ca
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_75f1ca"
            position: Qt.vector3d(0.084, 0.254044, 0.256046)
            rotation: Qt.quaternion(-2.98023e-08, -2.98023e-08, 0.946471, -0.322788)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_75f1ca_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_3d65ff
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_3d65ff"
            position: Qt.vector3d(0.084, 0.254044, 0.256046)
            rotation: Qt.quaternion(-2.98023e-08, -2.98023e-08, 0.946471, -0.322788)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_3d65ff_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_55d20b
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_55d20b"
            position: Qt.vector3d(0.084, 0.254044, 0.256046)
            rotation: Qt.quaternion(-2.98023e-08, -2.98023e-08, 0.946471, -0.322788)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_55d20b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_aab26b
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_aab26b"
            position: Qt.vector3d(0.084, 0.254044, 0.256046)
            rotation: Qt.quaternion(-2.98023e-08, -2.98023e-08, 0.946471, -0.322788)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_aab26b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_93f1a4
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_93f1a4"
            position: Qt.vector3d(0.084, 0.254044, 0.256046)
            rotation: Qt.quaternion(-2.98023e-08, -2.98023e-08, 0.946471, -0.322788)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_93f1a4_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_ccc7af
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1/Spur Gears_直齿轮・斜齿轮_GEFBB1.0-20-12-10-W15-H16_MISUMI-1_ccc7af"
            position: Qt.vector3d(0.084, 0.254044, 0.256046)
            rotation: Qt.quaternion(-2.98023e-08, -2.98023e-08, 0.946471, -0.322788)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_Spur_Gears_________GEFBB1_0_20_12_10_W15_H16_MISUMI_1_ccc7af_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________1_a29cf0
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门大齿轮连轴块-1_a29cf0"
            position: Qt.vector3d(-0.421502, 0.344, -0.0655)
            rotation: Qt.quaternion(0.029129, -2.98023e-08, 0.999576, 2.98023e-08)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________1_a29cf0_mesh.mesh"
            materials: [
                polishedsteel_material1215
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________1_b8a493
            objectName: "QUEST08-ML-SYS01-Model03-Unity6-哈特曼门单元-1/QUEST08-ML-SYS01-Model03-Unity6-哈特曼门大齿轮连轴块-1_b8a493"
            position: Qt.vector3d(-0.421502, 0.344, -0.0655)
            rotation: Qt.quaternion(0.029129, -2.98023e-08, 0.999576, 2.98023e-08)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity6________1_QUEST08_ML_SYS01_Model03_Unity6____________1_b8a493_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5____________1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直上下镜筒连接隔圈-1"
            position: Qt.vector3d(-0.294296, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5____________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L2_______1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L2镜筒连接隔圈-1"
            position: Qt.vector3d(-0.329312, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L2_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L4_______1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L4镜筒连接隔圈-1"
            position: Qt.vector3d(-0.212565, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L4_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____3_c4d5c9
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/QUEST08-ML-SYS01-Model03-Unity3-准直L3球面底座-3_c4d5c9"
            position: Qt.vector3d(-0.282546, 0.251922, -0.0743175)
            rotation: Qt.quaternion(0.683013, -0.183013, -0.183013, -0.683013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____3_c4d5c9_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____3_0a55a1
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/QUEST08-ML-SYS01-Model03-Unity3-准直L3球面底座-3_0a55a1"
            position: Qt.vector3d(-0.282546, 0.251922, -0.0743175)
            rotation: Qt.quaternion(0.683013, -0.183013, -0.183013, -0.683013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____3_0a55a1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____2_a5dc6a
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/QUEST08-ML-SYS01-Model03-Unity3-准直L3球面底座-2_a5dc6a"
            position: Qt.vector3d(-0.282546, 0.251922, -0.205682)
            rotation: Qt.quaternion(-0.183013, 0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____2_a5dc6a_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____2_585014
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/QUEST08-ML-SYS01-Model03-Unity3-准直L3球面底座-2_585014"
            position: Qt.vector3d(-0.282546, 0.251922, -0.205682)
            rotation: Qt.quaternion(-0.183013, 0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____2_585014_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____1_423383
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/QUEST08-ML-SYS01-Model03-Unity3-准直L3球面底座-1_423383"
            position: Qt.vector3d(-0.282546, 0.138156, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____1_423383_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____1_2b0b49
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/QUEST08-ML-SYS01-Model03-Unity3-准直L3球面底座-1_2b0b49"
            position: Qt.vector3d(-0.282546, 0.138156, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3_____1_2b0b49_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_____L3______1
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/准直通道L3-图纸自建-1"
            position: Qt.vector3d(-0.275, 0.214, -0.14)
            rotation: Qt.quaternion(8.44004e-17, 2.96305e-18, -0.47595, 0.879473)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_____L3______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3___1_25777e
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室-1_25777e"
            position: Qt.vector3d(-0.285772, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3___1_25777e_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3___1_5fd93b
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室-1_5fd93b"
            position: Qt.vector3d(-0.285772, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3___1_5fd93b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3___1_7b7573
            objectName: "QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室单元-1/QUEST08-ML-SYS01-Model03-Unity3-准直L3镜室-1_7b7573"
            position: Qt.vector3d(-0.285772, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity3___L3_____1_QUEST08_ML_SYS01_Model03_Unity3___L3___1_7b7573_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____3_88e9cb
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2球面底座-3_88e9cb"
            position: Qt.vector3d(-0.366312, 0.249399, -0.0786878)
            rotation: Qt.quaternion(0.683013, -0.183013, -0.183013, -0.683013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____3_88e9cb_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____3_a94691
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2球面底座-3_a94691"
            position: Qt.vector3d(-0.366312, 0.249399, -0.0786878)
            rotation: Qt.quaternion(0.683013, -0.183013, -0.183013, -0.683013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____3_a94691_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____2_34fad1
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2球面底座-2_34fad1"
            position: Qt.vector3d(-0.366312, 0.249399, -0.201312)
            rotation: Qt.quaternion(-0.183013, 0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____2_34fad1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____2_c21db0
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2球面底座-2_c21db0"
            position: Qt.vector3d(-0.366312, 0.249399, -0.201312)
            rotation: Qt.quaternion(-0.183013, 0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____2_c21db0_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_____L2______1
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/准直通道L2-图纸自建-1"
            position: Qt.vector3d(-0.358766, 0.214, -0.14)
            rotation: Qt.quaternion(8.44004e-17, 2.96305e-18, -0.47595, 0.879473)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_____L2______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____1_65c2e5
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2球面底座-1_65c2e5"
            position: Qt.vector3d(-0.366312, 0.143203, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____1_65c2e5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____1_49bcea
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2球面底座-1_49bcea"
            position: Qt.vector3d(-0.366312, 0.143203, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2_____1_49bcea_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2___1_47e9b8
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室-1_47e9b8"
            position: Qt.vector3d(-0.359289, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2___1_47e9b8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2___1_5e019c
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室-1_5e019c"
            position: Qt.vector3d(-0.359289, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2___1_5e019c_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2___1_2c8193
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室-1_2c8193"
            position: Qt.vector3d(-0.359289, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2___1_2c8193_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2___1_101874
            objectName: "QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室单元-1/QUEST08-ML-SYS01-Model03-Unity2-准直L2镜室-1_101874"
            position: Qt.vector3d(-0.359289, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity2___L2_____1_QUEST08_ML_SYS01_Model03_Unity2___L2___1_101874_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L12___1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L12镜筒-1"
            position: Qt.vector3d(-0.394296, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L12___1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____1_409aa5
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/QUEST08-ML-SYS01-Model03-Unity4-准直L4球面底座-1_409aa5"
            position: Qt.vector3d(-0.249465, 0.138156, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____1_409aa5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____1_b9cc5b
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/QUEST08-ML-SYS01-Model03-Unity4-准直L4球面底座-1_b9cc5b"
            position: Qt.vector3d(-0.249465, 0.138156, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____1_b9cc5b_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4___1_3d1f85
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室-1_3d1f85"
            position: Qt.vector3d(-0.242443, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4___1_3d1f85_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4___1_ccc30e
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室-1_ccc30e"
            position: Qt.vector3d(-0.242443, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4___1_ccc30e_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4___1_cd2475
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室-1_cd2475"
            position: Qt.vector3d(-0.242443, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4___1_cd2475_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_____L4______1
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/准直通道L4-图纸自建-1"
            position: Qt.vector3d(-0.24192, 0.214, -0.14)
            rotation: Qt.quaternion(8.44004e-17, 2.96305e-18, -0.47595, 0.879473)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_____L4______1_mesh.mesh"
            materials: [
                clearglass_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____3_9726b3
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/QUEST08-ML-SYS01-Model03-Unity4-准直L4球面底座-3_9726b3"
            position: Qt.vector3d(-0.249465, 0.251922, -0.0743175)
            rotation: Qt.quaternion(0.683013, -0.183013, -0.183013, -0.683013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____3_9726b3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____3_6e0a3b
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/QUEST08-ML-SYS01-Model03-Unity4-准直L4球面底座-3_6e0a3b"
            position: Qt.vector3d(-0.249465, 0.251922, -0.0743175)
            rotation: Qt.quaternion(0.683013, -0.183013, -0.183013, -0.683013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____3_6e0a3b_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____2_0eed68
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/QUEST08-ML-SYS01-Model03-Unity4-准直L4球面底座-2_0eed68"
            position: Qt.vector3d(-0.249465, 0.251922, -0.205682)
            rotation: Qt.quaternion(-0.183013, 0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____2_0eed68_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____2_d68286
            objectName: "QUEST08-ML-SYS01-Model03-Unity4-准直L4镜室单元-1/QUEST08-ML-SYS01-Model03-Unity4-准直L4球面底座-2_d68286"
            position: Qt.vector3d(-0.249465, 0.251922, -0.205682)
            rotation: Qt.quaternion(-0.183013, 0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity4___L4_____1_QUEST08_ML_SYS01_Model03_Unity4___L4_____2_d68286_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L34___1
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L34镜筒-1"
            position: Qt.vector3d(-0.283546, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L34___1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____3_20925b
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/QUEST08-ML-SYS01-Model03-Unity1-准直L1球面底座-3_20925b"
            position: Qt.vector3d(-0.393295, 0.249399, -0.201312)
            rotation: Qt.quaternion(-0.183013, 0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____3_20925b_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____3_d19ecc
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/QUEST08-ML-SYS01-Model03-Unity1-准直L1球面底座-3_d19ecc"
            position: Qt.vector3d(-0.393295, 0.249399, -0.201312)
            rotation: Qt.quaternion(-0.183013, 0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____3_d19ecc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____4_8eaf5a
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/QUEST08-ML-SYS01-Model03-Unity1-准直L1球面底座-4_8eaf5a"
            position: Qt.vector3d(-0.393295, 0.249399, -0.0786878)
            rotation: Qt.quaternion(0.683013, -0.183013, -0.183013, -0.683013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____4_8eaf5a_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____4_4a6289
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/QUEST08-ML-SYS01-Model03-Unity1-准直L1球面底座-4_4a6289"
            position: Qt.vector3d(-0.393295, 0.249399, -0.0786878)
            rotation: Qt.quaternion(0.683013, -0.183013, -0.183013, -0.683013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____4_4a6289_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_____L1______1
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/准直通道L1-图纸自建-1"
            position: Qt.vector3d(-0.38575, 0.214, -0.14)
            rotation: Qt.quaternion(8.44004e-17, 2.96305e-18, -0.47595, 0.879473)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_____L1______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____1_4648dd
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/QUEST08-ML-SYS01-Model03-Unity1-准直L1球面底座-1_4648dd"
            position: Qt.vector3d(-0.393295, 0.143203, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____1_4648dd_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____1_21bdbc
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/QUEST08-ML-SYS01-Model03-Unity1-准直L1球面底座-1_21bdbc"
            position: Qt.vector3d(-0.393295, 0.143203, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1_____1_21bdbc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1___1_578885
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室-1_578885"
            position: Qt.vector3d(-0.396836, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1___1_578885_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1___1_1dbccd
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室-1_1dbccd"
            position: Qt.vector3d(-0.396836, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1___1_1dbccd_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1___1_9f5a44
            objectName: "QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室单元-1/QUEST08-ML-SYS01-Model03-Unity1-准直L1镜室-1_9f5a44"
            position: Qt.vector3d(-0.396836, 0.214, -0.14)
            rotation: Qt.quaternion(-0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model03_Unity1___L1_____1_QUEST08_ML_SYS01_Model03_Unity1___L1___1_9f5a44_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L2_34______________1_39e22d
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L2-34镜筒偏心调节板（可拆工装）-1_39e22d"
            position: Qt.vector3d(-0.290796, 0.194551, -0.250298)
            rotation: Qt.quaternion(0.704416, -0.0616285, -0.0616285, -0.704416)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L2_34______________1_39e22d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5___L2_34______________1_068858
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直L2-34镜筒偏心调节板（可拆工装）-1_068858"
            position: Qt.vector3d(-0.290796, 0.194551, -0.250298)
            rotation: Qt.quaternion(0.704416, -0.0616285, -0.0616285, -0.704416)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5___L2_34______________1_068858_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model03_Unity5____________12131
            objectName: "QUEST08-ML-SYS01-Model03-Unity5-准直镜筒基准传递组件-1"
            position: Qt.vector3d(-0.408948, 0.296879, -0.09215)
            rotation: Qt.quaternion(0.683013, 0.183013, 0.183013, -0.683013)
            source: "meshes/quest08_ML_SYS01_Model03_Unity5____________1_mesh2132.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123_45________4_143bf4
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123-45镜筒偏心调节板-4_143bf4"
            position: Qt.vector3d(0.529358, 0.214, -0.234)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123_45________4_143bf4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123_45________4_d6e9a9
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123-45镜筒偏心调节板-4_d6e9a9"
            position: Qt.vector3d(0.529358, 0.214, -0.234)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123_45________4_d6e9a9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123_45________2_17fd8c
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123-45镜筒偏心调节板-2_17fd8c"
            position: Qt.vector3d(0.529358, 0.214, -0.046)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123_45________2_17fd8c_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123_45________2_bfd715
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123-45镜筒偏心调节板-2_bfd715"
            position: Qt.vector3d(0.529358, 0.214, -0.046)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123_45________2_bfd715_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123_45________3_0a9dfd
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123-45镜筒偏心调节板-3_0a9dfd"
            position: Qt.vector3d(0.529358, 0.308, -0.14)
            rotation: Qt.quaternion(0.707107, -2.2315e-15, -0.707107, 2.2315e-15)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123_45________3_0a9dfd_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123_45________3_1b0e3b
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123-45镜筒偏心调节板-3_1b0e3b"
            position: Qt.vector3d(0.529358, 0.308, -0.14)
            rotation: Qt.quaternion(0.707107, -2.2315e-15, -0.707107, 2.2315e-15)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123_45________3_1b0e3b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123_45________1_9f8ef1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123-45镜筒偏心调节板-1_9f8ef1"
            position: Qt.vector3d(0.529358, 0.12, -0.14)
            rotation: Qt.quaternion(2.37354e-16, -0.707107, -2.37354e-16, 0.707107)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123_45________1_9f8ef1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123_45________1_69d246
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123-45镜筒偏心调节板-1_69d246"
            position: Qt.vector3d(0.529358, 0.12, -0.14)
            rotation: Qt.quaternion(2.37354e-16, -0.707107, -2.37354e-16, 0.707107)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123_45________1_69d246_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_18
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-18"
            position: Qt.vector3d(0.408858, 0.1055, -0.0875)
            rotation: Qt.quaternion(0.5, -0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_18_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6________15
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移块-15"
            position: Qt.vector3d(0.420358, 0.099, -0.0875)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6________15_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_fb0bda
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-20_fb0bda"
            position: Qt.vector3d(0.391858, 0.0995, -0.0975)
            rotation: Qt.quaternion(0.707107, 8.13587e-17, -0.707107, -1.40237e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_fb0bda_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_9e64aa
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-20_9e64aa"
            position: Qt.vector3d(0.391858, 0.0995, -0.0975)
            rotation: Qt.quaternion(0.707107, 8.13587e-17, -0.707107, -1.40237e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_9e64aa_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V________2
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒V型支撑架万向球-2"
            position: Qt.vector3d(0.553358, 0.151341, -0.202659)
            rotation: Qt.quaternion(0.653282, 0.270598, -0.653281, -0.270598)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_2_ece5c3
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒侧向三角架1-2_ece5c3"
            position: Qt.vector3d(0.527358, 0.099, -0.05)
            rotation: Qt.quaternion(-5.55112e-17, -5.55112e-17, 1, 5.55112e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_2_ece5c3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_2_63ecfc
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒侧向三角架1-2_63ecfc"
            position: Qt.vector3d(0.527358, 0.099, -0.05)
            rotation: Qt.quaternion(-5.55112e-17, -5.55112e-17, 1, 5.55112e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_2_63ecfc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V__________2
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒V型支撑架万向球顶盖-2"
            position: Qt.vector3d(0.553358, 0.151341, -0.202659)
            rotation: Qt.quaternion(0.92388, -0.382683, -4.02219e-18, 1.18504e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V__________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_2_6ac785
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒侧向三角架2-2_6ac785"
            position: Qt.vector3d(0.567358, 0.099, -0.05)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_2_6ac785_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_2_072d1a
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒侧向三角架2-2_072d1a"
            position: Qt.vector3d(0.567358, 0.099, -0.05)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_2_072d1a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_273bc5
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度锁紧压圈-2_273bc5"
            position: Qt.vector3d(0.649358, 0.02, -0.048)
            rotation: Qt.quaternion(0.782016, -5.3359e-17, 0.623258, 8.50321e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_273bc5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_bf7f66
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度锁紧压圈-2_bf7f66"
            position: Qt.vector3d(0.649358, 0.02, -0.048)
            rotation: Qt.quaternion(0.782016, -5.3359e-17, 0.623258, 8.50321e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_bf7f66_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_199af5
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒底座地脚-2_199af5"
            position: Qt.vector3d(0.747934, -5.55112e-17, 0.0534042)
            rotation: Qt.quaternion(0.712089, 5.51223e-19, 0.702089, 1.19126e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_199af5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_52babe
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒底座地脚-2_52babe"
            position: Qt.vector3d(0.747934, -5.55112e-17, 0.0534042)
            rotation: Qt.quaternion(0.712089, 5.51223e-19, 0.702089, 1.19126e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_52babe_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_502bb6
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度调节旋钮-2_502bb6"
            position: Qt.vector3d(0.649358, 0.055, -0.048)
            rotation: Qt.quaternion(-9.50513e-17, 0.99583, 2.64457e-16, 0.0912296)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_502bb6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_b93807
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度调节旋钮-2_b93807"
            position: Qt.vector3d(0.649358, 0.055, -0.048)
            rotation: Qt.quaternion(-9.50513e-17, 0.99583, 2.64457e-16, 0.0912296)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_b93807_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_8176f9
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度调节旋钮-2_8176f9"
            position: Qt.vector3d(0.649358, 0.055, -0.048)
            rotation: Qt.quaternion(-9.50513e-17, 0.99583, 2.64457e-16, 0.0912296)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________2_8176f9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_5093a1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒底座地脚-1_5093a1"
            position: Qt.vector3d(0.523358, -8.32667e-17, -0.04)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_5093a1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_669a08
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒底座地脚-1_669a08"
            position: Qt.vector3d(0.523358, -8.32667e-17, -0.04)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_669a08_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_8c795e
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度调节旋钮-1_8c795e"
            position: Qt.vector3d(0.423358, 0.055, -0.14)
            rotation: Qt.quaternion(9.48843e-17, -0.0833493, -6.49878e-17, 0.99652)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_8c795e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_48f8a8
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度调节旋钮-1_48f8a8"
            position: Qt.vector3d(0.423358, 0.055, -0.14)
            rotation: Qt.quaternion(9.48843e-17, -0.0833493, -6.49878e-17, 0.99652)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_48f8a8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_9037d1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度调节旋钮-1_9037d1"
            position: Qt.vector3d(0.423358, 0.055, -0.14)
            rotation: Qt.quaternion(9.48843e-17, -0.0833493, -6.49878e-17, 0.99652)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_9037d1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_610814
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度锁紧压圈-1_610814"
            position: Qt.vector3d(0.423358, 0.02, -0.14)
            rotation: Qt.quaternion(0.646917, -9.86479e-17, 0.762561, 7.06746e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_610814_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_f6e286
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度锁紧压圈-1_f6e286"
            position: Qt.vector3d(0.423358, 0.02, -0.14)
            rotation: Qt.quaternion(0.646917, -9.86479e-17, 0.762561, 7.06746e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________1_f6e286_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_________4
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒底板滑块-4"
            position: Qt.vector3d(0.629358, 0.08, -0.205)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_________4_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6________1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移块-1"
            position: Qt.vector3d(0.469358, 0.099, -0.239)
            rotation: Qt.quaternion(0.707107, -0.707107, -1.57009e-16, 1.57009e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6________2
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移块-2"
            position: Qt.vector3d(0.420358, 0.099, -0.1925)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_________3
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒底板滑块-3"
            position: Qt.vector3d(0.449358, 0.08, -0.205)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_________3_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_________2
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒底板滑块-2"
            position: Qt.vector3d(0.449358, 0.08, -0.075)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_________2_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_________1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒底板滑块-1"
            position: Qt.vector3d(0.629358, 0.078, -0.075)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_________1_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-1"
            position: Qt.vector3d(0.469358, 0.1055, -0.2505)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_______1_36166e
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒底座-1_36166e"
            position: Qt.vector3d(0.527358, 0.058, -0.14)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_______1_36166e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_______1_93ee24
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒底座-1_93ee24"
            position: Qt.vector3d(0.527358, 0.058, -0.14)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_______1_93ee24_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_______1_8dadaa
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒底座-1_8dadaa"
            position: Qt.vector3d(0.527358, 0.058, -0.14)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_______1_8dadaa_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_8eb9b3
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-1_8eb9b3"
            position: Qt.vector3d(0.469358, 0.078, -0.2525)
            rotation: Qt.quaternion(-5.55112e-17, -4.23375e-18, 1, -1.05736e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_8eb9b3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_3ab852
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-1_3ab852"
            position: Qt.vector3d(0.469358, 0.078, -0.2525)
            rotation: Qt.quaternion(-5.55112e-17, -4.23375e-18, 1, -1.05736e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_3ab852_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_7eb213
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-1_7eb213"
            position: Qt.vector3d(0.469358, 0.078, -0.2525)
            rotation: Qt.quaternion(-5.55112e-17, -4.23375e-18, 1, -1.05736e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_7eb213_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_7b281f
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-1_7b281f"
            position: Qt.vector3d(0.479358, 0.0995, -0.2675)
            rotation: Qt.quaternion(-5.55112e-17, 5.78633e-16, 1, -4.16076e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_7b281f_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_368775
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-1_368775"
            position: Qt.vector3d(0.479358, 0.0995, -0.2675)
            rotation: Qt.quaternion(-5.55112e-17, 5.78633e-16, 1, -4.16076e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_368775_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_1_6f22b9
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒侧向三角架2-1_6f22b9"
            position: Qt.vector3d(0.567358, 0.099, -0.245)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_1_6f22b9_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_1_897bf1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒侧向三角架2-1_897bf1"
            position: Qt.vector3d(0.567358, 0.099, -0.245)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________2_1_897bf1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V________1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒V型支撑架万向球-1"
            position: Qt.vector3d(0.553358, 0.151341, -0.0773408)
            rotation: Qt.quaternion(0.653282, -0.270598, 0.653281, -0.270598)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_d58338
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒移动底板-1_d58338"
            position: Qt.vector3d(0.539358, 0.079, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_d58338_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_01fb07
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒移动底板-1_01fb07"
            position: Qt.vector3d(0.539358, 0.079, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_01fb07_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_b7464f
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒移动底板-1_b7464f"
            position: Qt.vector3d(0.539358, 0.079, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_b7464f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V_____1_ffbd53
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒V型支撑架-1_ffbd53"
            position: Qt.vector3d(0.527358, 0.214, -0.14)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V_____1_ffbd53_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V_____1_db5c1a
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒V型支撑架-1_db5c1a"
            position: Qt.vector3d(0.527358, 0.214, -0.14)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V_____1_db5c1a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V_____1_32e4e7
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒V型支撑架-1_32e4e7"
            position: Qt.vector3d(0.527358, 0.214, -0.14)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V_____1_32e4e7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V__________1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒V型支撑架万向球顶盖-1"
            position: Qt.vector3d(0.553358, 0.151341, -0.0773408)
            rotation: Qt.quaternion(-4.02219e-18, -1.18504e-16, 0.92388, 0.382683)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____V__________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_1_d9caaf
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒侧向三角架1-1_d9caaf"
            position: Qt.vector3d(0.527358, 0.099, -0.215)
            rotation: Qt.quaternion(-5.55112e-17, -5.55112e-17, 1, 5.55112e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_1_d9caaf_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_1_68cdc6
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒侧向三角架1-1_68cdc6"
            position: Qt.vector3d(0.527358, 0.099, -0.215)
            rotation: Qt.quaternion(-5.55112e-17, -5.55112e-17, 1, 5.55112e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________1_1_68cdc6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_19
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-19"
            position: Qt.vector3d(0.609358, 0.1055, -0.2505)
            rotation: Qt.quaternion(-0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_19_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_dac7f0
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-21_dac7f0"
            position: Qt.vector3d(0.609358, 0.078, -0.2675)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_dac7f0_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_6c1397
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-21_6c1397"
            position: Qt.vector3d(0.609358, 0.078, -0.2675)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_6c1397_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_0471ab
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-21_0471ab"
            position: Qt.vector3d(0.609358, 0.078, -0.2675)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_0471ab_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_12715e
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-20_12715e"
            position: Qt.vector3d(0.406858, 0.078, -0.0875)
            rotation: Qt.quaternion(0.707107, 7.85046e-17, -0.707107, -7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_12715e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_d71d4b
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-20_d71d4b"
            position: Qt.vector3d(0.406858, 0.078, -0.0875)
            rotation: Qt.quaternion(0.707107, 7.85046e-17, -0.707107, -7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_d71d4b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_abab84
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-20_abab84"
            position: Qt.vector3d(0.406858, 0.078, -0.0875)
            rotation: Qt.quaternion(0.707107, 7.85046e-17, -0.707107, -7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________20_abab84_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_5bcb54
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-21_5bcb54"
            position: Qt.vector3d(0.619358, 0.0995, -0.2675)
            rotation: Qt.quaternion(-5.55112e-17, -6.99526e-16, 1, -4.16075e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_5bcb54_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_155842
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-21_155842"
            position: Qt.vector3d(0.619358, 0.0995, -0.2675)
            rotation: Qt.quaternion(-5.55112e-17, -6.99526e-16, 1, -4.16075e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________21_155842_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6________16
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移块-16"
            position: Qt.vector3d(0.658358, 0.099, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6________16_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_21
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-21"
            position: Qt.vector3d(0.669858, 0.1055, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_21_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____________2_5b59e4
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-柔性-2_5b59e4"
            position: Qt.vector3d(0.686858, 0.0995, -0.13)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____________2_5b59e4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____________2_5d3e98
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-柔性-2_5d3e98"
            position: Qt.vector3d(0.686858, 0.0995, -0.13)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____________2_5d3e98_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________23_6adfd4
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-23_6adfd4"
            position: Qt.vector3d(0.686858, 0.078, -0.14)
            rotation: Qt.quaternion(0.707107, 7.4928e-17, -0.707107, -5.09723e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________23_6adfd4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________23_0c0ff3
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-23_0c0ff3"
            position: Qt.vector3d(0.686858, 0.078, -0.14)
            rotation: Qt.quaternion(0.707107, 7.4928e-17, -0.707107, -5.09723e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________23_0c0ff3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________23_115e6d
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-23_115e6d"
            position: Qt.vector3d(0.686858, 0.078, -0.14)
            rotation: Qt.quaternion(0.707107, 7.4928e-17, -0.707107, -5.09723e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________23_115e6d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____________1_0f7589
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-柔性-1_0f7589"
            position: Qt.vector3d(0.539358, 0.0995, -0.0125)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____________1_0f7589_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____________1_91bdb3
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-柔性-1_91bdb3"
            position: Qt.vector3d(0.539358, 0.0995, -0.0125)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6_____________1_91bdb3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________22_c1f505
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-22_c1f505"
            position: Qt.vector3d(0.549358, 0.078, -0.0275)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________22_c1f505_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________22_a1c40f
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-22_a1c40f"
            position: Qt.vector3d(0.549358, 0.078, -0.0275)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________22_a1c40f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________22_72d4a6
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-22_72d4a6"
            position: Qt.vector3d(0.549358, 0.078, -0.0275)
            rotation: Qt.quaternion(1, 6.90578e-16, 5.55112e-17, -1.82404e-16)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________22_72d4a6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_20
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-20"
            position: Qt.vector3d(0.549358, 0.1055, -0.0295)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_20_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_a4ba1a
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-13_a4ba1a"
            position: Qt.vector3d(0.391858, 0.078, -0.1925)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_a4ba1a_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_6bd63c
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-13_6bd63c"
            position: Qt.vector3d(0.391858, 0.078, -0.1925)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_6bd63c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_ad12ca
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移顶丝座-13_ad12ca"
            position: Qt.vector3d(0.391858, 0.078, -0.1925)
            rotation: Qt.quaternion(0.707107, -7.85046e-17, 0.707107, 7.85046e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_ad12ca_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_bf5610
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-13_bf5610"
            position: Qt.vector3d(0.391858, 0.0995, -0.2025)
            rotation: Qt.quaternion(0.707107, 1.67721e-17, -0.707107, -7.56506e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_bf5610_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_cf59e2
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红镜筒平移定位架-13_cf59e2"
            position: Qt.vector3d(0.391858, 0.0995, -0.2025)
            rotation: Qt.quaternion(0.707107, 1.67721e-17, -0.707107, -7.56506e-17)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________13_cf59e2_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________3_1c1a7e
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒底座地脚-3_1c1a7e"
            position: Qt.vector3d(0.748135, 0, -0.130792)
            rotation: Qt.quaternion(0.71139, 1.42227e-18, 0.702798, 4.09095e-17)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________3_1c1a7e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________3_bd3d0e
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光镜筒底座地脚-3_bd3d0e"
            position: Qt.vector3d(0.748135, 0, -0.130792)
            rotation: Qt.quaternion(0.71139, 1.42227e-18, 0.702798, 4.09095e-17)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6__________3_bd3d0e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_53d982
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度调节旋钮-3_53d982"
            position: Qt.vector3d(0.649358, 0.055, -0.232)
            rotation: Qt.quaternion(-8.73003e-17, 0.471044, 1.72926e-17, 0.88211)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_53d982_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_c55fd0
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度调节旋钮-3_c55fd0"
            position: Qt.vector3d(0.649358, 0.055, -0.232)
            rotation: Qt.quaternion(-8.73003e-17, 0.471044, 1.72926e-17, 0.88211)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_c55fd0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_799a34
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度调节旋钮-3_799a34"
            position: Qt.vector3d(0.649358, 0.055, -0.232)
            rotation: Qt.quaternion(-8.73003e-17, 0.471044, 1.72926e-17, 0.88211)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_799a34_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_37947d
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度锁紧压圈-3_37947d"
            position: Qt.vector3d(0.649358, 0.02, -0.232)
            rotation: Qt.quaternion(0.572337, 3.18986e-17, 0.820019, 5.78107e-24)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_37947d_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_3e34a5
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/QUEST08-ML-SYS01-Model01-Unity6-红光底座高度锁紧压圈-3_3e34a5"
            position: Qt.vector3d(0.649358, 0.02, -0.232)
            rotation: Qt.quaternion(0.572337, 3.18986e-17, 0.820019, 5.78107e-24)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_QUEST08_ML_SYS01_Model01_Unity6____________3_3e34a5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_11
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒支撑单元-1/Rolling bearings S719-4 GB 292-94-11"
            position: Qt.vector3d(0.408858, 0.1055, -0.1925)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6__________1_Rolling_bearings_S719_4_GB_292_94_11_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L1_______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L1镜筒连接隔圈-1"
            position: Qt.vector3d(0.407858, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L1_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6____________1_85f82a
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒中部连接法兰-1_85f82a"
            position: Qt.vector3d(0.68111, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6____________1_85f82a_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6____________1_1a0481
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒中部连接法兰-1_1a0481"
            position: Qt.vector3d(0.68111, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6____________1_1a0481_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6____________1_40f4b5
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒中部连接法兰-1_40f4b5"
            position: Qt.vector3d(0.68111, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6____________1_40f4b5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6____________1_3b8076
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光镜筒中部连接法兰-1_3b8076"
            position: Qt.vector3d(0.68111, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6____________1_3b8076_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L4_______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L4镜筒连接隔圈-1"
            position: Qt.vector3d(0.62667, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L4_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123_______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123镜筒连接隔圈-1"
            position: Qt.vector3d(0.530391, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L2_______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L2镜筒连接隔圈-1"
            position: Qt.vector3d(0.446858, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L2_______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____6_5627dc
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/QUEST08-ML-SYS01-Model01-Unity3-红光L3球面底座-6_5627dc"
            position: Qt.vector3d(0.518419, 0.181818, -0.195741)
            rotation: Qt.quaternion(0.683013, -0.183013, 0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____6_5627dc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____6_0e2c1b
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/QUEST08-ML-SYS01-Model01-Unity3-红光L3球面底座-6_0e2c1b"
            position: Qt.vector3d(0.518419, 0.181818, -0.195741)
            rotation: Qt.quaternion(0.683013, -0.183013, 0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____6_0e2c1b_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____7_345e0e
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/QUEST08-ML-SYS01-Model01-Unity3-红光L3球面底座-7_345e0e"
            position: Qt.vector3d(0.518419, 0.181818, -0.0842591)
            rotation: Qt.quaternion(-0.183013, 0.683013, -0.683013, -0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____7_345e0e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____7_43b698
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/QUEST08-ML-SYS01-Model01-Unity3-红光L3球面底座-7_43b698"
            position: Qt.vector3d(0.518419, 0.181818, -0.0842591)
            rotation: Qt.quaternion(-0.183013, 0.683013, -0.683013, -0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____7_43b698_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3___1_fbcf48
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室-1_fbcf48"
            position: Qt.vector3d(0.515397, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3___1_fbcf48_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3___1_7c1feb
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室-1_7c1feb"
            position: Qt.vector3d(0.515397, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3___1_7c1feb_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3___1_a776b5
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室-1_a776b5"
            position: Qt.vector3d(0.515397, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3___1_a776b5_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____5_1e4c63
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/QUEST08-ML-SYS01-Model01-Unity3-红光L3球面底座-5_1e4c63"
            position: Qt.vector3d(0.518419, 0.278364, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____5_1e4c63_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____5_5ad174
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/QUEST08-ML-SYS01-Model01-Unity3-红光L3球面底座-5_5ad174"
            position: Qt.vector3d(0.518419, 0.278364, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1_QUEST08_ML_SYS01_Model01_Unity3___L3_____5_5ad174_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity3___L3_____1____L3______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity3-红光L3镜室单元-1/红通道L3-图纸自建-1"
            position: Qt.vector3d(0.498891, 0.214, -0.14)
            rotation: Qt.quaternion(-2.98023e-08, 2.98023e-08, 0.92125, 0.388971)
            source: "meshes/quest08_ML_SYS01_Model01_Unity3___L3_____1____L3______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____2_63d4f6
            objectName: "QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室单元-1/QUEST08-ML-SYS01-Model01-Unity1-红光L1球面底座-2_63d4f6"
            position: Qt.vector3d(0.438858, 0.180051, -0.198801)
            rotation: Qt.quaternion(0.683013, -0.183013, 0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____2_63d4f6_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____2_22a094
            objectName: "QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室单元-1/QUEST08-ML-SYS01-Model01-Unity1-红光L1球面底座-2_22a094"
            position: Qt.vector3d(0.438858, 0.180051, -0.198801)
            rotation: Qt.quaternion(0.683013, -0.183013, 0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____2_22a094_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____3_086b4f
            objectName: "QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室单元-1/QUEST08-ML-SYS01-Model01-Unity1-红光L1球面底座-3_086b4f"
            position: Qt.vector3d(0.438858, 0.180051, -0.0811992)
            rotation: Qt.quaternion(0.183013, -0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____3_086b4f_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____3_59ffd3
            objectName: "QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室单元-1/QUEST08-ML-SYS01-Model01-Unity1-红光L1球面底座-3_59ffd3"
            position: Qt.vector3d(0.438858, 0.180051, -0.0811992)
            rotation: Qt.quaternion(0.183013, -0.683013, 0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____3_59ffd3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1___1_cbd13f
            objectName: "QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室单元-1/QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室-1_cbd13f"
            position: Qt.vector3d(0.437835, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1___1_cbd13f_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1___1_4f447e
            objectName: "QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室单元-1/QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室-1_4f447e"
            position: Qt.vector3d(0.437835, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1___1_4f447e_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____1_c5e7b8
            objectName: "QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室单元-1/QUEST08-ML-SYS01-Model01-Unity1-红光L1球面底座-1_c5e7b8"
            position: Qt.vector3d(0.438858, 0.281897, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____1_c5e7b8_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____1_4ce922
            objectName: "QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室单元-1/QUEST08-ML-SYS01-Model01-Unity1-红光L1球面底座-1_4ce922"
            position: Qt.vector3d(0.438858, 0.281897, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity1___L1_____1_QUEST08_ML_SYS01_Model01_Unity1___L1_____1_4ce922_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity1___L1_____1____L1______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity1-红光L1镜室单元-1/红通道L1-图纸自建-1"
            position: Qt.vector3d(0.425522, 0.214, -0.14)
            rotation: Qt.quaternion(2.98023e-08, -2.98023e-08, 0.598443, 0.801165)
            source: "meshes/quest08_ML_SYS01_Model01_Unity1___L1_____1____L1______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123___1_bf9d37
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123镜筒-1_bf9d37"
            position: Qt.vector3d(0.50018, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123___1_bf9d37_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123___1_a37caa
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123镜筒-1_a37caa"
            position: Qt.vector3d(0.50018, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123___1_a37caa_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123___1_3fe350
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123镜筒-1_3fe350"
            position: Qt.vector3d(0.50018, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123___1_3fe350_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L123___1_30150d
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L123镜筒-1_30150d"
            position: Qt.vector3d(0.50018, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L123___1_30150d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_1mm_______3
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/1mm聚四氟乙烯片-3"
            position: Qt.vector3d(0.626212, 0.187, -0.0932346)
            rotation: Qt.quaternion(0.353553, 0.612372, 0.353553, 0.612372)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_1mm_______3_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____3_271535
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4球面底座-3_271535"
            position: Qt.vector3d(0.655858, 0.18976, -0.0980156)
            rotation: Qt.quaternion(0.683013, 0.183013, -0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____3_271535_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____3_cdb1c9
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4球面底座-3_cdb1c9"
            position: Qt.vector3d(0.655858, 0.18976, -0.0980156)
            rotation: Qt.quaternion(0.683013, 0.183013, -0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____3_cdb1c9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_1mm_______2
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/1mm聚四氟乙烯片-2"
            position: Qt.vector3d(0.626212, 0.187, -0.186765)
            rotation: Qt.quaternion(-0.353553, 0.612372, -0.353553, 0.612372)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_1mm_______2_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____2_e410d1
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4球面底座-2_e410d1"
            position: Qt.vector3d(0.655858, 0.18976, -0.181984)
            rotation: Qt.quaternion(0.183013, 0.683013, -0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____2_e410d1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____2_990ea6
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4球面底座-2_990ea6"
            position: Qt.vector3d(0.655858, 0.18976, -0.181984)
            rotation: Qt.quaternion(0.183013, 0.683013, -0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____2_990ea6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1____L4______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/红通道L4-图纸自建-1"
            position: Qt.vector3d(0.649312, 0.214, -0.14)
            rotation: Qt.quaternion(-2.98023e-08, 2.98023e-08, 0.661991, 0.749512)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1____L4______1_mesh.mesh"
            materials: [
                defaultplastic_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____1_163564
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4球面底座-1_163564"
            position: Qt.vector3d(0.655858, 0.262479, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____1_163564_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____1_4ac33a
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4球面底座-1_4ac33a"
            position: Qt.vector3d(0.655858, 0.262479, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4_____1_4ac33a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_1mm_______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/1mm聚四氟乙烯片-1"
            position: Qt.vector3d(0.626212, 0.268, -0.14)
            rotation: Qt.quaternion(0.707107, -1.57009e-16, 0.707107, 2.95823e-31)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_1mm_______1_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4___1_d3a945
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室-1_d3a945"
            position: Qt.vector3d(0.655835, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4___1_d3a945_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4___1_5e00dd
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室-1_5e00dd"
            position: Qt.vector3d(0.655835, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4___1_5e00dd_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4___1_888731
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室-1_888731"
            position: Qt.vector3d(0.655835, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4___1_888731_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4___1_c98da6
            objectName: "QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室单元-1/QUEST08-ML-SYS01-Model01-Unity4-红光L4镜室-1_c98da6"
            position: Qt.vector3d(0.655835, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity4___L4_____1_QUEST08_ML_SYS01_Model01_Unity4___L4___1_c98da6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____4_a93e40
            objectName: "QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室单元-1/QUEST08-ML-SYS01-Model01-Unity2-红光L2球面底座-4_a93e40"
            position: Qt.vector3d(0.480856, 0.183659, -0.0874482)
            rotation: Qt.quaternion(0.683013, 0.183013, -0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____4_a93e40_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____4_1d81b8
            objectName: "QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室单元-1/QUEST08-ML-SYS01-Model01-Unity2-红光L2球面底座-4_1d81b8"
            position: Qt.vector3d(0.480856, 0.183659, -0.0874482)
            rotation: Qt.quaternion(0.683013, 0.183013, -0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____4_1d81b8_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____3_40f96b
            objectName: "QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室单元-1/QUEST08-ML-SYS01-Model01-Unity2-红光L2球面底座-3_40f96b"
            position: Qt.vector3d(0.480856, 0.183659, -0.192552)
            rotation: Qt.quaternion(0.183013, 0.683013, -0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____3_40f96b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____3_42d11b
            objectName: "QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室单元-1/QUEST08-ML-SYS01-Model01-Unity2-红光L2球面底座-3_42d11b"
            position: Qt.vector3d(0.480856, 0.183659, -0.192552)
            rotation: Qt.quaternion(0.183013, 0.683013, -0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____3_42d11b_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity2___L2_____1____L2______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室单元-1/红通道L2-图纸自建-1"
            position: Qt.vector3d(0.458214, 0.214, -0.14)
            rotation: Qt.quaternion(-1.34776e-16, 2.04555e-17, 0.592995, 0.805206)
            source: "meshes/quest08_ML_SYS01_Model01_Unity2___L2_____1____L2______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____1_07fae3
            objectName: "QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室单元-1/QUEST08-ML-SYS01-Model01-Unity2-红光L2球面底座-1_07fae3"
            position: Qt.vector3d(0.480856, 0.274682, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____1_07fae3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____1_d707a0
            objectName: "QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室单元-1/QUEST08-ML-SYS01-Model01-Unity2-红光L2球面底座-1_d707a0"
            position: Qt.vector3d(0.480856, 0.274682, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2_____1_d707a0_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2___1_74c42c
            objectName: "QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室单元-1/QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室-1_74c42c"
            position: Qt.vector3d(0.476833, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2___1_74c42c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2___1_423aa9
            objectName: "QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室单元-1/QUEST08-ML-SYS01-Model01-Unity2-红光L2镜室-1_423aa9"
            position: Qt.vector3d(0.476833, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity2___L2_____1_QUEST08_ML_SYS01_Model01_Unity2___L2___1_423aa9_mesh.mesh"
            materials: [
                polishedaluminum_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____2_1f1d43
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5球面底座-2_1f1d43"
            position: Qt.vector3d(0.697854, 0.195411, -0.172198)
            rotation: Qt.quaternion(0.183013, 0.683013, -0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____2_1f1d43_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____2_540fea
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5球面底座-2_540fea"
            position: Qt.vector3d(0.697854, 0.195411, -0.172198)
            rotation: Qt.quaternion(0.183013, 0.683013, -0.683013, 0.183013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____2_540fea_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____3_26f32c
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5球面底座-3_26f32c"
            position: Qt.vector3d(0.697854, 0.195411, -0.107802)
            rotation: Qt.quaternion(0.683013, 0.183013, -0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____3_26f32c_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____3_860ef6
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5球面底座-3_860ef6"
            position: Qt.vector3d(0.697854, 0.195411, -0.107802)
            rotation: Qt.quaternion(0.683013, 0.183013, -0.183013, 0.683013)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____3_860ef6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1____L5______1
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/红通道L5-图纸自建-1"
            position: Qt.vector3d(0.691308, 0.214, -0.14)
            rotation: Qt.quaternion(1.85281e-24, 0, 0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1____L5______1_mesh.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5___1_fb7363
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室-1_fb7363"
            position: Qt.vector3d(0.704831, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5___1_fb7363_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5___1_43913b
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室-1_43913b"
            position: Qt.vector3d(0.704831, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5___1_43913b_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5___1_945d8c
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室-1_945d8c"
            position: Qt.vector3d(0.704831, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5___1_945d8c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5___1_0c0302
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室-1_0c0302"
            position: Qt.vector3d(0.704831, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5___1_0c0302_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____1_a27682
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5球面底座-1_a27682"
            position: Qt.vector3d(0.697854, 0.251179, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____1_a27682_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____1_c95ac0
            objectName: "QUEST08-ML-SYS01-Model01-Unity5-红光L5镜室单元-1/QUEST08-ML-SYS01-Model01-Unity5-红光L5球面底座-1_c95ac0"
            position: Qt.vector3d(0.697854, 0.251179, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity5___L5_____1_QUEST08_ML_SYS01_Model01_Unity5___L5_____1_c95ac0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L45___1_d74ba5
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L45镜筒-1_d74ba5"
            position: Qt.vector3d(0.667285, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L45___1_d74ba5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS01_Model01_Unity6___L45___1_88221d
            objectName: "QUEST08-ML-SYS01-Model01-Unity6-红光L45镜筒-1_88221d"
            position: Qt.vector3d(0.667285, 0.214, -0.14)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS01_Model01_Unity6___L45___1_88221d_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part02________2
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit02-快门本体单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit02_Part02-快门导轨轴套-2"
            position: Qt.vector3d(-0.583579, 0.124, -0.227)
            rotation: Qt.quaternion(4.21469e-08, -0.0691482, 0.997606, -3.33866e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part02________2_mesh.mesh"
            materials: [
                lightgreyhighglossplastic_material
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part01______1_dffad6
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit02-快门本体单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit02_Part01-快门本体-1_dffad6"
            position: Qt.vector3d(-0.576079, 0.104, -0.24)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part01______1_dffad6_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part01______1_e33263
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit02-快门本体单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit02_Part01-快门本体-1_e33263"
            position: Qt.vector3d(-0.576079, 0.104, -0.24)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part01______1_e33263_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part02________1
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit02-快门本体单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit02_Part02-快门导轨轴套-1"
            position: Qt.vector3d(-0.583579, 0.304, -0.227)
            rotation: Qt.quaternion(4.21469e-08, -0.0691482, 0.997606, -3.33866e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part02________1_mesh.mesh"
            materials: [
                lightgreyhighglossplastic_material
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit02________1_GB___Rack_spur___rectangular_1M_20PA_10FW_14PH_200L___SAll_1
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit02-快门本体单元-1/GB - Rack-spur - rectangular 1M 20PA 10FW 14PH 200L---SAll-1"
            position: Qt.vector3d(-0.576079, 0.114, -0.24)
            rotation: Qt.quaternion(-4.81392e-17, 0.707107, 8.6485e-17, 0.707107)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit02________1_GB___Rack_spur___rectangular_1M_20PA_10FW_14PH_200L___SAll_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part02________4
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit02-快门本体单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit02_Part02-快门导轨轴套-4"
            position: Qt.vector3d(-0.583579, 0.124, -0.0403)
            rotation: Qt.quaternion(4.21469e-08, -0.0691482, 0.997606, -3.33866e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part02________4_mesh.mesh"
            materials: [
                lightgreyhighglossplastic_material
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part02________3
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit02-快门本体单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit02_Part02-快门导轨轴套-3"
            position: Qt.vector3d(-0.583579, 0.304, -0.0403)
            rotation: Qt.quaternion(4.21469e-08, -0.0691482, 0.997606, -3.33866e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit02________1_QUEST_SPG_MES_SYS01_Mod01_Unit02_Part02________3_mesh.mesh"
            materials: [
                lightgreyhighglossplastic_material
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST____________1
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST用无光源快门气动密封圈-1"
            position: Qt.vector3d(-0.565079, 0.133, -0.14)
            rotation: Qt.quaternion(0.707107, -3.87991e-17, 1.95808e-16, 0.707107)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST____________1_mesh.mesh"
            materials: [
                glossyrubber_material
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part05______1
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part05-快门导轨-1"
            position: Qt.vector3d(-0.583579, 0.304, -0.2475)
            rotation: Qt.quaternion(0.81132, 0, 4.21468e-08, 0.584602)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part05______1_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part07______1
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part07-快门盖板-1"
            position: Qt.vector3d(-0.593079, 0.01525, -0.25175)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part07______1_mesh.mesh"
            materials: [
                satinfinishaluminum_material
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part05______2
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part05-快门导轨-2"
            position: Qt.vector3d(-0.583579, 0.124, -0.248)
            rotation: Qt.quaternion(0.358319, -4.21468e-08, 0, 0.933599)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part05______2_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part01_______1_eec0fb
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part01-快门电机轴-1_eec0fb"
            position: Qt.vector3d(-0.562679, 0.085, -0.05)
            rotation: Qt.quaternion(0.707068, 0.00742385, -0.707068, -0.00742385)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part01_______1_eec0fb_mesh.mesh"
            materials: [
                polishedsteel_material1215
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part01_______1_ea8a03
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part01-快门电机轴-1_ea8a03"
            position: Qt.vector3d(-0.562679, 0.085, -0.05)
            rotation: Qt.quaternion(0.707068, 0.00742385, -0.707068, -0.00742385)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part01_______1_ea8a03_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part01_______1_6f3b98
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part01-快门电机轴-1_6f3b98"
            position: Qt.vector3d(-0.562679, 0.085, -0.05)
            rotation: Qt.quaternion(0.707068, 0.00742385, -0.707068, -0.00742385)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part01_______1_6f3b98_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part06________2_7f1f2d
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part06-快门导轨支架-2_7f1f2d"
            position: Qt.vector3d(-0.592079, 0.319, -0.241)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part06________2_7f1f2d_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part06________2_ca97fd
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part06-快门导轨支架-2_ca97fd"
            position: Qt.vector3d(-0.592079, 0.319, -0.241)
            rotation: Qt.quaternion(0.5, -0.5, 0.5, -0.5)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part06________2_ca97fd_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_GB___Spur_gear_1M_30T_20PA_10FW____S30A75H50L6_0N_1
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/GB - Spur gear 1M 30T 20PA 10FW ---S30A75H50L6.0N-1"
            position: Qt.vector3d(-0.586079, 0.085, -0.05)
            rotation: Qt.quaternion(0.754116, -0.656742, -4.21468e-08, 0)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_GB___Spur_gear_1M_30T_20PA_10FW____S30A75H50L6_0N_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part06________4_f0f526
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part06-快门导轨支架-4_f0f526"
            position: Qt.vector3d(-0.592079, 0.109, 0.141)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part06________4_f0f526_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part06________4_5f6666
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part06-快门导轨支架-4_5f6666"
            position: Qt.vector3d(-0.592079, 0.109, 0.141)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part06________4_5f6666_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part04______2_b17ab9
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part04-快门底板-2_b17ab9"
            position: Qt.vector3d(-0.600079, 3.72529e-09, -0.253)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part04______2_b17ab9_mesh.mesh"
            materials: [
                satinfinishaluminum_material12
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part04______2_5a1584
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part04-快门底板-2_5a1584"
            position: Qt.vector3d(-0.600079, 3.72529e-09, -0.253)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part04______2_5a1584_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_5c6497
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part03-快门舱体-1_5c6497"
            position: Qt.vector3d(-0.561079, 0.014, -0.253)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_5c6497_mesh.mesh"
            materials: [
                satinfinishaluminum_material
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_43aad5
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part03-快门舱体-1_43aad5"
            position: Qt.vector3d(-0.561079, 0.014, -0.253)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_43aad5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_5f9a73
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part03-快门舱体-1_5f9a73"
            position: Qt.vector3d(-0.561079, 0.014, -0.253)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_5f9a73_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_c18a69
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part03-快门舱体-1_c18a69"
            position: Qt.vector3d(-0.561079, 0.014, -0.253)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_c18a69_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_96155a
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part03-快门舱体-1_96155a"
            position: Qt.vector3d(-0.561079, 0.014, -0.253)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_96155a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_c6aaf3
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part03-快门舱体-1_c6aaf3"
            position: Qt.vector3d(-0.561079, 0.014, -0.253)
            rotation: Qt.quaternion(0.707107, 2.85131e-17, -0.707107, 1.06111e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part03______1_c6aaf3_mesh.mesh"
            materials: [
                defaultplastic_material2511
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part02________1
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part02-快门舱体支架-1"
            position: Qt.vector3d(-0.511079, 0.014, -0.163)
            rotation: Qt.quaternion(9.78423e-35, 1.55855e-16, 1, 1.52873e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part02________1_mesh.mesh"
            materials: [
                satinfinishaluminum_material2514
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1______HSTM57_1_8_S_56_1
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/步进电机-HSTM57-1.8-S-56-1"
            position: Qt.vector3d(-0.546079, 0.085, -0.05)
            rotation: Qt.quaternion(0.707107, -8.06961e-18, 0.707107, 1.06601e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1______HSTM57_1_8_S_56_1_mesh.mesh"
            materials: [
                defaultplastic_material2517
            ]
        }
        Model {
            id: quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part02________2
            objectName: "QUEST_SPG_MES_SYS01-Mod01_Unit01-快门支撑单元-1/QUEST_SPG_MES_SYS01-Mod01_Unit01_Part02-快门舱体支架-2"
            position: Qt.vector3d(-0.511079, 0.014, 0.107)
            rotation: Qt.quaternion(8.2843e-32, 1.55855e-16, 1, -2.34395e-16)
            source: "meshes/quest_SPG_MES_SYS01_Mod01_Unit01________1_QUEST_SPG_MES_SYS01_Mod01_Unit01_Part02________2_mesh.mesh"
            materials: [
                satinfinishaluminum_material2514
            ]
        }
        Model {
            id: quest08_ML_SYS06_part05__________1
            objectName: "QUEST08-ML-SYS06-part05-滤光片左侧支撑板-1"
            position: Qt.vector3d(0.208489, 0.3298, -0.054)
            source: "meshes/quest08_ML_SYS06_part05__________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS06_part04__________1
            objectName: "QUEST08-ML-SYS06-part04-滤光片右侧支撑板-1"
            position: Qt.vector3d(0.208489, 0.3298, -0.226)
            source: "meshes/quest08_ML_SYS06_part04__________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS06_part03___________5
            objectName: "QUEST08-ML-SYS06-part03-滤光片固定环氧胶垫-5"
            position: Qt.vector3d(0.219489, 0.3598, -0.06485)
            rotation: Qt.quaternion(8.71576e-33, 0.707107, -0.707107, 0)
            source: "meshes/quest08_ML_SYS06_part03___________5_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS06_part01_______1_494eec
            objectName: "QUEST08-ML-SYS06-part01-滤光片镜室-1_494eec"
            position: Qt.vector3d(0.234489, 0.3998, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS06_part01_______1_494eec_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest08_ML_SYS06_part01_______1_350afa
            objectName: "QUEST08-ML-SYS06-part01-滤光片镜室-1_350afa"
            position: Qt.vector3d(0.234489, 0.3998, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS06_part01_______1_350afa_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS06_part03___________6
            objectName: "QUEST08-ML-SYS06-part03-滤光片固定环氧胶垫-6"
            position: Qt.vector3d(0.219489, 0.4398, -0.065)
            rotation: Qt.quaternion(0.707107, 8.71576e-33, -1.57009e-16, 0.707107)
            source: "meshes/quest08_ML_SYS06_part03___________6_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS06_part03___________8
            objectName: "QUEST08-ML-SYS06-part03-滤光片固定环氧胶垫-8"
            position: Qt.vector3d(0.219489, 0.4398, -0.215)
            rotation: Qt.quaternion(8.71576e-33, 0.707107, -0.707107, 0)
            source: "meshes/quest08_ML_SYS06_part03___________8_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS06_part03___________2
            objectName: "QUEST08-ML-SYS06-part03-滤光片固定环氧胶垫-2"
            position: Qt.vector3d(0.219489, 0.47495, -0.18)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS06_part03___________2_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS06_part03___________7
            objectName: "QUEST08-ML-SYS06-part03-滤光片固定环氧胶垫-7"
            position: Qt.vector3d(0.219489, 0.3598, -0.215)
            rotation: Qt.quaternion(8.71576e-33, 0.707107, -0.707107, 0)
            source: "meshes/quest08_ML_SYS06_part03___________7_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS06_part03___________4
            objectName: "QUEST08-ML-SYS06-part03-滤光片固定环氧胶垫-4"
            position: Qt.vector3d(0.219489, 0.32465, -0.18)
            rotation: Qt.quaternion(0.588015, -0.588016, 0.392731, 0.392731)
            source: "meshes/quest08_ML_SYS06_part03___________4_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS06_part03___________3
            objectName: "QUEST08-ML-SYS06-part03-滤光片固定环氧胶垫-3"
            position: Qt.vector3d(0.219489, 0.32465, -0.1)
            rotation: Qt.quaternion(0.588015, -0.588016, 0.392731, 0.392731)
            source: "meshes/quest08_ML_SYS06_part03___________3_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS06_part03___________1
            objectName: "QUEST08-ML-SYS06-part03-滤光片固定环氧胶垫-1"
            position: Qt.vector3d(0.219489, 0.47495, -0.1)
            rotation: Qt.quaternion(0.578791, 0.578791, 0.406203, -0.406203)
            source: "meshes/quest08_ML_SYS06_part03___________1_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: _________12544
            objectName: "图纸自建-滤光片-1"
            position: Qt.vector3d(0.218936, 0.3998, -0.14)
            rotation: Qt.quaternion(0.707107, 7.85046e-17, -0.707107, 7.85046e-17)
            source: "meshes/_________1_mesh2545.mesh"
            materials: [
                defaultplastic_material
            ]
        }
        Model {
            id: quest08_ML_SYS08________1
            objectName: "QUEST08-ML-SYS08-升降台右侧板-1"
            position: Qt.vector3d(0.0101202, -0.21, -0.274)
            rotation: Qt.quaternion(0.707107, 3.19511e-17, -0.707107, 1.8896e-16)
            source: "meshes/quest08_ML_SYS08________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS08________12548
            objectName: "QUEST08-ML-SYS08-升降台左侧板-1"
            position: Qt.vector3d(0.22212, -0.21, -0.274)
            rotation: Qt.quaternion(0.707107, 2.76954e-19, -0.707107, 1.57286e-16)
            source: "meshes/quest08_ML_SYS08________1_mesh2549.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS08_______1_fc6bb2
            objectName: "QUEST08-ML-SYS08-升降台底板-1_fc6bb2"
            position: Qt.vector3d(0.11112, -0.21, -0.199)
            rotation: Qt.quaternion(0.707107, -0.707107, -8.42044e-17, 7.28048e-17)
            source: "meshes/quest08_ML_SYS08_______1_fc6bb2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS08_______1_9669da
            objectName: "QUEST08-ML-SYS08-升降台底板-1_9669da"
            position: Qt.vector3d(0.11112, -0.21, -0.199)
            rotation: Qt.quaternion(0.707107, -0.707107, -8.42044e-17, 7.28048e-17)
            source: "meshes/quest08_ML_SYS08_______1_9669da_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: m6H_1
            objectName: "M6H-1"
            position: Qt.vector3d(0.186806, 0.0158715, -0.223)
            rotation: Qt.quaternion(0.707107, 0.707107, -3.70568e-16, 3.70568e-16)
            source: "meshes/m6H_1_mesh.mesh"
            materials: [
                defaultplastic_material2556
            ]
        }
        Model {
            id: sfu2004_1
            objectName: "SFU2004-1"
            position: Qt.vector3d(0.11112, 0.0978, -0.236)
            rotation: Qt.quaternion(0.707107, 2.6717e-17, 2.6717e-17, -0.707107)
            source: "meshes/sfu2004_1_mesh.mesh"
            materials: [
                defaultplastic_material2559
            ]
        }
        Model {
            id: m6H_2
            objectName: "M6H-2"
            position: Qt.vector3d(0.035434, 0.0158715, -0.223)
            rotation: Qt.quaternion(4.07491e-16, 4.07491e-16, -0.707107, 0.707107)
            source: "meshes/m6H_2_mesh.mesh"
            materials: [
                defaultplastic_material2556
            ]
        }
        Model {
            id: ______MCGLC32_8_12_MISUMI_1_NEZI_1_______MCGLC32_8_12_MISUMI_2_8015bb
            objectName: "标准联轴器_MCGLC32-8-12_MISUMI-1/NEZI-1_标准联轴器_MCGLC32-8-12_MISUMI-2_8015bb"
            position: Qt.vector3d(0.121715, 0.1598, -0.233332)
            rotation: Qt.quaternion(-0.456336, -0.456336, -0.540146, 0.540146)
            source: "meshes/______MCGLC32_8_12_MISUMI_1_NEZI_1_______MCGLC32_8_12_MISUMI_2_8015bb_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: ______MCGLC32_8_12_MISUMI_1_NEZI_1_______MCGLC32_8_12_MISUMI_2_6c02f6
            objectName: "标准联轴器_MCGLC32-8-12_MISUMI-1/NEZI-1_标准联轴器_MCGLC32-8-12_MISUMI-2_6c02f6"
            position: Qt.vector3d(0.121715, 0.1598, -0.233332)
            rotation: Qt.quaternion(-0.456336, -0.456336, -0.540146, 0.540146)
            source: "meshes/______MCGLC32_8_12_MISUMI_1_NEZI_1_______MCGLC32_8_12_MISUMI_2_6c02f6_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ______MCGLC32_8_12_MISUMI_1_NEZI_1_______MCGLC32_8_12_MISUMI_1_a799d8
            objectName: "标准联轴器_MCGLC32-8-12_MISUMI-1/NEZI-1_标准联轴器_MCGLC32-8-12_MISUMI-1_a799d8"
            position: Qt.vector3d(0.101091, 0.1888, -0.231667)
            rotation: Qt.quaternion(0.501677, 0.501677, 0.498318, -0.498318)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/______MCGLC32_8_12_MISUMI_1_NEZI_1_______MCGLC32_8_12_MISUMI_1_a799d8_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: ______MCGLC32_8_12_MISUMI_1_NEZI_1_______MCGLC32_8_12_MISUMI_1_3522a8
            objectName: "标准联轴器_MCGLC32-8-12_MISUMI-1/NEZI-1_标准联轴器_MCGLC32-8-12_MISUMI-1_3522a8"
            position: Qt.vector3d(0.101091, 0.1888, -0.231667)
            rotation: Qt.quaternion(0.501677, 0.501677, 0.498318, -0.498318)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/______MCGLC32_8_12_MISUMI_1_NEZI_1_______MCGLC32_8_12_MISUMI_1_3522a8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ______MCGLC32_8_12_MISUMI_1_BODY_______MCGLC32_8_12_MISUMI_1_d9e010
            objectName: "标准联轴器_MCGLC32-8-12_MISUMI-1/BODY_标准联轴器_MCGLC32-8-12_MISUMI-1_d9e010"
            position: Qt.vector3d(0.11112, 0.1948, -0.236)
            rotation: Qt.quaternion(0.706533, -0.0284706, 0.0284706, -0.706533)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/______MCGLC32_8_12_MISUMI_1_BODY_______MCGLC32_8_12_MISUMI_1_d9e010_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: ______MCGLC32_8_12_MISUMI_1_BODY_______MCGLC32_8_12_MISUMI_1_1d8e65
            objectName: "标准联轴器_MCGLC32-8-12_MISUMI-1/BODY_标准联轴器_MCGLC32-8-12_MISUMI-1_1d8e65"
            position: Qt.vector3d(0.11112, 0.1948, -0.236)
            rotation: Qt.quaternion(0.706533, -0.0284706, 0.0284706, -0.706533)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/______MCGLC32_8_12_MISUMI_1_BODY_______MCGLC32_8_12_MISUMI_1_1d8e65_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: hgh25H____temp_1_e37210
            objectName: "HGH25H_右封_temp-1_e37210"
            position: Qt.vector3d(0.0361202, 0.0658, -0.253)
            rotation: Qt.quaternion(-1.96262e-17, 1.96262e-17, 0.707107, 0.707107)
            source: "meshes/hgh25H____temp_1_e37210_mesh.mesh"
            materials: [
                defaultplastic_material2576
            ]
        }
        Model {
            id: hgh25H____temp_1_107f17
            objectName: "HGH25H_右封_temp-1_107f17"
            position: Qt.vector3d(0.0361202, 0.0658, -0.253)
            rotation: Qt.quaternion(-1.96262e-17, 1.96262e-17, 0.707107, 0.707107)
            source: "meshes/hgh25H____temp_1_107f17_mesh.mesh"
            materials: [
                defaultplastic_material2556
            ]
        }
        Model {
            id: hgh25H____temp_1_35108d
            objectName: "HGH25H_右封_temp-1_35108d"
            position: Qt.vector3d(0.0361202, 0.0658, -0.253)
            rotation: Qt.quaternion(-1.96262e-17, 1.96262e-17, 0.707107, 0.707107)
            source: "meshes/hgh25H____temp_1_35108d_mesh.mesh"
            materials: [
                defaultplastic_material1280
            ]
        }
        Model {
            id: hgh25H____temp_1_33dbfe
            objectName: "HGH25H_右封_temp-1_33dbfe"
            position: Qt.vector3d(0.0361202, 0.0658, -0.253)
            rotation: Qt.quaternion(-1.96262e-17, 1.96262e-17, 0.707107, 0.707107)
            source: "meshes/hgh25H____temp_1_33dbfe_mesh.mesh"
            materials: [
                defaultplastic_material2583
            ]
        }
        Model {
            id: node34320001_1
            objectName: "34320001-1"
            position: Qt.vector3d(0.026837, 0.132082, -0.211714)
            rotation: Qt.quaternion(-0.413451, 0.858422, 0.297712, 0.0594819)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/node34320001_1_mesh.mesh"
            materials: [
                defaultplastic_material2556
            ]
        }
        Model {
            id: node34320001_2
            objectName: "34320001-2"
            position: Qt.vector3d(0.192373, 0.132082, -0.236208)
            rotation: Qt.quaternion(0.244696, 0.0463653, 0.446876, 0.85923)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/node34320001_2_mesh.mesh"
            materials: [
                defaultplastic_material2556
            ]
        }
        Model {
            id: mlm20_______1
            objectName: "MLM20______-1"
            position: Qt.vector3d(0.11112, 0.0878, -0.236)
            rotation: Qt.quaternion(0.707107, 0.707107, 4.65853e-18, -4.65853e-18)
            source: "meshes/mlm20_______1_mesh.mesh"
            materials: [
                defaultplastic_material2590
            ]
        }
        Model {
            id: hgh25H____temp_1_7234bd
            objectName: "HGH25H_左封_temp-1_7234bd"
            position: Qt.vector3d(0.18612, 0.0658, -0.253)
            rotation: Qt.quaternion(0.707107, 0.707107, 8.54087e-17, -8.54087e-17)
            source: "meshes/hgh25H____temp_1_7234bd_mesh.mesh"
            materials: [
                defaultplastic_material2576
            ]
        }
        Model {
            id: hgh25H____temp_1_35aec6
            objectName: "HGH25H_左封_temp-1_35aec6"
            position: Qt.vector3d(0.18612, 0.0658, -0.253)
            rotation: Qt.quaternion(0.707107, 0.707107, 8.54087e-17, -8.54087e-17)
            source: "meshes/hgh25H____temp_1_35aec6_mesh.mesh"
            materials: [
                defaultplastic_material2556
            ]
        }
        Model {
            id: hgh25H____temp_1_86704d
            objectName: "HGH25H_左封_temp-1_86704d"
            position: Qt.vector3d(0.18612, 0.0658, -0.253)
            rotation: Qt.quaternion(0.707107, 0.707107, 8.54087e-17, -8.54087e-17)
            source: "meshes/hgh25H____temp_1_86704d_mesh.mesh"
            materials: [
                defaultplastic_material1280
            ]
        }
        Model {
            id: hgh25H____temp_1_a2490e
            objectName: "HGH25H_左封_temp-1_a2490e"
            position: Qt.vector3d(0.18612, 0.0658, -0.253)
            rotation: Qt.quaternion(0.707107, 0.707107, 8.54087e-17, -8.54087e-17)
            source: "meshes/hgh25H____temp_1_a2490e_mesh.mesh"
            materials: [
                defaultplastic_material2583
            ]
        }
        Model {
            id: quest08_ML_SYS08_______1_ff3636
            objectName: "QUEST08-ML-SYS08-升降台背板-1_ff3636"
            position: Qt.vector3d(0.11112, -0.008, -0.274)
            source: "meshes/quest08_ML_SYS08_______1_ff3636_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS08_______1_d5a78f
            objectName: "QUEST08-ML-SYS08-升降台背板-1_d5a78f"
            position: Qt.vector3d(0.11112, -0.008, -0.274)
            source: "meshes/quest08_ML_SYS08_______1_d5a78f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS08_______1_01e2bf
            objectName: "QUEST08-ML-SYS08-升降台背板-1_01e2bf"
            position: Qt.vector3d(0.11112, -0.008, -0.274)
            source: "meshes/quest08_ML_SYS08_______1_01e2bf_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS08_______1_059a17
            objectName: "QUEST08-ML-SYS08-升降台背板-1_059a17"
            position: Qt.vector3d(0.11112, -0.008, -0.274)
            source: "meshes/quest08_ML_SYS08_______1_059a17_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS08_______1_003f80
            objectName: "QUEST08-ML-SYS08-升降台背板-1_003f80"
            position: Qt.vector3d(0.11112, -0.008, -0.274)
            source: "meshes/quest08_ML_SYS08_______1_003f80_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS08_______1_05aa99
            objectName: "QUEST08-ML-SYS08-升降台背板-1_05aa99"
            position: Qt.vector3d(0.11112, -0.008, -0.274)
            source: "meshes/quest08_ML_SYS08_______1_05aa99_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS08_______1_44f500
            objectName: "QUEST08-ML-SYS08-升降台背板-1_44f500"
            position: Qt.vector3d(0.11112, -0.008, -0.274)
            source: "meshes/quest08_ML_SYS08_______1_44f500_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS08_________1
            objectName: "QUEST08-ML-SYS08-升降台转接台面-1"
            position: Qt.vector3d(0.11112, -0.0042, -0.156)
            rotation: Qt.quaternion(-1.06367e-16, 1.06367e-16, 0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS08_________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: _____YC57_____1_57_________0_1
            objectName: "航宇九天 YC57系列电机-1/57________-0-1"
            position: Qt.vector3d(0.11112, 0.283, -0.236)
            rotation: Qt.quaternion(1.00237e-10, 1.00237e-10, -0.707107, 0.707107)
            source: "meshes/_____YC57_____1_57_________0_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: _____YC57_____1_57_____76_1
            objectName: "航宇九天 YC57系列电机-1/57____-76-1"
            position: Qt.vector3d(0.11112, 0.218, -0.236)
            rotation: Qt.quaternion(0.707107, -0.707107, 1.00237e-10, 1.00237e-10)
            source: "meshes/_____YC57_____1_57_____76_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: _____YC57_____1_57_______1
            objectName: "航宇九天 YC57系列电机-1/57______-1"
            position: Qt.vector3d(0.11112, 0.323, -0.236)
            rotation: Qt.quaternion(1.00237e-10, 1.00237e-10, -0.707107, 0.707107)
            source: "meshes/_____YC57_____1_57_______1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: _____YC57_____1_57_________1
            objectName: "航宇九天 YC57系列电机-1/57________-1"
            position: Qt.vector3d(0.11112, 0.207, -0.236)
            rotation: Qt.quaternion(0.707106, -0.707106, 0.00129139, 0.00129139)
            source: "meshes/_____YC57_____1_57_________1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: _____YC57_____1_57___1
            objectName: "航宇九天 YC57系列电机-1/57__-1"
            position: Qt.vector3d(0.11112, 0.186, -0.236)
            rotation: Qt.quaternion(0.707106, 0.00129139, 0.00129139, 0.707106)
            source: "meshes/_____YC57_____1_57___1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: sfu2004mBK15_60_332_MLM20H_1_MBK15_57_1
            objectName: "SFU2004mBK15-60-332-MLM20H-1/MBK15-57-1"
            position: Qt.vector3d(0.13912, 0.1554, -0.2421)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, -0.5)
            source: "meshes/sfu2004mBK15_60_332_MLM20H_1_MBK15_57_1_mesh.mesh"
            materials: [
                defaultplastic_material2559
            ]
        }
        Model {
            id: sfu2004mBK15_60_332_MLM20H_1_20____BK_____1
            objectName: "SFU2004mBK15-60-332-MLM20H-1/20____BK____-1"
            position: Qt.vector3d(0.11112, 0.1668, -0.236)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, -0.5)
            source: "meshes/sfu2004mBK15_60_332_MLM20H_1_20____BK_____1_mesh.mesh"
            materials: [
                defaultplastic_material2629
            ]
        }
        Model {
            id: sfu2004mBK15_60_332_MLM20H_1_BF_15_1_a7f91e
            objectName: "SFU2004mBK15-60-332-MLM20H-1/BF-15-1_a7f91e"
            position: Qt.vector3d(0.1209, -0.1567, -0.276083)
            rotation: Qt.quaternion(3.70771e-17, -2.00679e-17, 0.707107, 0.707107)
            source: "meshes/sfu2004mBK15_60_332_MLM20H_1_BF_15_1_a7f91e_mesh.mesh"
            materials: [
                defaultplastic_material2632
            ]
        }
        Model {
            id: sfu2004mBK15_60_332_MLM20H_1_BF_15_1_f6a548
            objectName: "SFU2004mBK15-60-332-MLM20H-1/BF-15-1_f6a548"
            position: Qt.vector3d(0.1209, -0.1567, -0.276083)
            rotation: Qt.quaternion(3.70771e-17, -2.00679e-17, 0.707107, 0.707107)
            source: "meshes/sfu2004mBK15_60_332_MLM20H_1_BF_15_1_f6a548_mesh.mesh"
            materials: [
                defaultplastic_material2559
            ]
        }
        Model {
            id: hgh25HA_____1_HGR25_temp_1_1
            objectName: "HGH25HA直线导轨-1/HGR25_temp-1-1"
            position: Qt.vector3d(0.18612, -0.1932, -0.253)
            rotation: Qt.quaternion(0.707107, 0.707107, 2.42847e-17, -2.42847e-17)
            source: "meshes/hgh25HA_____1_HGR25_temp_1_1_mesh.mesh"
            materials: [
                defaultplastic_material2637
            ]
        }
        Model {
            id: hgh25HA_____1_HGR25_temp_2_1
            objectName: "HGH25HA直线导轨-1/HGR25_temp-2-1"
            position: Qt.vector3d(0.0361202, -0.1932, -0.253)
            rotation: Qt.quaternion(0.707107, 0.707107, 2.42847e-17, -2.42847e-17)
            source: "meshes/hgh25HA_____1_HGR25_temp_2_1_mesh.mesh"
            materials: [
                defaultplastic_material2637
            ]
        }
        Model {
            id: ____pm_u25_2_40396d
            objectName: "光电开关pm-u25-2_40396d"
            position: Qt.vector3d(0.0661202, -0.1045, -0.2525)
            source: "meshes/____pm_u25_2_40396d_mesh.mesh"
            materials: [
                defaultplastic_material2642
            ]
        }
        Model {
            id: ____pm_u25_2_6cdfe5
            objectName: "光电开关pm-u25-2_6cdfe5"
            position: Qt.vector3d(0.0661202, -0.1045, -0.2525)
            source: "meshes/____pm_u25_2_6cdfe5_mesh.mesh"
            materials: [
                defaultplastic_material2645
            ]
        }
        Model {
            id: ____pm_u25_2_11d17c
            objectName: "光电开关pm-u25-2_11d17c"
            position: Qt.vector3d(0.0661202, -0.1045, -0.2525)
            source: "meshes/____pm_u25_2_11d17c_mesh.mesh"
            materials: [
                defaultplastic_material2632
            ]
        }
        Model {
            id: quest08_ML_SYS08________2_1_409f08
            objectName: "QUEST08-ML-SYS08-光电开关固定架2-1_409f08"
            position: Qt.vector3d(0.0691202, -0.116, -0.264)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS08________2_1_409f08_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS08________2_1_3fb506
            objectName: "QUEST08-ML-SYS08-光电开关固定架2-1_3fb506"
            position: Qt.vector3d(0.0691202, -0.116, -0.264)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS08________2_1_3fb506_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS08________1_1_83ee23
            objectName: "QUEST08-ML-SYS08-光电开关固定架1-1_83ee23"
            position: Qt.vector3d(0.0691202, 0.117, -0.264)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS08________1_1_83ee23_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS08________1_1_fbdfff
            objectName: "QUEST08-ML-SYS08-光电开关固定架1-1_fbdfff"
            position: Qt.vector3d(0.0691202, 0.117, -0.264)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS08________1_1_fbdfff_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ____pm_u25_1_369990
            objectName: "光电开关pm-u25-1_369990"
            position: Qt.vector3d(0.0661202, 0.1055, -0.2465)
            rotation: Qt.quaternion(1.11022e-16, 1, 0, 1.11022e-16)
            source: "meshes/____pm_u25_1_369990_mesh.mesh"
            materials: [
                defaultplastic_material2642
            ]
        }
        Model {
            id: ____pm_u25_1_94e492
            objectName: "光电开关pm-u25-1_94e492"
            position: Qt.vector3d(0.0661202, 0.1055, -0.2465)
            rotation: Qt.quaternion(1.11022e-16, 1, 0, 1.11022e-16)
            source: "meshes/____pm_u25_1_94e492_mesh.mesh"
            materials: [
                defaultplastic_material2645
            ]
        }
        Model {
            id: ____pm_u25_1_8a7973
            objectName: "光电开关pm-u25-1_8a7973"
            position: Qt.vector3d(0.0661202, 0.1055, -0.2465)
            rotation: Qt.quaternion(1.11022e-16, 1, 0, 1.11022e-16)
            source: "meshes/____pm_u25_1_8a7973_mesh.mesh"
            materials: [
                defaultplastic_material2632
            ]
        }
        Model {
            id: quest08_ML_SYS08__________1
            objectName: "QUEST08-ML-SYS08-光电开关移动触点-1"
            position: Qt.vector3d(0.0661202, 0.0958, -0.23082)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, -0.5)
            source: "meshes/quest08_ML_SYS08__________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS08__________1_81828b
            objectName: "QUEST08-ML-SYS08-升降台重物支撑板-1_81828b"
            position: Qt.vector3d(0.11112, 0.0658, -0.213)
            source: "meshes/quest08_ML_SYS08__________1_81828b_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS08__________1_231d3c
            objectName: "QUEST08-ML-SYS08-升降台重物支撑板-1_231d3c"
            position: Qt.vector3d(0.11112, 0.0658, -0.213)
            source: "meshes/quest08_ML_SYS08__________1_231d3c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS08__________1_82c560
            objectName: "QUEST08-ML-SYS08-升降台重物支撑板-1_82c560"
            position: Qt.vector3d(0.11112, 0.0658, -0.213)
            source: "meshes/quest08_ML_SYS08__________1_82c560_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03_______________1
            objectName: "QUEST08-ML-SYS02-Model03-场镜光轴机械轴装调辅助工装-1"
            position: Qt.vector3d(-0.723215, 0.214, -0.255289)
            rotation: Qt.quaternion(-0.353553, -0.353553, 0.612372, 0.612372)
            source: "meshes/quest08_ML_SYS02_Model03_______________1_mesh.mesh"
            materials: [
                polishedsteel_material1215
            ]
        }
        Model {
            id: ____E_MSC8_25_MISUMI_1_5
            objectName: "定位销_E-MSC8-25_MISUMI-1_5"
            position: Qt.vector3d(-0.723215, 0.007, -0.269289)
            rotation: Qt.quaternion(0.696417, 0.696417, -0.12249, 0.12249)
            source: "meshes/____E_MSC8_25_MISUMI_1_5_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____TFZF8_8_MISUMI_1_5
            objectName: "无油衬套_TFZF8-8_MISUMI-1_5"
            position: Qt.vector3d(-0.723215, 0.025, -0.269289)
            rotation: Qt.quaternion(0.392731, 0.588016, -0.588016, -0.392731)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_____TFZF8_8_MISUMI_1_5_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: m6x0_25___4_1_ed3465
            objectName: "M6x0.25顶丝-4_1_ed3465"
            position: Qt.vector3d(-0.723215, 0.123, -0.293089)
            rotation: Qt.quaternion(0.547251, 0.44779, -0.547252, 0.44779)
            source: "meshes/m6x0_25___4_1_ed3465_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___4_1_3a01bc
            objectName: "M6x0.25顶丝-4_1_3a01bc"
            position: Qt.vector3d(-0.723215, 0.123, -0.293089)
            rotation: Qt.quaternion(0.547251, 0.44779, -0.547252, 0.44779)
            source: "meshes/m6x0_25___4_1_3a01bc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: m6x0_25___5_3_e8e92d
            objectName: "M6x0.25顶丝-5_3_e8e92d"
            position: Qt.vector3d(-0.723215, 0.123, -0.245489)
            rotation: Qt.quaternion(0.0278016, 0.70656, 0.0278016, -0.70656)
            source: "meshes/m6x0_25___5_3_e8e92d_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___5_3_cf0c56
            objectName: "M6x0.25顶丝-5_3_cf0c56"
            position: Qt.vector3d(-0.723215, 0.123, -0.245489)
            rotation: Qt.quaternion(0.0278016, 0.70656, 0.0278016, -0.70656)
            source: "meshes/m6x0_25___5_3_cf0c56_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03________1
            objectName: "QUEST08-ML-SYS02-Model03-俯仰调节压板-1"
            position: Qt.vector3d(-0.723215, 0.123, -0.254289)
            rotation: Qt.quaternion(-3.72201e-32, 1, -8.19461e-17, -2.85407e-18)
            source: "meshes/quest08_ML_SYS02_Model03________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: m6x0_25___3_3_8320d2
            objectName: "M6x0.25顶丝-3_3_8320d2"
            position: Qt.vector3d(-0.794715, 0.022, -0.305089)
            rotation: Qt.quaternion(-0.285741, 0.646801, 0.285741, 0.646801)
            source: "meshes/m6x0_25___3_3_8320d2_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___3_3_3613d7
            objectName: "M6x0.25顶丝-3_3_3613d7"
            position: Qt.vector3d(-0.794715, 0.022, -0.305089)
            rotation: Qt.quaternion(-0.285741, 0.646801, 0.285741, 0.646801)
            source: "meshes/m6x0_25___3_3_3613d7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03_12___3
            objectName: "QUEST08-ML-SYS02-Model03-12球头-3"
            position: Qt.vector3d(-0.806392, 0.214, -0.269289)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS02_Model03_12___3_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: ________12692
            objectName: "图纸自建-场镜-1"
            position: Qt.vector3d(-0.723215, 0.214, -0.270001)
            rotation: Qt.quaternion(0.0968388, 0.700444, 0.0968387, -0.700444)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/________1_mesh2693.mesh"
            materials: [
                clearglass_material984
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03______1_0c962c
            objectName: "QUEST08-ML-SYS02-Model03-场镜镜室-1_0c962c"
            position: Qt.vector3d(-0.723215, 0.214, -0.258289)
            rotation: Qt.quaternion(-1.2021e-16, 7.60514e-17, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS02_Model03______1_0c962c_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03______1_63f164
            objectName: "QUEST08-ML-SYS02-Model03-场镜镜室-1_63f164"
            position: Qt.vector3d(-0.723215, 0.214, -0.258289)
            rotation: Qt.quaternion(-1.2021e-16, 7.60514e-17, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS02_Model03______1_63f164_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03______1_0cc244
            objectName: "QUEST08-ML-SYS02-Model03-场镜镜室-1_0cc244"
            position: Qt.vector3d(-0.723215, 0.214, -0.258289)
            rotation: Qt.quaternion(-1.2021e-16, 7.60514e-17, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS02_Model03______1_0cc244_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03_12___4
            objectName: "QUEST08-ML-SYS02-Model03-12球头-4"
            position: Qt.vector3d(-0.640037, 0.214, -0.269289)
            rotation: Qt.quaternion(0.504938, -0.495012, 0.495012, 0.504939)
            source: "meshes/quest08_ML_SYS02_Model03_12___4_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03_________2
            objectName: "QUEST08-ML-SYS02-Model03-偏摆调整顶丝座-2"
            position: Qt.vector3d(-0.794715, 0.015, -0.295289)
            source: "meshes/quest08_ML_SYS02_Model03_________2_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03______1
            objectName: "QUEST08-ML-SYS02-Model03-球头顶盖-1"
            position: Qt.vector3d(-0.821715, 0.214, -0.269289)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, 0.5)
            source: "meshes/quest08_ML_SYS02_Model03______1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03________12706
            objectName: "QUEST08-ML-SYS02-Model03-固定环氧胶垫-1"
            position: Qt.vector3d(-0.723215, 0.214, -0.280289)
            rotation: Qt.quaternion(0.980785, -4.21468e-08, -4.52789e-16, -0.19509)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model03________1_mesh2707.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: m6x0_25___2_5_893f3e
            objectName: "M6x0.25顶丝-2_5_893f3e"
            position: Qt.vector3d(-0.794715, 0.022, -0.213489)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/m6x0_25___2_5_893f3e_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___2_5_423202
            objectName: "M6x0.25顶丝-2_5_423202"
            position: Qt.vector3d(-0.794715, 0.022, -0.213489)
            rotation: Qt.quaternion(0.5, 0.5, 0.5, -0.5)
            source: "meshes/m6x0_25___2_5_423202_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03_______1
            objectName: "QUEST08-ML-SYS02-Model03-场镜支撑架-1"
            position: Qt.vector3d(-0.723215, 0.214, -0.254289)
            rotation: Qt.quaternion(-2.42861e-17, -1.66533e-16, 1, 1.54676e-33)
            source: "meshes/quest08_ML_SYS02_Model03_______1_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03______1_11d0ab
            objectName: "QUEST08-ML-SYS02-Model03-场镜底板-1_11d0ab"
            position: Qt.vector3d(-0.723215, 0, -0.256289)
            source: "meshes/quest08_ML_SYS02_Model03______1_11d0ab_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03______1_f244cb
            objectName: "QUEST08-ML-SYS02-Model03-场镜底板-1_f244cb"
            position: Qt.vector3d(-0.723215, 0, -0.256289)
            source: "meshes/quest08_ML_SYS02_Model03______1_f244cb_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03_________1
            objectName: "QUEST08-ML-SYS02-Model03-偏摆调整顶丝座-1"
            position: Qt.vector3d(-0.794715, 0.015, -0.223289)
            source: "meshes/quest08_ML_SYS02_Model03_________1_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03________14
            objectName: "QUEST08-ML-SYS02-Model03-固定环氧胶垫-14"
            position: Qt.vector3d(-0.723215, 0.214, -0.280289)
            rotation: Qt.quaternion(0.55557, -3.19736e-15, -4.21469e-08, 0.83147)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model03________14_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03________12
            objectName: "QUEST08-ML-SYS02-Model03-固定环氧胶垫-12"
            position: Qt.vector3d(-0.723215, 0.214, -0.280289)
            rotation: Qt.quaternion(0.980785, -4.21468e-08, 4.52789e-16, 0.19509)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model03________12_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03________16
            objectName: "QUEST08-ML-SYS02-Model03-固定环氧胶垫-16"
            position: Qt.vector3d(-0.723215, 0.214, -0.280289)
            rotation: Qt.quaternion(-0.19509, -4.52789e-16, -4.21468e-08, 0.980785)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model03________16_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03________18
            objectName: "QUEST08-ML-SYS02-Model03-固定环氧胶垫-18"
            position: Qt.vector3d(-0.723215, 0.214, -0.280289)
            rotation: Qt.quaternion(0.83147, -4.21468e-08, -2.13641e-15, -0.55557)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model03________18_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03________15
            objectName: "QUEST08-ML-SYS02-Model03-固定环氧胶垫-15"
            position: Qt.vector3d(-0.723215, 0.214, -0.280289)
            rotation: Qt.quaternion(0.19509, 4.52789e-16, -4.21468e-08, 0.980785)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model03________15_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03________17
            objectName: "QUEST08-ML-SYS02-Model03-固定环氧胶垫-17"
            position: Qt.vector3d(-0.723215, 0.214, -0.280289)
            rotation: Qt.quaternion(0.55557, -3.19736e-15, 4.21469e-08, -0.83147)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model03________17_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model03________13
            objectName: "QUEST08-ML-SYS02-Model03-固定环氧胶垫-13"
            position: Qt.vector3d(-0.723215, 0.214, -0.280289)
            rotation: Qt.quaternion(0.83147, -4.21468e-08, 2.13641e-15, 0.55557)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model03________13_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: _____TFZF8_8_MISUMI_1_4
            objectName: "无油衬套_TFZF8-8_MISUMI-1_4"
            position: Qt.vector3d(-0.892569, 0.025, -0.144037)
            rotation: Qt.quaternion(0.0841329, -0.702084, 0.702084, -0.0841328)
            source: "meshes/_____TFZF8_8_MISUMI_1_4_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: ____E_MSC8_25_MISUMI_1_4
            objectName: "定位销_E-MSC8-25_MISUMI-1_4"
            position: Qt.vector3d(-0.892569, 0.007, -0.144037)
            rotation: Qt.quaternion(0.702852, 0.702852, -0.077453, 0.077453)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/____E_MSC8_25_MISUMI_1_4_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: m6x0_25___5_2_3b3f4e
            objectName: "M6x0.25顶丝-5_2_3b3f4e"
            position: Qt.vector3d(-0.914139, 0.123, -0.154096)
            rotation: Qt.quaternion(0.916816, -0.335562, -0.203253, -0.0743924)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___5_2_3b3f4e_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___5_2_304ad8
            objectName: "M6x0.25顶丝-5_2_304ad8"
            position: Qt.vector3d(-0.914139, 0.123, -0.154096)
            rotation: Qt.quaternion(0.916816, -0.335562, -0.203253, -0.0743924)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___5_2_304ad8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: m6x0_25___6_1_3e15db
            objectName: "M6x0.25顶丝-6_1_3e15db"
            position: Qt.vector3d(-0.870999, 0.123, -0.133979)
            rotation: Qt.quaternion(0.100877, -0.191494, 0.455029, 0.863773)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___6_1_3e15db_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___6_1_b48de5
            objectName: "M6x0.25顶丝-6_1_b48de5"
            position: Qt.vector3d(-0.870999, 0.123, -0.133979)
            rotation: Qt.quaternion(0.100877, -0.191494, 0.455029, 0.863773)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___6_1_b48de5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________12_1
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-12_1"
            position: Qt.vector3d(-0.881694, 0.214, -0.138966)
            rotation: Qt.quaternion(-0.446748, 0.468563, 0.701254, -0.298508)
            source: "meshes/quest08_ML_SYS02_Model01________12_1_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________9_1
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-9_1"
            position: Qt.vector3d(-0.881694, 0.214, -0.138966)
            rotation: Qt.quaternion(-0.446748, -0.468563, 0.701254, 0.298508)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________9_1_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________7_1
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-7_1"
            position: Qt.vector3d(-0.881694, 0.214, -0.138966)
            rotation: Qt.quaternion(0.104822, 0.827186, -0.164537, -0.526976)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________7_1_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________13_1
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-13_1"
            position: Qt.vector3d(-0.881694, 0.214, -0.138966)
            rotation: Qt.quaternion(-0.298508, 0.701254, 0.468563, -0.446748)
            source: "meshes/quest08_ML_SYS02_Model01________13_1_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________11_1
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-11_1"
            position: Qt.vector3d(-0.881694, 0.214, -0.138966)
            rotation: Qt.quaternion(0.526976, -0.164538, -0.827186, 0.104822)
            source: "meshes/quest08_ML_SYS02_Model01________11_1_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________8_1
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-8_1"
            position: Qt.vector3d(-0.881694, 0.214, -0.138966)
            rotation: Qt.quaternion(0.298508, 0.701254, -0.468563, -0.446748)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________8_1_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________10_1
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-10_1"
            position: Qt.vector3d(-0.881694, 0.214, -0.138966)
            rotation: Qt.quaternion(0.526976, 0.164537, -0.827186, -0.104822)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________10_1_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_1
            objectName: "QUEST08-ML-SYS02-Model01-俯仰调节压板-1_1"
            position: Qt.vector3d(-0.906164, 0.123, -0.150377)
            rotation: Qt.quaternion(0.843391, 4.21468e-08, 0.5373, 2.10621e-15)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________1_1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: m6x0_25___3_2_2074e8
            objectName: "M6x0.25顶丝-3_2_2074e8"
            position: Qt.vector3d(-0.827371, 0.022, -0.199146)
            rotation: Qt.quaternion(0.153046, -0.153046, 0.690346, 0.690346)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___3_2_2074e8_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___3_2_70e476
            objectName: "M6x0.25顶丝-3_2_70e476"
            position: Qt.vector3d(-0.827371, 0.022, -0.199146)
            rotation: Qt.quaternion(0.153046, -0.153046, 0.690346, 0.690346)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___3_2_70e476_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_12___4_1
            objectName: "QUEST08-ML-SYS02-Model01-12球头-4_1"
            position: Qt.vector3d(-0.928144, 0.214, -0.0677465)
            rotation: Qt.quaternion(0.59599, -0.379335, 0.380521, -0.596745)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01_12___4_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_12___3_1
            objectName: "QUEST08-ML-SYS02-Model01-12球头-3_1"
            position: Qt.vector3d(-0.856995, 0.214, -0.220328)
            rotation: Qt.quaternion(0.153046, -0.153046, 0.690346, 0.690346)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01_12___3_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_________2_1
            objectName: "QUEST08-ML-SYS02-Model01-偏摆调整顶丝座-2_1"
            position: Qt.vector3d(-0.836252, 0.015, -0.203288)
            rotation: Qt.quaternion(0.843391, 4.21468e-08, 0.5373, 2.10621e-15)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01_________2_1_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_________1_1
            objectName: "QUEST08-ML-SYS02-Model01-偏摆调整顶丝座-1_1"
            position: Qt.vector3d(-0.901507, 0.015, -0.233717)
            rotation: Qt.quaternion(0.843391, 4.21468e-08, 0.5373, 2.10621e-15)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01_________1_1_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_______1_1_af6838
            objectName: "QUEST08-ML-SYS02-Model01-平面镜底板-1_1_af6838"
            position: Qt.vector3d(-0.904351, 2.13279e-10, -0.149531)
            rotation: Qt.quaternion(0.5373, -3.30608e-15, -0.843392, -4.21469e-08)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01_______1_1_af6838_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_______1_1_8b87fc
            objectName: "QUEST08-ML-SYS02-Model01-平面镜底板-1_1_8b87fc"
            position: Qt.vector3d(-0.904351, 2.13279e-10, -0.149531)
            rotation: Qt.quaternion(0.5373, -3.30608e-15, -0.843392, -4.21469e-08)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01_______1_1_8b87fc_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_1_2846b6
            objectName: "QUEST08-ML-SYS02-Model01-平面镜支撑架-1_1_2846b6"
            position: Qt.vector3d(-0.906164, 0.214, -0.150377)
            rotation: Qt.quaternion(0.843391, 4.21468e-08, 0.5373, 2.10621e-15)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________1_1_2846b6_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_1_c19174
            objectName: "QUEST08-ML-SYS02-Model01-平面镜支撑架-1_1_c19174"
            position: Qt.vector3d(-0.906164, 0.214, -0.150377)
            rotation: Qt.quaternion(0.843391, 4.21468e-08, 0.5373, 2.10621e-15)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________1_1_c19174_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_1_2c0458
            objectName: "QUEST08-ML-SYS02-Model01-平面镜支撑架-1_1_2c0458"
            position: Qt.vector3d(-0.906164, 0.214, -0.150377)
            rotation: Qt.quaternion(0.843391, 4.21468e-08, 0.5373, 2.10621e-15)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________1_1_2c0458_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_1_ce398b
            objectName: "QUEST08-ML-SYS02-Model01-平面镜支撑架-1_1_ce398b"
            position: Qt.vector3d(-0.906164, 0.214, -0.150377)
            rotation: Qt.quaternion(0.843391, 4.21468e-08, 0.5373, 2.10621e-15)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________1_1_ce398b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01______1_1
            objectName: "QUEST08-ML-SYS02-Model01-球头顶盖-1_1"
            position: Qt.vector3d(-0.850941, 0.214, -0.233309)
            rotation: Qt.quaternion(0.690346, 0.153046, -0.153046, -0.690346)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01______1_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: ___________1_2
            objectName: "图纸自建-平面反射镜-1_2"
            position: Qt.vector3d(-0.883911, 0.214, -0.14)
            rotation: Qt.quaternion(-0.373313, 0.606574, 0.585984, -0.38643)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/___________1_2_mesh.mesh"
            materials: [
                whitesolid_material866
            ]
        }
        Model {
            id: m6x0_25___2_4_310210
            objectName: "M6x0.25顶丝-2_4_310210"
            position: Qt.vector3d(-0.910388, 0.022, -0.237858)
            rotation: Qt.quaternion(0.690346, -0.690346, -0.153046, -0.153046)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___2_4_310210_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___2_4_f60914
            objectName: "M6x0.25顶丝-2_4_f60914"
            position: Qt.vector3d(-0.910388, 0.022, -0.237858)
            rotation: Qt.quaternion(0.690346, -0.690346, -0.153046, -0.153046)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___2_4_f60914_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_12795
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-1_1"
            position: Qt.vector3d(-0.881694, 0.214, -0.138966)
            rotation: Qt.quaternion(-0.104822, 0.827186, 0.164538, -0.526976)
            source: "meshes/quest08_ML_SYS02_Model01________1_1_mesh2796.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_______1_1_a51c42
            objectName: "QUEST08-ML-SYS02-Model01-平面镜镜室-1_1_a51c42"
            position: Qt.vector3d(-0.901632, 0.214, -0.148263)
            rotation: Qt.quaternion(-0.379928, 0.379928, 0.596368, 0.596368)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01_______1_1_a51c42_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_______1_1_506ca8
            objectName: "QUEST08-ML-SYS02-Model01-平面镜镜室-1_1_506ca8"
            position: Qt.vector3d(-0.901632, 0.214, -0.148263)
            rotation: Qt.quaternion(-0.379928, 0.379928, 0.596368, 0.596368)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01_______1_1_506ca8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS07_____________1_1_6a1d40_FA
            objectName: "QUEST08-ML-SYS07-二维电动平移台转接平板-1_1_6a1d40@FA"
            position: Qt.vector3d(0.774769, -0.00305794, 0.241966)
            rotation: Qt.quaternion(0.443557, 0.443557, -0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS07_____________1_1_6a1d40_FA_mesh.mesh"
            materials: [
                blue_material
            ]
        }
        Model {
            id: quest08_ML_SYS07_____________1_1_31c156_FA
            objectName: "QUEST08-ML-SYS07-二维电动平移台转接平板-1_1_31c156@FA"
            position: Qt.vector3d(0.774769, -0.00305794, 0.241966)
            rotation: Qt.quaternion(0.443557, 0.443557, -0.550688, 0.550688)
            source: "meshes/quest08_ML_SYS07_____________1_1_31c156_FA_mesh.mesh"
            materials: [
                defaultplastic_material205
            ]
        }
        Model {
            id: ________1_1_f1057b
            objectName: "联谊五维调整台-1_1_f1057b"
            position: Qt.vector3d(0.760786, -0.241258, 0.344735)
            rotation: Qt.quaternion(-0.443557, 0.443557, 0.550688, 0.550688)
            source: "meshes/________1_1_f1057b_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: __________A
            objectName: "联谊五维调整台上层-A"
            source: "meshes/__________A_mesh.mesh"
            materials: [
                defaultplastic_material502
            ]
        }
        Model {
            id: __________A2810
            objectName: "联谊五维调整台下层-A"
            source: "meshes/__________A_mesh2811.mesh"
            materials: [
                defaultplastic_material502
            ]
        }
        Model {
            id: quest08_ML_SYS07________1_1_FA
            objectName: "QUEST08-ML-SYS07-相机转接平板-1_1@FA"
            position: Qt.vector3d(0.772326, 0.148951, 0.241434)
            rotation: Qt.quaternion(-0.443557, -0.443557, 0.550688, -0.550688)
            source: "meshes/quest08_ML_SYS07________1_1_FA_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest_CCD_1_1_237551_FA
            objectName: "QUEST－CCD-1_1_237551@FA"
            position: Qt.vector3d(0.70744, 0.214, 0.227286)
            rotation: Qt.quaternion(0.627284, 1.83739e-17, -0.778791, -1.09471e-17)
            source: "meshes/quest_CCD_1_1_237551_FA_mesh.mesh"
            materials: [
                defaultplastic_material2816
            ]
        }
        Model {
            id: quest_CCD_1_1_cb43b3_FA
            objectName: "QUEST－CCD-1_1_cb43b3@FA"
            position: Qt.vector3d(0.70744, 0.214, 0.227286)
            rotation: Qt.quaternion(0.627284, 1.83739e-17, -0.778791, -1.09471e-17)
            source: "meshes/quest_CCD_1_1_cb43b3_FA_mesh.mesh"
            materials: [
                defaultplastic_material2819
            ]
        }
        Model {
            id: _____TFZF8_8_MISUMI_1_3
            objectName: "无油衬套_TFZF8-8_MISUMI-1_3"
            position: Qt.vector3d(0.300489, 0.0308, -0.145)
            rotation: Qt.quaternion(-0.336547, -0.621881, 0.621881, 0.336547)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_____TFZF8_8_MISUMI_1_3_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS05_part15_______3
            objectName: "QUEST08-ML-SYS05-part15-旋转移动块-3"
            position: Qt.vector3d(0.300489, 0.2198, -0.2225)
            rotation: Qt.quaternion(4.57766e-17, -0.707107, 0.707107, -1.11233e-16)
            source: "meshes/quest08_ML_SYS05_part15_______3_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: ____E_MSC8_25_MISUMI_1_3
            objectName: "定位销_E-MSC8-25_MISUMI-1_3"
            position: Qt.vector3d(0.300489, 0.0128, -0.145)
            rotation: Qt.quaternion(0.621881, 0.621881, 0.336547, -0.336547)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/____E_MSC8_25_MISUMI_1_3_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: m6x0_25___2_3_af04cb
            objectName: "M6x0.25顶丝-2_3_af04cb"
            position: Qt.vector3d(0.337289, 0.0278, -0.0805)
            rotation: Qt.quaternion(4.21468e-08, 1.66612e-16, 0.999529, -0.0306925)
            source: "meshes/m6x0_25___2_3_af04cb_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___2_3_36c2e5
            objectName: "M6x0.25顶丝-2_3_36c2e5"
            position: Qt.vector3d(0.337289, 0.0278, -0.0805)
            rotation: Qt.quaternion(4.21468e-08, 1.66612e-16, 0.999529, -0.0306925)
            source: "meshes/m6x0_25___2_3_36c2e5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part17_________2
            objectName: "QUEST08-ML-SYS05-part17-偏摆调整顶丝座-2"
            position: Qt.vector3d(0.326489, 0.0208, -0.0805)
            rotation: Qt.quaternion(0.707107, 5.67545e-19, 0.707107, -2.23033e-16)
            source: "meshes/quest08_ML_SYS05_part17_________2_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: m6x0_25___1_1_7235df
            objectName: "M6x0.25顶丝-1_1_7235df"
            position: Qt.vector3d(0.243689, 0.0278, -0.0805)
            rotation: Qt.quaternion(0.996149, -0.087675, 4.35801e-18, -1.58337e-16)
            source: "meshes/m6x0_25___1_1_7235df_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___1_1_c9d52b
            objectName: "M6x0.25顶丝-1_1_c9d52b"
            position: Qt.vector3d(0.243689, 0.0278, -0.0805)
            rotation: Qt.quaternion(0.996149, -0.087675, 4.35801e-18, -1.58337e-16)
            source: "meshes/m6x0_25___1_1_c9d52b_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part17_________1
            objectName: "QUEST08-ML-SYS05-part17-偏摆调整顶丝座-1"
            position: Qt.vector3d(0.254489, 0.0208, -0.0805)
            rotation: Qt.quaternion(0.707107, 5.67545e-19, 0.707107, -2.23033e-16)
            source: "meshes/quest08_ML_SYS05_part17_________1_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS05_part16________6
            objectName: "QUEST08-ML-SYS05-part16-旋转滚轴压板-6"
            position: Qt.vector3d(0.278489, 0.159274, -0.0344741)
            rotation: Qt.quaternion(3.03073e-17, -0.707107, 2.4296e-16, 0.707107)
            source: "meshes/quest08_ML_SYS05_part16________6_mesh.mesh"
            materials: [
                green_material
            ]
        }
        Model {
            id: quest08_ML_SYS05_part14_______3_06df48
            objectName: "QUEST08-ML-SYS05-part14-旋转固定块-3_06df48"
            position: Qt.vector3d(0.300489, 0.2448, -0.2595)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.68809e-16, -1.118e-16)
            source: "meshes/quest08_ML_SYS05_part14_______3_06df48_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part14_______3_b44976
            objectName: "QUEST08-ML-SYS05-part14-旋转固定块-3_b44976"
            position: Qt.vector3d(0.300489, 0.2448, -0.2595)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.68809e-16, -1.118e-16)
            source: "meshes/quest08_ML_SYS05_part14_______3_b44976_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part18______1
            objectName: "QUEST08-ML-SYS05-part18-金属轴环-1"
            position: Qt.vector3d(0.316489, 0.3143, -0.145)
            rotation: Qt.quaternion(1.48319e-32, 2.41376e-16, 1, -1.57307e-16)
            source: "meshes/quest08_ML_SYS05_part18______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: skf_support_roller_natr_8_0______1
            objectName: "skf_support_roller_natr_8_0-滚轮轴承-1"
            position: Qt.vector3d(0.305989, 0.3143, -0.145)
            rotation: Qt.quaternion(-4.21469e-08, 1.6658e-16, 0.999723, -0.0235337)
            source: "meshes/skf_support_roller_natr_8_0______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material2849
            ]
        }
        Model {
            id: _____E_SRBN12_5A_MISUMI_1
            objectName: "碟形弹簧_E-SRBN12.5A_MISUMI-1"
            position: Qt.vector3d(0.324339, 0.3143, -0.145)
            rotation: Qt.quaternion(0.56487, -0.42535, -0.42535, -0.56487)
            source: "meshes/_____E_SRBN12_5A_MISUMI_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part09_________1
            objectName: "QUEST08-ML-SYS05-part09-旋转支撑架底座-1"
            position: Qt.vector3d(0.300489, 0.0653, -0.145)
            rotation: Qt.quaternion(0.707107, -2.23033e-16, -0.707107, -5.67545e-19)
            source: "meshes/quest08_ML_SYS05_part09_________1_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_6_SHAFT______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-6/SHAFT_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(0.328449, 0.1723, -0.0887552)
            rotation: Qt.quaternion(0.965599, -0.193561, -0.170261, -0.03413)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_6_SHAFT______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_6_BASE______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-6/BASE_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(0.327519, 0.1723, -0.0890939)
            rotation: Qt.quaternion(0.965599, -0.193561, -0.170261, -0.03413)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_6_BASE______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part10______1_577723
            objectName: "QUEST08-ML-SYS05-part10-棱栅底板-1_577723"
            position: Qt.vector3d(0.290489, 0.00579999, -0.145)
            rotation: Qt.quaternion(0.707107, -2.23033e-16, -0.707107, -5.67545e-19)
            source: "meshes/quest08_ML_SYS05_part10______1_577723_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part10______1_4c2646
            objectName: "QUEST08-ML-SYS05-part10-棱栅底板-1_4c2646"
            position: Qt.vector3d(0.290489, 0.00579999, -0.145)
            rotation: Qt.quaternion(0.707107, -2.23033e-16, -0.707107, -5.67545e-19)
            source: "meshes/quest08_ML_SYS05_part10______1_4c2646_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: _______CNMR20_25_MISUMI_1_Roller________CNMR20_25_MISUMI_1
            objectName: "传送带用滚轮_CNMR20-25_MISUMI-1/Roller_传送带用滚轮_CNMR20-25_MISUMI-1"
            position: Qt.vector3d(0.313489, 0.1323, -0.2325)
            rotation: Qt.quaternion(-4.21468e-08, 4.59589e-16, 0.966274, 0.257515)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_______CNMR20_25_MISUMI_1_Roller________CNMR20_25_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _______CNMR20_25_MISUMI_1_Conveyor________CNMR20_25_MISUMI_1
            objectName: "传送带用滚轮_CNMR20-25_MISUMI-1/Conveyor_传送带用滚轮_CNMR20-25_MISUMI-1"
            position: Qt.vector3d(0.312489, 0.1323, -0.2325)
            rotation: Qt.quaternion(-4.21468e-08, 4.59589e-16, 0.966274, 0.257515)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_______CNMR20_25_MISUMI_1_Conveyor________CNMR20_25_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS05_part16________4_32f1e0
            objectName: "QUEST08-ML-SYS05-part16-旋转滚轴压板-4_32f1e0"
            position: Qt.vector3d(0.278489, 0.109274, -0.205526)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS05_part16________4_32f1e0_mesh.mesh"
            materials: [
                green_material
            ]
        }
        Model {
            id: quest08_ML_SYS05_part16________4_e8b7d1
            objectName: "QUEST08-ML-SYS05-part16-旋转滚轴压板-4_e8b7d1"
            position: Qt.vector3d(0.278489, 0.109274, -0.205526)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, -0.5)
            source: "meshes/quest08_ML_SYS05_part16________4_e8b7d1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part04_________6
            objectName: "QUEST08-ML-SYS05-part04-透镜压紧点卡盘-6"
            position: Qt.vector3d(0.32277, 0.1723, -0.0908224)
            rotation: Qt.quaternion(-0.298836, 0.5, 0.640856, 0.5)
            source: "meshes/quest08_ML_SYS05_part04_________6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: _____E_SRBN12_5A_MISUMI_2
            objectName: "碟形弹簧_E-SRBN12.5A_MISUMI-2"
            position: Qt.vector3d(0.324339, 0.1323, -0.2325)
            rotation: Qt.quaternion(0.611377, -0.355272, -0.355272, -0.611377)
            source: "meshes/_____E_SRBN12_5A_MISUMI_2_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part08_______________1_67cdc9
            objectName: "QUEST08-ML-SYS05-part08-透镜光轴方向压紧点底板窄边-1_67cdc9"
            position: Qt.vector3d(0.32473, 0.1723, -0.0815954)
            rotation: Qt.quaternion(0.819152, -1.00489e-16, 0.573576, -1.82021e-16)
            source: "meshes/quest08_ML_SYS05_part08_______________1_67cdc9_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part08_______________1_5519a1
            objectName: "QUEST08-ML-SYS05-part08-透镜光轴方向压紧点底板窄边-1_5519a1"
            position: Qt.vector3d(0.32473, 0.1723, -0.0815954)
            rotation: Qt.quaternion(0.819152, -1.00489e-16, 0.573576, -1.82021e-16)
            source: "meshes/quest08_ML_SYS05_part08_______________1_5519a1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_5_SHAFT______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-5/SHAFT_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(0.367935, 0.1723, -0.19724)
            rotation: Qt.quaternion(0.976767, -0.125587, -0.17223, -0.0221443)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_5_SHAFT______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_5_BASE______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-5/BASE_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(0.367004, 0.1723, -0.197579)
            rotation: Qt.quaternion(0.976767, -0.125587, -0.17223, -0.0221443)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_5_BASE______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part04_________5
            objectName: "QUEST08-ML-SYS05-part04-透镜压紧点卡盘-5"
            position: Qt.vector3d(0.362255, 0.1723, -0.199308)
            rotation: Qt.quaternion(0.62345, -0.100279, -0.333632, -0.69996)
            source: "meshes/quest08_ML_SYS05_part04_________5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________5_e73267
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-5_e73267"
            position: Qt.vector3d(0.267257, 0.1723, -0.0879354)
            rotation: Qt.quaternion(0.757533, 0.156318, -0.602569, -0.196519)
            source: "meshes/quest08_ML_SYS05_part03___________5_e73267_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________5_c5eecc
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-5_c5eecc"
            position: Qt.vector3d(0.267257, 0.1723, -0.0879354)
            rotation: Qt.quaternion(0.757533, 0.156318, -0.602569, -0.196519)
            source: "meshes/quest08_ML_SYS05_part03___________5_c5eecc_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part06_______________3
            objectName: "QUEST08-ML-SYS05-part06-透镜光轴方向定位点底板宽边-3"
            position: Qt.vector3d(0.244692, 0.1723, -0.205449)
            rotation: Qt.quaternion(0.782608, -2.41033e-16, -0.622515, -2.0733e-16)
            source: "meshes/quest08_ML_SYS05_part06_______________3_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest08_ML_SYS05_part04_________2
            objectName: "QUEST08-ML-SYS05-part04-透镜压紧点卡盘-2"
            position: Qt.vector3d(0.270489, 0.2823, -0.19)
            rotation: Qt.quaternion(0.314667, 4.75084e-16, 0.949202, -5.28924e-16)
            source: "meshes/quest08_ML_SYS05_part04_________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS05_part05_______________2
            objectName: "QUEST08-ML-SYS05-part05-透镜光轴方向定位点底板窄边-2"
            position: Qt.vector3d(0.273166, 0.1723, -0.0821155)
            rotation: Qt.quaternion(2.0733e-16, -0.622515, 2.41033e-16, 0.782608)
            source: "meshes/quest08_ML_SYS05_part05_______________2_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_3_SHAFT______C_SPJZ6_10P_MISUMI_1_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-3/SHAFT_弹簧柱塞_C-SPJZ6-10P_MISUMI-1_1"
            position: Qt.vector3d(0.270489, 0.288344, -0.19)
            rotation: Qt.quaternion(-0.24846, 0.662018, 0.662018, -0.24846)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_3_SHAFT______C_SPJZ6_10P_MISUMI_1_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_3_BASE______C_SPJZ6_10P_MISUMI_1_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-3/BASE_弹簧柱塞_C-SPJZ6-10P_MISUMI-1_1"
            position: Qt.vector3d(0.270489, 0.287354, -0.19)
            rotation: Qt.quaternion(-0.24846, 0.662018, 0.662018, -0.24846)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_3_BASE______C_SPJZ6_10P_MISUMI_1_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________1_215a1e
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-1_215a1e"
            position: Qt.vector3d(0.300489, 0.147848, -0.1)
            rotation: Qt.quaternion(0.588344, 0.588344, -0.392239, 0.392239)
            source: "meshes/quest08_ML_SYS05_part03___________1_215a1e_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________1_67594f
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-1_67594f"
            position: Qt.vector3d(0.300489, 0.147848, -0.1)
            rotation: Qt.quaternion(0.588344, 0.588344, -0.392239, 0.392239)
            source: "meshes/quest08_ML_SYS05_part03___________1_67594f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_4_SHAFT______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-4/SHAFT_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(0.300489, 0.2198, -0.0764559)
            rotation: Qt.quaternion(0.699057, -0.10639, -0.699057, -0.10639)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_4_SHAFT______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_4_BASE______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-4/BASE_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(0.300489, 0.2198, -0.077446)
            rotation: Qt.quaternion(0.699057, -0.10639, -0.699057, -0.10639)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_4_BASE______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part04_________4
            objectName: "QUEST08-ML-SYS05-part04-透镜压紧点卡盘-4"
            position: Qt.vector3d(0.300489, 0.2198, -0.0825)
            rotation: Qt.quaternion(-0.137637, -0.137637, 0.693582, 0.693582)
            source: "meshes/quest08_ML_SYS05_part04_________4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________4_f916f3
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-4_f916f3"
            position: Qt.vector3d(0.300489, 0.2198, -0.216952)
            rotation: Qt.quaternion(1.10061e-15, 0.806988, 0.590568, -4.21468e-08)
            source: "meshes/quest08_ML_SYS05_part03___________4_f916f3_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________4_657c9f
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-4_657c9f"
            position: Qt.vector3d(0.300489, 0.2198, -0.216952)
            rotation: Qt.quaternion(1.10061e-15, 0.806988, 0.590568, -4.21468e-08)
            source: "meshes/quest08_ML_SYS05_part03___________4_657c9f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part01______1_eab037
            objectName: "QUEST08-ML-SYS05-part01-棱栅镜室-1_eab037"
            position: Qt.vector3d(0.300489, 0.2198, -0.145)
            rotation: Qt.quaternion(-3.98199e-17, 0.707107, -2.62285e-16, -0.707107)
            source: "meshes/quest08_ML_SYS05_part01______1_eab037_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest08_ML_SYS05_part01______1_b3660c
            objectName: "QUEST08-ML-SYS05-part01-棱栅镜室-1_b3660c"
            position: Qt.vector3d(0.300489, 0.2198, -0.145)
            rotation: Qt.quaternion(-3.98199e-17, 0.707107, -2.62285e-16, -0.707107)
            source: "meshes/quest08_ML_SYS05_part01______1_b3660c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part01______1_c37bb1
            objectName: "QUEST08-ML-SYS05-part01-棱栅镜室-1_c37bb1"
            position: Qt.vector3d(0.300489, 0.2198, -0.145)
            rotation: Qt.quaternion(-3.98199e-17, 0.707107, -2.62285e-16, -0.707107)
            source: "meshes/quest08_ML_SYS05_part01______1_c37bb1_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part01______1_d725d0
            objectName: "QUEST08-ML-SYS05-part01-棱栅镜室-1_d725d0"
            position: Qt.vector3d(0.300489, 0.2198, -0.145)
            rotation: Qt.quaternion(-3.98199e-17, 0.707107, -2.62285e-16, -0.707107)
            source: "meshes/quest08_ML_SYS05_part01______1_d725d0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_2_SHAFT______C_SPJZ6_10P_MISUMI_1_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-2/SHAFT_弹簧柱塞_C-SPJZ6-10P_MISUMI-1_1"
            position: Qt.vector3d(0.330489, 0.288344, -0.19)
            rotation: Qt.quaternion(-0.491119, 0.508726, 0.508726, -0.491119)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_2_SHAFT______C_SPJZ6_10P_MISUMI_1_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_2_BASE______C_SPJZ6_10P_MISUMI_1_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-2/BASE_弹簧柱塞_C-SPJZ6-10P_MISUMI-1_1"
            position: Qt.vector3d(0.330489, 0.287354, -0.19)
            rotation: Qt.quaternion(-0.491119, 0.508726, 0.508726, -0.491119)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_2_BASE______C_SPJZ6_10P_MISUMI_1_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________3_8601c0
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-3_8601c0"
            position: Qt.vector3d(0.270489, 0.147848, -0.19)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS05_part03___________3_8601c0_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________3_348161
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-3_348161"
            position: Qt.vector3d(0.270489, 0.147848, -0.19)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS05_part03___________3_348161_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_1_SHAFT______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-1/SHAFT_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(0.300489, 0.288344, -0.1)
            rotation: Qt.quaternion(-0.148227, 0.691396, 0.691396, -0.148227)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_1_SHAFT______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_1_BASE______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-1/BASE_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(0.300489, 0.287354, -0.1)
            rotation: Qt.quaternion(-0.148227, 0.691396, 0.691396, -0.148227)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_1_BASE______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS05_part04_________3
            objectName: "QUEST08-ML-SYS05-part04-透镜压紧点卡盘-3"
            position: Qt.vector3d(0.330489, 0.2823, -0.19)
            rotation: Qt.quaternion(0.578051, 4.12504e-16, 0.816001, -3.62377e-16)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS05_part04_________3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS05_part02_______1_f1ba8e
            objectName: "QUEST08-ML-SYS05-part02-旋转支撑架-1_f1ba8e"
            position: Qt.vector3d(0.300489, 0.2198, -0.145)
            rotation: Qt.quaternion(0.707107, -2.23033e-16, -0.707107, -5.67545e-19)
            source: "meshes/quest08_ML_SYS05_part02_______1_f1ba8e_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest08_ML_SYS05_part02_______1_84f63f
            objectName: "QUEST08-ML-SYS05-part02-旋转支撑架-1_84f63f"
            position: Qt.vector3d(0.300489, 0.2198, -0.145)
            rotation: Qt.quaternion(0.707107, -2.23033e-16, -0.707107, -5.67545e-19)
            source: "meshes/quest08_ML_SYS05_part02_______1_84f63f_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part02_______1_c55be3
            objectName: "QUEST08-ML-SYS05-part02-旋转支撑架-1_c55be3"
            position: Qt.vector3d(0.300489, 0.2198, -0.145)
            rotation: Qt.quaternion(0.707107, -2.23033e-16, -0.707107, -5.67545e-19)
            source: "meshes/quest08_ML_SYS05_part02_______1_c55be3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part02_______1_94cfbb
            objectName: "QUEST08-ML-SYS05-part02-旋转支撑架-1_94cfbb"
            position: Qt.vector3d(0.300489, 0.2198, -0.145)
            rotation: Qt.quaternion(0.707107, -2.23033e-16, -0.707107, -5.67545e-19)
            source: "meshes/quest08_ML_SYS05_part02_______1_94cfbb_mesh.mesh"
            materials: [
                defaultplastic_material205
            ]
        }
        Model {
            id: quest08_ML_SYS05_part02_______1_7f3407
            objectName: "QUEST08-ML-SYS05-part02-旋转支撑架-1_7f3407"
            position: Qt.vector3d(0.300489, 0.2198, -0.145)
            rotation: Qt.quaternion(0.707107, -2.23033e-16, -0.707107, -5.67545e-19)
            source: "meshes/quest08_ML_SYS05_part02_______1_7f3407_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _________12944
            objectName: "图纸自建-棱栅镜-1"
            position: Qt.vector3d(0.300489, 0.2198, -0.2075)
            rotation: Qt.quaternion(-0.5, -0.5, 0.5, 0.5)
            source: "meshes/_________1_mesh2945.mesh"
            materials: [
                defaultplastic_material2946
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________2_2ce096
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-2_2ce096"
            position: Qt.vector3d(0.330489, 0.147848, -0.19)
            rotation: Qt.quaternion(-0.495429, -0.495429, 0.50453, -0.50453)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS05_part03___________2_2ce096_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________2_abd886
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-2_abd886"
            position: Qt.vector3d(0.330489, 0.147848, -0.19)
            rotation: Qt.quaternion(-0.495429, -0.495429, 0.50453, -0.50453)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS05_part03___________2_abd886_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part04_________1
            objectName: "QUEST08-ML-SYS05-part04-透镜压紧点卡盘-1"
            position: Qt.vector3d(0.300489, 0.2823, -0.1)
            rotation: Qt.quaternion(0.707107, 9.01398e-16, 0.707107, 1.14324e-16)
            source: "meshes/quest08_ML_SYS05_part04_________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS05_part07_______________1_f5d1d4
            objectName: "QUEST08-ML-SYS05-part07-透镜光轴方向压紧点底板宽边-1_f5d1d4"
            position: Qt.vector3d(0.37003, 0.1723, -0.206055)
            rotation: Qt.quaternion(2.49417e-16, 0.573576, 4.94568e-17, 0.819152)
            source: "meshes/quest08_ML_SYS05_part07_______________1_f5d1d4_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest08_ML_SYS05_part07_______________1_0a537a
            objectName: "QUEST08-ML-SYS05-part07-透镜光轴方向压紧点底板宽边-1_0a537a"
            position: Qt.vector3d(0.37003, 0.1723, -0.206055)
            rotation: Qt.quaternion(2.49417e-16, 0.573576, 4.94568e-17, 0.819152)
            source: "meshes/quest08_ML_SYS05_part07_______________1_0a537a_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________6_5d1c33
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-6_5d1c33"
            position: Qt.vector3d(0.24227, 0.1723, -0.196166)
            rotation: Qt.quaternion(0.761321, -0.144205, -0.605582, 0.18129)
            source: "meshes/quest08_ML_SYS05_part03___________6_5d1c33_mesh.mesh"
            materials: [
                red_material1362
            ]
        }
        Model {
            id: quest08_ML_SYS05_part03___________6_bfe100
            objectName: "QUEST08-ML-SYS05-part03-透镜定位点三角卡盘-6_bfe100"
            position: Qt.vector3d(0.24227, 0.1723, -0.196166)
            rotation: Qt.quaternion(0.761321, -0.144205, -0.605582, 0.18129)
            source: "meshes/quest08_ML_SYS05_part03___________6_bfe100_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part14_______5_201f16
            objectName: "QUEST08-ML-SYS05-part14-旋转固定块-5_201f16"
            position: Qt.vector3d(0.300489, 0.1948, -0.2595)
            rotation: Qt.quaternion(1.118e-16, -1.118e-16, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS05_part14_______5_201f16_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS05_part14_______5_5e25bb
            objectName: "QUEST08-ML-SYS05-part14-旋转固定块-5_5e25bb"
            position: Qt.vector3d(0.300489, 0.1948, -0.2595)
            rotation: Qt.quaternion(1.118e-16, -1.118e-16, -0.707107, 0.707107)
            source: "meshes/quest08_ML_SYS05_part14_______5_5e25bb_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: _______CNMR20_25_MISUMI_2_Roller________CNMR20_25_MISUMI_1
            objectName: "传送带用滚轮_CNMR20-25_MISUMI-2/Roller_传送带用滚轮_CNMR20-25_MISUMI-1"
            position: Qt.vector3d(0.313489, 0.1323, -0.0575)
            rotation: Qt.quaternion(-4.21468e-08, -4.59589e-16, 0.966274, -0.257515)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_______CNMR20_25_MISUMI_2_Roller________CNMR20_25_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _______CNMR20_25_MISUMI_2_Conveyor________CNMR20_25_MISUMI_1
            objectName: "传送带用滚轮_CNMR20-25_MISUMI-2/Conveyor_传送带用滚轮_CNMR20-25_MISUMI-1"
            position: Qt.vector3d(0.312489, 0.1323, -0.0575)
            rotation: Qt.quaternion(-4.21468e-08, -4.59589e-16, 0.966274, -0.257515)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_______CNMR20_25_MISUMI_2_Conveyor________CNMR20_25_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____E_SRBN12_5A_MISUMI_3
            objectName: "碟形弹簧_E-SRBN12.5A_MISUMI-3"
            position: Qt.vector3d(0.324339, 0.1323, -0.0575)
            rotation: Qt.quaternion(0.611377, 0.355272, 0.355272, -0.611377)
            source: "meshes/_____E_SRBN12_5A_MISUMI_3_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: _____TFZF8_8_MISUMI_1_2
            objectName: "无油衬套_TFZF8-8_MISUMI-1_2"
            position: Qt.vector3d(-0.719947, 0.025, 0.0604879)
            rotation: Qt.quaternion(0.616445, 0.346404, -0.346404, -0.616445)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_____TFZF8_8_MISUMI_1_2_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: ____E_MSC8_25_MISUMI_1_2
            objectName: "定位销_E-MSC8-25_MISUMI-1_2"
            position: Qt.vector3d(-0.719947, 0.007, 0.0604879)
            rotation: Qt.quaternion(0.340527, 0.340527, 0.619711, -0.619711)
            source: "meshes/____E_MSC8_25_MISUMI_1_2_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: m6x0_25___5_1_c5b70f
            objectName: "M6x0.25顶丝-5_1_c5b70f"
            position: Qt.vector3d(-0.711807, 0.123, 0.0828526)
            rotation: Qt.quaternion(0.538632, -0.197144, 0.769246, 0.28155)
            source: "meshes/m6x0_25___5_1_c5b70f_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___5_1_093950
            objectName: "M6x0.25顶丝-5_1_093950"
            position: Qt.vector3d(-0.711807, 0.123, 0.0828526)
            rotation: Qt.quaternion(0.538632, -0.197144, 0.769246, 0.28155)
            source: "meshes/m6x0_25___5_1_093950_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: m6x0_25___6_4f5e90
            objectName: "M6x0.25顶丝-6_4f5e90"
            position: Qt.vector3d(-0.728087, 0.123, 0.0381232)
            rotation: Qt.quaternion(-0.381788, 0.72474, 0.26733, 0.507469)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___6_4f5e90_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___6_3a0cc3
            objectName: "M6x0.25顶丝-6_3a0cc3"
            position: Qt.vector3d(-0.728087, 0.123, 0.0381232)
            rotation: Qt.quaternion(-0.381788, 0.72474, 0.26733, 0.507469)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/m6x0_25___6_3a0cc3_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________12
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-12"
            position: Qt.vector3d(-0.724051, 0.214, 0.0492116)
            rotation: Qt.quaternion(0.818838, 0.0964737, 0.144383, 0.54713)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________12_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________9
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-9"
            position: Qt.vector3d(-0.724051, 0.214, 0.0492116)
            rotation: Qt.quaternion(0.818838, -0.0964738, 0.144383, -0.54713)
            source: "meshes/quest08_ML_SYS02_Model01________9_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________7
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-7"
            position: Qt.vector3d(-0.724051, 0.214, 0.0492116)
            rotation: Qt.quaternion(-0.192126, 0.170312, -0.0338772, 0.965885)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________7_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________13
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-13"
            position: Qt.vector3d(-0.724051, 0.214, 0.0492116)
            rotation: Qt.quaternion(0.54713, 0.144383, 0.0964737, 0.818838)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________13_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________11
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-11"
            position: Qt.vector3d(-0.724051, 0.214, 0.0492116)
            rotation: Qt.quaternion(0.965885, 0.0338771, 0.170312, 0.192126)
            source: "meshes/quest08_ML_SYS02_Model01________11_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________8
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-8"
            position: Qt.vector3d(-0.724051, 0.214, 0.0492116)
            rotation: Qt.quaternion(0.54713, -0.144383, 0.0964738, -0.818838)
            source: "meshes/quest08_ML_SYS02_Model01________8_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________10
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-10"
            position: Qt.vector3d(-0.724051, 0.214, 0.0492116)
            rotation: Qt.quaternion(0.965885, -0.0338771, 0.170312, -0.192126)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01________10_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1
            objectName: "QUEST08-ML-SYS02-Model01-俯仰调节压板-1"
            position: Qt.vector3d(-0.714817, 0.123, 0.0745833)
            rotation: Qt.quaternion(-0.173648, 0, 0.984808, 4.21468e-08)
            source: "meshes/quest08_ML_SYS02_Model01________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: m6x0_25___3_1_a1bcb3
            objectName: "M6x0.25顶丝-3_1_a1bcb3"
            position: Qt.vector3d(-0.805018, 0.022, 0.0533535)
            rotation: Qt.quaternion(0.579228, -0.579228, -0.40558, -0.40558)
            source: "meshes/m6x0_25___3_1_a1bcb3_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___3_1_18e917
            objectName: "M6x0.25顶丝-3_1_18e917"
            position: Qt.vector3d(-0.805018, 0.022, 0.0533535)
            rotation: Qt.quaternion(0.579228, -0.579228, -0.40558, -0.40558)
            source: "meshes/m6x0_25___3_1_18e917_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_12___4
            objectName: "QUEST08-ML-SYS02-Model01-12球头-4"
            position: Qt.vector3d(-0.640846, 0.214, 0.0316975)
            rotation: Qt.quaternion(0.12348, 0.696486, -0.696242, -0.122095)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model01_12___4_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_12___3
            objectName: "QUEST08-ML-SYS02-Model01-12球头-3"
            position: Qt.vector3d(-0.799048, 0.214, 0.0892782)
            rotation: Qt.quaternion(0.579228, -0.579228, -0.40558, -0.40558)
            source: "meshes/quest08_ML_SYS02_Model01_12___3_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_________2
            objectName: "QUEST08-ML-SYS02-Model01-偏摆调整顶丝座-2"
            position: Qt.vector3d(-0.801666, 0.015, 0.0625625)
            rotation: Qt.quaternion(-0.173648, -2.2547e-16, 0.984808, 4.21468e-08)
            source: "meshes/quest08_ML_SYS02_Model01_________2_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_________1
            objectName: "QUEST08-ML-SYS02-Model01-偏摆调整顶丝座-1"
            position: Qt.vector3d(-0.77704, 0.015, 0.13022)
            rotation: Qt.quaternion(-0.173648, -2.2547e-16, 0.984808, 4.21468e-08)
            source: "meshes/quest08_ML_SYS02_Model01_________1_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_______1_67dbad
            objectName: "QUEST08-ML-SYS02-Model01-平面镜底板-1_67dbad"
            position: Qt.vector3d(-0.715501, -2.49038e-10, 0.0727039)
            rotation: Qt.quaternion(0.984808, 4.21468e-08, 0.173648, 0)
            source: "meshes/quest08_ML_SYS02_Model01_______1_67dbad_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_______1_475723
            objectName: "QUEST08-ML-SYS02-Model01-平面镜底板-1_475723"
            position: Qt.vector3d(-0.715501, -2.49038e-10, 0.0727039)
            rotation: Qt.quaternion(0.984808, 4.21468e-08, 0.173648, 0)
            source: "meshes/quest08_ML_SYS02_Model01_______1_475723_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_79e464
            objectName: "QUEST08-ML-SYS02-Model01-平面镜支撑架-1_79e464"
            position: Qt.vector3d(-0.714817, 0.214, 0.0745833)
            rotation: Qt.quaternion(-0.173648, 0, 0.984808, 4.21468e-08)
            source: "meshes/quest08_ML_SYS02_Model01________1_79e464_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_522b87
            objectName: "QUEST08-ML-SYS02-Model01-平面镜支撑架-1_522b87"
            position: Qt.vector3d(-0.714817, 0.214, 0.0745833)
            rotation: Qt.quaternion(-0.173648, 0, 0.984808, 4.21468e-08)
            source: "meshes/quest08_ML_SYS02_Model01________1_522b87_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_ca217c
            objectName: "QUEST08-ML-SYS02-Model01-平面镜支撑架-1_ca217c"
            position: Qt.vector3d(-0.714817, 0.214, 0.0745833)
            rotation: Qt.quaternion(-0.173648, 0, 0.984808, 4.21468e-08)
            source: "meshes/quest08_ML_SYS02_Model01________1_ca217c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________1_14be90
            objectName: "QUEST08-ML-SYS02-Model01-平面镜支撑架-1_14be90"
            position: Qt.vector3d(-0.714817, 0.214, 0.0745833)
            rotation: Qt.quaternion(-0.173648, 0, 0.984808, 4.21468e-08)
            source: "meshes/quest08_ML_SYS02_Model01________1_14be90_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01______1
            objectName: "QUEST08-ML-SYS02-Model01-球头顶盖-1"
            position: Qt.vector3d(-0.812507, 0.214, 0.0941769)
            rotation: Qt.quaternion(0.40558, -0.579228, 0.579228, -0.40558)
            source: "meshes/quest08_ML_SYS02_Model01______1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: ___________1_1
            objectName: "图纸自建-平面反射镜-1_1"
            position: Qt.vector3d(-0.723215, 0.214, 0.0515111)
            rotation: Qt.quaternion(0.68424, 0.124889, 0.12065, 0.708281)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/___________1_1_mesh.mesh"
            materials: [
                whitesolid_material866
            ]
        }
        Model {
            id: m6x0_25___2_2_8c77d0
            objectName: "M6x0.25顶丝-2_2_8c77d0"
            position: Qt.vector3d(-0.773689, 0.022, 0.139429)
            rotation: Qt.quaternion(0.40558, -0.40558, 0.579228, 0.579228)
            source: "meshes/m6x0_25___2_2_8c77d0_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___2_2_52f0d2
            objectName: "M6x0.25顶丝-2_2_52f0d2"
            position: Qt.vector3d(-0.773689, 0.022, 0.139429)
            rotation: Qt.quaternion(0.40558, -0.40558, 0.579228, 0.579228)
            source: "meshes/m6x0_25___2_2_52f0d2_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01________13031
            objectName: "QUEST08-ML-SYS02-Model01-固定环氧胶垫-1"
            position: Qt.vector3d(-0.724051, 0.214, 0.0492116)
            rotation: Qt.quaternion(0.192126, 0.170312, 0.033877, 0.965885)
            source: "meshes/quest08_ML_SYS02_Model01________1_mesh3032.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_______1_bccd81
            objectName: "QUEST08-ML-SYS02-Model01-平面镜镜室-1_bccd81"
            position: Qt.vector3d(-0.716527, 0.214, 0.0698849)
            rotation: Qt.quaternion(0.696364, -0.696364, 0.122788, 0.122788)
            source: "meshes/quest08_ML_SYS02_Model01_______1_bccd81_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model01_______1_2658bf
            objectName: "QUEST08-ML-SYS02-Model01-平面镜镜室-1_2658bf"
            position: Qt.vector3d(-0.716527, 0.214, 0.0698849)
            rotation: Qt.quaternion(0.696364, -0.696364, 0.122788, 0.122788)
            source: "meshes/quest08_ML_SYS02_Model01_______1_2658bf_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS07_____________1_920c7d_FB
            objectName: "QUEST08-ML-SYS07-二维电动平移台转接平板-1_920c7d@FB"
            position: Qt.vector3d(0.840452, -0.00305794, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS07_____________1_920c7d_FB_mesh.mesh"
            materials: [
                blue_material
            ]
        }
        Model {
            id: quest08_ML_SYS07_____________1_5a16bb_FB
            objectName: "QUEST08-ML-SYS07-二维电动平移台转接平板-1_5a16bb@FB"
            position: Qt.vector3d(0.840452, -0.00305794, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS07_____________1_5a16bb_FB_mesh.mesh"
            materials: [
                defaultplastic_material205
            ]
        }
        Model {
            id: ________1_bc1bba
            objectName: "联谊五维调整台-1_bc1bba"
            position: Qt.vector3d(0.848683, -0.241258, -0.0366112)
            rotation: Qt.quaternion(-0.5, 0.5, 0.5, 0.5)
            source: "meshes/________1_bc1bba_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: __________B
            objectName: "联谊五维调整台上层-B"
            source: "meshes/__________B_mesh.mesh"
            materials: [
                defaultplastic_material502
            ]
        }
        Model {
            id: __________B3045
            objectName: "联谊五维调整台下层-B"
            source: "meshes/__________B_mesh3046.mesh"
            materials: [
                defaultplastic_material502
            ]
        }
        Model {
            id: quest08_ML_SYS07________1_FB
            objectName: "QUEST08-ML-SYS07-相机转接平板-1@FB"
            position: Qt.vector3d(0.837952, 0.148951, -0.14)
            rotation: Qt.quaternion(0.5, 0.5, -0.5, 0.5)
            source: "meshes/quest08_ML_SYS07________1_FB_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest_CCD_1_5e596a_FB
            objectName: "QUEST－CCD-1_5e596a@FB"
            position: Qt.vector3d(0.771541, 0.214, -0.14)
            rotation: Qt.quaternion(0.707107, 1.68848e-16, -0.707107, 1.64495e-16)
            source: "meshes/quest_CCD_1_5e596a_FB_mesh.mesh"
            materials: [
                defaultplastic_material2816
            ]
        }
        Model {
            id: quest_CCD_1_2ec6e0_FB
            objectName: "QUEST－CCD-1_2ec6e0@FB"
            position: Qt.vector3d(0.771541, 0.214, -0.14)
            rotation: Qt.quaternion(0.707107, 1.68848e-16, -0.707107, 1.64495e-16)
            source: "meshes/quest_CCD_1_2ec6e0_FB_mesh.mesh"
            materials: [
                defaultplastic_material2819
            ]
        }
        Model {
            id: _____TFZF8_8_MISUMI_1_1
            objectName: "无油衬套_TFZF8-8_MISUMI-1_1"
            position: Qt.vector3d(-0.155571, 0.025, 0.0189158)
            rotation: Qt.quaternion(-0.217682, -0.672766, 0.672766, 0.217682)
            source: "meshes/_____TFZF8_8_MISUMI_1_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02________1
            objectName: "QUEST08-ML-SYS02-Model02-俯仰调节压板-1"
            position: Qt.vector3d(-0.164106, 0.123, 0.0217715)
            rotation: Qt.quaternion(-1.06997e-16, -0.58425, 7.70269e-17, 0.811574)
            source: "meshes/quest08_ML_SYS02_Model02________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02_12___4
            objectName: "QUEST08-ML-SYS02-Model02-12球头-4"
            position: Qt.vector3d(-0.128861, 0.214, 0.0987433)
            rotation: Qt.quaternion(0.412556, -0.573458, 0.57428, -0.413697)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model02_12___4_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: m6x0_25___5_e7adae
            objectName: "M6x0.25顶丝-5_e7adae"
            position: Qt.vector3d(-0.133001, 0.123, 0.0113639)
            rotation: Qt.quaternion(-0.108825, 0.118302, 0.668208, 0.726402)
            source: "meshes/m6x0_25___5_e7adae_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___5_168cb0
            objectName: "M6x0.25顶丝-5_168cb0"
            position: Qt.vector3d(-0.133001, 0.123, 0.0113639)
            rotation: Qt.quaternion(-0.108825, 0.118302, 0.668208, 0.726402)
            source: "meshes/m6x0_25___5_168cb0_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: m6x0_25___4_2abf35
            objectName: "M6x0.25顶丝-4_2abf35"
            position: Qt.vector3d(-0.178141, 0.123, 0.0264676)
            rotation: Qt.quaternion(0.970344, -0.18054, 0.158031, 0.0294027)
            source: "meshes/m6x0_25___4_2abf35_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___4_8d6ed5
            objectName: "M6x0.25顶丝-4_8d6ed5"
            position: Qt.vector3d(-0.178141, 0.123, 0.0264676)
            rotation: Qt.quaternion(0.970344, -0.18054, 0.158031, 0.0294027)
            source: "meshes/m6x0_25___4_8d6ed5_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ____E_MSC8_25_MISUMI_1_1
            objectName: "定位销_E-MSC8-25_MISUMI-1_1"
            position: Qt.vector3d(-0.155571, 0.007, 0.0189158)
            rotation: Qt.quaternion(0.641556, 0.641556, 0.297331, -0.297331)
            source: "meshes/____E_MSC8_25_MISUMI_1_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: m6x0_25___3_5efff3
            objectName: "M6x0.25顶丝-3_5efff3"
            position: Qt.vector3d(-0.0989334, 0.022, 0.0753614)
            rotation: Qt.quaternion(-0.113662, 0.113662, 0.697912, 0.697912)
            source: "meshes/m6x0_25___3_5efff3_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___3_f431fa
            objectName: "M6x0.25顶丝-3_f431fa"
            position: Qt.vector3d(-0.0989334, 0.022, 0.0753614)
            rotation: Qt.quaternion(-0.113662, 0.113662, 0.697912, 0.697912)
            source: "meshes/m6x0_25___3_f431fa_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02_________2
            objectName: "QUEST08-ML-SYS02-Model02-偏摆调整顶丝座-2"
            position: Qt.vector3d(-0.108227, 0.015, 0.078471)
            rotation: Qt.quaternion(0.58425, -9.69075e-19, 0.811574, -6.9097e-17)
            source: "meshes/quest08_ML_SYS02_Model02_________2_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02______1
            objectName: "QUEST08-ML-SYS02-Model02-球头顶盖-1"
            position: Qt.vector3d(-0.186825, 0.214, -0.0744941)
            rotation: Qt.quaternion(0.697912, -0.113662, 0.113662, -0.697912)
            source: "meshes/quest08_ML_SYS02_Model02______1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: m6x0_25___2_1_25a148
            objectName: "M6x0.25顶丝-2_1_25a148"
            position: Qt.vector3d(-0.1858, 0.022, 0.104427)
            rotation: Qt.quaternion(0.697912, -0.697912, 0.113662, 0.113662)
            source: "meshes/m6x0_25___2_1_25a148_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___2_1_3db063
            objectName: "M6x0.25顶丝-2_1_3db063"
            position: Qt.vector3d(-0.1858, 0.022, 0.104427)
            rotation: Qt.quaternion(0.697912, -0.697912, 0.113662, 0.113662)
            source: "meshes/m6x0_25___2_1_3db063_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02________13081
            objectName: "QUEST08-ML-SYS02-Model02-固定环氧胶垫-1"
            position: Qt.vector3d(-0.144191, 0.214, 0.0151081)
            rotation: Qt.quaternion(0.15833, -0.573023, -0.113982, 0.79598)
            source: "meshes/quest08_ML_SYS02_Model02________1_mesh3082.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02_________1_5b65d7
            objectName: "QUEST08-ML-SYS02-Model02-异形平面镜底板-1_5b65d7"
            position: Qt.vector3d(-0.167899, 2.77556e-17, 0.0230407)
            rotation: Qt.quaternion(0.811574, -1.54345e-17, -0.58425, 2.14399e-17)
            source: "meshes/quest08_ML_SYS02_Model02_________1_5b65d7_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02_________1_905f7b
            objectName: "QUEST08-ML-SYS02-Model02-异形平面镜底板-1_905f7b"
            position: Qt.vector3d(-0.167899, 2.77556e-17, 0.0230407)
            rotation: Qt.quaternion(0.811574, -1.54345e-17, -0.58425, 2.14399e-17)
            source: "meshes/quest08_ML_SYS02_Model02_________1_905f7b_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02_______1_203ea9
            objectName: "QUEST08-ML-SYS02-Model02-平面镜镜室-1_203ea9"
            position: Qt.vector3d(-0.165054, 0.214, 0.0220888)
            rotation: Qt.quaternion(0.573869, -0.573869, -0.413127, -0.413127)
            source: "meshes/quest08_ML_SYS02_Model02_______1_203ea9_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02_______1_874674
            objectName: "QUEST08-ML-SYS02-Model02-平面镜镜室-1_874674"
            position: Qt.vector3d(-0.165054, 0.214, 0.0220888)
            rotation: Qt.quaternion(0.573869, -0.573869, -0.413127, -0.413127)
            source: "meshes/quest08_ML_SYS02_Model02_______1_874674_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02_12___3
            objectName: "QUEST08-ML-SYS02-Model02-12球头-3"
            position: Qt.vector3d(-0.182281, 0.214, -0.0609114)
            rotation: Qt.quaternion(-0.113662, 0.113662, 0.697912, 0.697912)
            source: "meshes/quest08_ML_SYS02_Model02_12___3_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02_________1
            objectName: "QUEST08-ML-SYS02-Model02-偏摆调整顶丝座-1"
            position: Qt.vector3d(-0.176506, 0.015, 0.101317)
            rotation: Qt.quaternion(0.58425, -9.69075e-19, 0.811574, -6.9097e-17)
            source: "meshes/quest08_ML_SYS02_Model02_________1_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: ___________1
            objectName: "图纸自建-平面反射镜-1"
            position: Qt.vector3d(-0.146511, 0.214, 0.0158846)
            rotation: Qt.quaternion(0.567635, -0.417567, -0.408639, 0.580037)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/___________1_mesh.mesh"
            materials: [
                whitesolid_material866
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02__________1_981a3b
            objectName: "QUEST08-ML-SYS02-Model02-异形平面镜支撑架-1_981a3b"
            position: Qt.vector3d(-0.169796, 0.214, 0.0236753)
            rotation: Qt.quaternion(0.58425, 7.2487e-17, 0.811574, -1.62162e-17)
            source: "meshes/quest08_ML_SYS02_Model02__________1_981a3b_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02__________1_cfbf37
            objectName: "QUEST08-ML-SYS02-Model02-异形平面镜支撑架-1_cfbf37"
            position: Qt.vector3d(-0.169796, 0.214, 0.0236753)
            rotation: Qt.quaternion(0.58425, 7.2487e-17, 0.811574, -1.62162e-17)
            source: "meshes/quest08_ML_SYS02_Model02__________1_cfbf37_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02__________1_115260
            objectName: "QUEST08-ML-SYS02-Model02-异形平面镜支撑架-1_115260"
            position: Qt.vector3d(-0.169796, 0.214, 0.0236753)
            rotation: Qt.quaternion(0.58425, 7.2487e-17, 0.811574, -1.62162e-17)
            source: "meshes/quest08_ML_SYS02_Model02__________1_115260_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02__________1_dbce7c
            objectName: "QUEST08-ML-SYS02-Model02-异形平面镜支撑架-1_dbce7c"
            position: Qt.vector3d(-0.169796, 0.214, 0.0236753)
            rotation: Qt.quaternion(0.58425, 7.2487e-17, 0.811574, -1.62162e-17)
            source: "meshes/quest08_ML_SYS02_Model02__________1_dbce7c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02________13
            objectName: "QUEST08-ML-SYS02-Model02-固定环氧胶垫-13"
            position: Qt.vector3d(-0.144191, 0.214, 0.0151081)
            rotation: Qt.quaternion(0.450886, -0.485786, -0.324592, 0.674799)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model02________13_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02________11
            objectName: "QUEST08-ML-SYS02-Model02-固定环氧胶垫-11"
            position: Qt.vector3d(-0.144191, 0.214, 0.0151081)
            rotation: Qt.quaternion(0.79598, -0.113982, -0.573023, 0.15833)
            source: "meshes/quest08_ML_SYS02_Model02________11_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02________9
            objectName: "QUEST08-ML-SYS02-Model02-固定环氧胶垫-9"
            position: Qt.vector3d(-0.144191, 0.214, 0.0151081)
            rotation: Qt.quaternion(0.674799, 0.324592, -0.485786, -0.450886)
            source: "meshes/quest08_ML_SYS02_Model02________9_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02________7
            objectName: "QUEST08-ML-SYS02-Model02-固定环氧胶垫-7"
            position: Qt.vector3d(-0.144191, 0.214, 0.0151081)
            rotation: Qt.quaternion(-0.15833, -0.573023, 0.113981, 0.79598)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model02________7_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02________12
            objectName: "QUEST08-ML-SYS02-Model02-固定环氧胶垫-12"
            position: Qt.vector3d(-0.144191, 0.214, 0.0151081)
            rotation: Qt.quaternion(0.674799, -0.324592, -0.485786, 0.450886)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model02________12_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02________8
            objectName: "QUEST08-ML-SYS02-Model02-固定环氧胶垫-8"
            position: Qt.vector3d(-0.144191, 0.214, 0.0151081)
            rotation: Qt.quaternion(-0.450886, -0.485786, 0.324592, 0.674799)
            source: "meshes/quest08_ML_SYS02_Model02________8_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: quest08_ML_SYS02_Model02________10
            objectName: "QUEST08-ML-SYS02-Model02-固定环氧胶垫-10"
            position: Qt.vector3d(-0.144191, 0.214, 0.0151081)
            rotation: Qt.quaternion(0.79598, 0.113981, -0.573023, -0.15833)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS02_Model02________10_mesh.mesh"
            materials: [
                pink_material2708
            ]
        }
        Model {
            id: node01_00_________Lamost_1
            objectName: "01-00________-Lamost-1"
            position: Qt.vector3d(0.0949164, 0.214, -0.3802)
            rotation: Qt.quaternion(0.503045, 0.503045, -0.496936, 0.496936)
            source: "meshes/node01_00_________Lamost_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__20_3
            objectName: "GBT70.1____M3__20-3"
            position: Qt.vector3d(0.0875459, 0.266611, -0.410487)
            rotation: Qt.quaternion(0.681882, -0.178837, 0.187182, 0.684118)
            source: "meshes/gbt70_1____M3__20_3_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_4
            objectName: "GBT70.1____M3__25-4"
            position: Qt.vector3d(0.0946264, 0.269921, -0.403935)
            rotation: Qt.quaternion(0.681882, -0.178837, 0.187182, 0.684118)
            source: "meshes/gbt70_1____M3__25_4_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_3
            objectName: "GBT70.1____M3__25-3"
            position: Qt.vector3d(0.0944698, 0.165483, -0.416757)
            rotation: Qt.quaternion(0.178837, -0.681882, 0.684118, 0.187182)
            source: "meshes/gbt70_1____M3__25_3_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_6
            objectName: "GBT70.1____M3__25-6"
            position: Qt.vector3d(0.0944698, 0.262517, -0.416757)
            rotation: Qt.quaternion(0.681882, -0.178837, 0.187182, 0.684118)
            source: "meshes/gbt70_1____M3__25_6_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_5
            objectName: "GBT70.1____M3__25-5"
            position: Qt.vector3d(0.0946264, 0.158079, -0.403935)
            rotation: Qt.quaternion(0.178837, -0.681882, 0.684118, 0.187182)
            source: "meshes/gbt70_1____M3__25_5_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__20_1
            objectName: "GBT70.1____M3__20-1"
            position: Qt.vector3d(0.0886591, 0.214, -0.319369)
            rotation: Qt.quaternion(0.503045, 0.503045, -0.496936, 0.496936)
            source: "meshes/gbt70_1____M3__20_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_2
            objectName: "GBT70.1____M3__25-2"
            position: Qt.vector3d(0.0956531, 0.206596, -0.319907)
            rotation: Qt.quaternion(0.503045, 0.503045, -0.496936, 0.496936)
            source: "meshes/gbt70_1____M3__25_2_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__20_2
            objectName: "GBT70.1____M3__20-2"
            position: Qt.vector3d(0.0875459, 0.161389, -0.410487)
            rotation: Qt.quaternion(0.178837, -0.681882, 0.684118, 0.187182)
            source: "meshes/gbt70_1____M3__20_2_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: gbt70_1____M3__25_1
            objectName: "GBT70.1____M3__25-1"
            position: Qt.vector3d(0.0956531, 0.221404, -0.319907)
            rotation: Qt.quaternion(0.503045, 0.503045, -0.496936, 0.496936)
            source: "meshes/gbt70_1____M3__25_1_mesh.mesh"
            materials: [
                defaultplastic_material457
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part18____________1
            objectName: "QUEST08-ML-SYS03-Part18-光栅底部挡块万向球头-1"
            position: Qt.vector3d(-0.0243047, 0.149184, 0.0670476)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part18____________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part13_____________2
            objectName: "QUEST08-ML-SYS03-Part13-聚四氟乙烯薄垫(挡块)-2"
            position: Qt.vector3d(-0.0219174, 0.149684, 0.0679165)
            rotation: Qt.quaternion(0.579228, 0.579228, 0.40558, -0.40558)
            source: "meshes/quest08_ML_SYS03_Part13_____________2_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: _____SPJZ4_MISUMI_3_NEZI______SPJZ4_MISUMI_1_9dd129
            objectName: "行程柱塞_SPJZ4_MISUMI-3/NEZI_行程柱塞_SPJZ4_MISUMI-1_9dd129"
            position: Qt.vector3d(0.00935357, 0.199, 0.0143833)
            rotation: Qt.quaternion(0.731977, -0.658829, -0.129067, -0.116169)
            source: "meshes/_____SPJZ4_MISUMI_3_NEZI______SPJZ4_MISUMI_1_9dd129_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____SPJZ4_MISUMI_3_NEZI______SPJZ4_MISUMI_1_dc4261
            objectName: "行程柱塞_SPJZ4_MISUMI-3/NEZI_行程柱塞_SPJZ4_MISUMI-1_dc4261"
            position: Qt.vector3d(0.00935357, 0.199, 0.0143833)
            rotation: Qt.quaternion(0.731977, -0.658829, -0.129067, -0.116169)
            source: "meshes/_____SPJZ4_MISUMI_3_NEZI______SPJZ4_MISUMI_1_dc4261_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____SPJZ4_MISUMI_3_PIN______SPJZ4_MISUMI_1
            objectName: "行程柱塞_SPJZ4_MISUMI-3/PIN_行程柱塞_SPJZ4_MISUMI-1"
            position: Qt.vector3d(0.0113269, 0.199, 0.0151016)
            rotation: Qt.quaternion(0.731977, -0.658829, -0.129067, -0.116169)
            source: "meshes/_____SPJZ4_MISUMI_3_PIN______SPJZ4_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part04_______2_5_ea3c1e
            objectName: "QUEST08-ML-SYS03-Part04-光栅夹持组件2-5_ea3c1e"
            position: Qt.vector3d(0.012706, 0.199, 0.00921846)
            rotation: Qt.quaternion(0.579228, -0.40558, 0.40558, -0.579228)
            source: "meshes/quest08_ML_SYS03_Part04_______2_5_ea3c1e_mesh.mesh"
            materials: [
                polishedcarbonsteel_material3151
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part04_______2_5_0d24ca
            objectName: "QUEST08-ML-SYS03-Part04-光栅夹持组件2-5_0d24ca"
            position: Qt.vector3d(0.012706, 0.199, 0.00921846)
            rotation: Qt.quaternion(0.579228, -0.40558, 0.40558, -0.579228)
            source: "meshes/quest08_ML_SYS03_Part04_______2_5_0d24ca_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____SPJZ4_MISUMI_2_NEZI______SPJZ4_MISUMI_1_c71b06
            objectName: "行程柱塞_SPJZ4_MISUMI-2/NEZI_行程柱塞_SPJZ4_MISUMI-1_c71b06"
            position: Qt.vector3d(-0.0323729, 0.199, 0.129026)
            rotation: Qt.quaternion(0.960977, -0.215337, -0.169446, -0.0379697)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_____SPJZ4_MISUMI_2_NEZI______SPJZ4_MISUMI_1_c71b06_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____SPJZ4_MISUMI_2_NEZI______SPJZ4_MISUMI_1_3fda9c
            objectName: "行程柱塞_SPJZ4_MISUMI-2/NEZI_行程柱塞_SPJZ4_MISUMI-1_3fda9c"
            position: Qt.vector3d(-0.0323729, 0.199, 0.129026)
            rotation: Qt.quaternion(0.960977, -0.215337, -0.169446, -0.0379697)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_____SPJZ4_MISUMI_2_NEZI______SPJZ4_MISUMI_1_3fda9c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____SPJZ4_MISUMI_2_PIN______SPJZ4_MISUMI_1
            objectName: "行程柱塞_SPJZ4_MISUMI-2/PIN_行程柱塞_SPJZ4_MISUMI-1"
            position: Qt.vector3d(-0.0303995, 0.199, 0.129744)
            rotation: Qt.quaternion(0.960977, -0.215337, -0.169446, -0.0379697)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/_____SPJZ4_MISUMI_2_PIN______SPJZ4_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: quest08_ML_SYS03_part17_____________2
            objectName: "QUEST08-ML-SYS03-part17-聚四氟乙烯光栅压紧卡盘-2"
            position: Qt.vector3d(-0.0343615, 0.199, 0.128302)
            rotation: Qt.quaternion(0.686761, 0.393131, 0.1684, -0.587748)
            source: "meshes/quest08_ML_SYS03_part17_____________2_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: _____SPJZ4_MISUMI_1_NEZI______SPJZ4_MISUMI_1_d68c49
            objectName: "行程柱塞_SPJZ4_MISUMI-1/NEZI_行程柱塞_SPJZ4_MISUMI-1_d68c49"
            position: Qt.vector3d(-0.0115097, 0.275, 0.0717046)
            rotation: Qt.quaternion(0.15664, 0.972271, -0.0276199, 0.171438)
            source: "meshes/_____SPJZ4_MISUMI_1_NEZI______SPJZ4_MISUMI_1_d68c49_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____SPJZ4_MISUMI_1_NEZI______SPJZ4_MISUMI_1_4d549c
            objectName: "行程柱塞_SPJZ4_MISUMI-1/NEZI_行程柱塞_SPJZ4_MISUMI-1_4d549c"
            position: Qt.vector3d(-0.0115097, 0.275, 0.0717046)
            rotation: Qt.quaternion(0.15664, 0.972271, -0.0276199, 0.171438)
            source: "meshes/_____SPJZ4_MISUMI_1_NEZI______SPJZ4_MISUMI_1_4d549c_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: _____SPJZ4_MISUMI_1_PIN______SPJZ4_MISUMI_1
            objectName: "行程柱塞_SPJZ4_MISUMI-1/PIN_行程柱塞_SPJZ4_MISUMI-1"
            position: Qt.vector3d(-0.00953631, 0.275, 0.0724228)
            rotation: Qt.quaternion(0.15664, 0.972271, -0.0276199, 0.171438)
            source: "meshes/_____SPJZ4_MISUMI_1_PIN______SPJZ4_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____TFZF8_8_MISUMI_1
            objectName: "无油衬套_TFZF8-8_MISUMI-1"
            position: Qt.vector3d(-0.0384001, 0.025, 0.0619173)
            rotation: Qt.quaternion(0.670874, -0.223446, 0.223446, -0.670874)
            source: "meshes/_____TFZF8_8_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_2_SHAFT______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-2/SHAFT_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(-0.00376068, 0.274067, 0.0106033)
            rotation: Qt.quaternion(0.756798, 0.219498, 0.529915, 0.313476)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_2_SHAFT______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_2_BASE______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-2/BASE_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(-0.00400012, 0.273367, 0.0112612)
            rotation: Qt.quaternion(0.756798, 0.219498, 0.529915, 0.313476)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_2_BASE______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS03_part16__________2
            objectName: "QUEST08-ML-SYS03-part16-光栅斜向压紧卡盘-2"
            position: Qt.vector3d(-0.0436289, 0.1575, 0.12014)
            rotation: Qt.quaternion(0.3512, 0.671229, 0.152003, 0.634827)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS03_part16__________2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part04_______2_4_2d0799
            objectName: "QUEST08-ML-SYS03-Part04-光栅夹持组件2-4_2d0799"
            position: Qt.vector3d(-0.0331247, 0.199, 0.135137)
            rotation: Qt.quaternion(0.579228, 0.40558, 0.40558, 0.579228)
            source: "meshes/quest08_ML_SYS03_Part04_______2_4_2d0799_mesh.mesh"
            materials: [
                polishedcarbonsteel_material3151
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part04_______2_4_507e65
            objectName: "QUEST08-ML-SYS03-Part04-光栅夹持组件2-4_507e65"
            position: Qt.vector3d(-0.0331247, 0.199, 0.135137)
            rotation: Qt.quaternion(0.579228, 0.40558, 0.40558, 0.579228)
            source: "meshes/quest08_ML_SYS03_Part04_______2_4_507e65_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: ____E_MSC8_25_MISUMI_1
            objectName: "定位销_E-MSC8-25_MISUMI-1"
            position: Qt.vector3d(-0.0384001, 0.007, 0.0619173)
            rotation: Qt.quaternion(0.645715, 0.645715, -0.288187, 0.288187)
            source: "meshes/____E_MSC8_25_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_3_SHAFT______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-3/SHAFT_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(-0.0448487, 0.153933, 0.123492)
            rotation: Qt.quaternion(0.524052, -0.323183, -0.157867, -0.772011)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_3_SHAFT______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                defaultplastic_material314
            ]
        }
        Model {
            id: _____C_SPJZ6_10P_MISUMI_3_BASE______C_SPJZ6_10P_MISUMI_1
            objectName: "弹簧柱塞_C-SPJZ6-10P_MISUMI-3/BASE_弹簧柱塞_C-SPJZ6-10P_MISUMI-1"
            position: Qt.vector3d(-0.0446093, 0.154633, 0.122834)
            rotation: Qt.quaternion(0.524052, -0.323183, -0.157867, -0.772011)
            source: "meshes/_____C_SPJZ6_10P_MISUMI_3_BASE______C_SPJZ6_10P_MISUMI_1_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS03_part16__________1
            objectName: "QUEST08-ML-SYS03-part16-光栅斜向压紧卡盘-1"
            position: Qt.vector3d(-0.00498056, 0.2705, 0.0139549)
            rotation: Qt.quaternion(0.921246, -0.368456, -0.0697145, -0.103377)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS03_part16__________1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS03_part17_____________1
            objectName: "QUEST08-ML-SYS03-part17-聚四氟乙烯光栅压紧卡盘-1"
            position: Qt.vector3d(-0.0134982, 0.275, 0.0709808)
            rotation: Qt.quaternion(0.529, 0.621843, 0.469211, -0.336618)
            scale: Qt.vector3d(1, 1, 1)
            source: "meshes/quest08_ML_SYS03_part17_____________1_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS03_part17_____________3
            objectName: "QUEST08-ML-SYS03-part17-聚四氟乙烯光栅压紧卡盘-3"
            position: Qt.vector3d(0.00736499, 0.199, 0.0136595)
            rotation: Qt.quaternion(0.538875, 0.614531, 0.457836, -0.349788)
            source: "meshes/quest08_ML_SYS03_part17_____________3_mesh.mesh"
            materials: [
                plasticPolystyrene_material
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part15______5
            objectName: "QUEST08-ML-SYS03-Part15-轴承压片-5"
            position: Qt.vector3d(-0.0421589, 0.304, 0.0605492)
            rotation: Qt.quaternion(0.811514, -0.0781444, 0.568228, -0.111602)
            source: "meshes/quest08_ML_SYS03_Part15______5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part15______2
            objectName: "QUEST08-ML-SYS03-Part15-轴承压片-2"
            position: Qt.vector3d(-0.060013, 0.147, 0.0540508)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part15______2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part15______6
            objectName: "QUEST08-ML-SYS03-Part15-轴承压片-6"
            position: Qt.vector3d(-0.011377, 0.214, -0.0240232)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part15______6_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part15______4
            objectName: "QUEST08-ML-SYS03-Part15-轴承压片-4"
            position: Qt.vector3d(-0.0729407, 0.214, 0.145122)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part15______4_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part15______7
            objectName: "QUEST08-ML-SYS03-Part15-轴承压片-7"
            position: Qt.vector3d(-0.0421589, 0.124, 0.0605492)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part15______7_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part15______3
            objectName: "QUEST08-ML-SYS03-Part15-轴承压片-3"
            position: Qt.vector3d(-0.0401677, 0.2475, -0.000473651)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part15______3_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part15______1
            objectName: "QUEST08-ML-SYS03-Part15-轴承压片-1"
            position: Qt.vector3d(-0.0821136, 0.2475, 0.107754)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part15______1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material208
            ]
        }
        Model {
            id: m6x0_25___1_83c02b
            objectName: "M6x0.25顶丝-1_83c02b"
            position: Qt.vector3d(-0.0599754, 0.022, -0.0156392)
            rotation: Qt.quaternion(0.943595, -0.281913, -0.166381, -0.0497089)
            source: "meshes/m6x0_25___1_83c02b_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___1_3624c4
            objectName: "M6x0.25顶丝-1_3624c4"
            position: Qt.vector3d(-0.0599754, 0.022, -0.0156392)
            rotation: Qt.quaternion(0.943595, -0.281913, -0.166381, -0.0497089)
            source: "meshes/m6x0_25___1_3624c4_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part12_________1
            objectName: "QUEST08-ML-SYS03-Part12-偏摆调整顶丝座-1"
            position: Qt.vector3d(-0.0507664, 0.015, -0.0122874)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part12_________1_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: m6x0_25___2_e95f7a
            objectName: "M6x0.25顶丝-2_e95f7a"
            position: Qt.vector3d(0.0204623, 0.022, 0.0136378)
            rotation: Qt.quaternion(0.173648, -7.79589e-17, 0.984808, -8.19255e-17)
            source: "meshes/m6x0_25___2_e95f7a_mesh.mesh"
            materials: [
                plasticPolystyrene_material1232
            ]
        }
        Model {
            id: m6x0_25___2_f35795
            objectName: "M6x0.25顶丝-2_f35795"
            position: Qt.vector3d(0.0204623, 0.022, 0.0136378)
            rotation: Qt.quaternion(0.173648, -7.79589e-17, 0.984808, -8.19255e-17)
            source: "meshes/m6x0_25___2_f35795_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part14________5
            objectName: "QUEST08-ML-SYS03-Part14-光栅底部挡块-5"
            position: Qt.vector3d(-0.0365207, 0.143, 0.0626013)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part14________5_mesh.mesh"
            materials: [
                polishedcarbonsteel_material3151
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part12_________2
            objectName: "QUEST08-ML-SYS03-Part12-偏摆调整顶丝座-2"
            position: Qt.vector3d(0.012193, 0.015, 0.010628)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part12_________2_mesh.mesh"
            materials: [
                red_material1357
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part07_________2_1_d6a324
            objectName: "QUEST08-ML-SYS03-Part07-光栅角度调节组件2-1_d6a324"
            position: Qt.vector3d(-0.0132771, 0.310647, 0.045521)
            rotation: Qt.quaternion(0.173648, -5.90761e-17, 0.984808, -1.49055e-16)
            source: "meshes/quest08_ML_SYS03_Part07_________2_1_d6a324_mesh.mesh"
            materials: [
                orange_material
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part07_________2_1_a8b9d8
            objectName: "QUEST08-ML-SYS03-Part07-光栅角度调节组件2-1_a8b9d8"
            position: Qt.vector3d(-0.0132771, 0.310647, 0.045521)
            rotation: Qt.quaternion(0.173648, -5.90761e-17, 0.984808, -1.49055e-16)
            source: "meshes/quest08_ML_SYS03_Part07_________2_1_a8b9d8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part06_________1_1
            objectName: "QUEST08-ML-SYS03-Part06-光栅角度调节组件1-1"
            position: Qt.vector3d(-0.0214856, 0.3155, 0.0680736)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part06_________1_1_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: __61828_1
            objectName: "洛轴61828-1"
            position: Qt.vector3d(-0.0506161, 0.214, 0.057471)
            rotation: Qt.quaternion(0.984808, -1.36593e-16, -0.173648, 6.83195e-17)
            source: "meshes/__61828_1_mesh.mesh"
            materials: [
                yellow_material
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part03_______1_5_552ac1
            objectName: "QUEST08-ML-SYS03-Part03-光栅夹持组件1-5_552ac1"
            position: Qt.vector3d(-0.0365207, 0.286, 0.0626013)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part03_______1_5_552ac1_mesh.mesh"
            materials: [
                polishedcarbonsteel_material3151
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part03_______1_5_7048c9
            objectName: "QUEST08-ML-SYS03-Part03-光栅夹持组件1-5_7048c9"
            position: Qt.vector3d(-0.0365207, 0.286, 0.0626013)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part03_______1_5_7048c9_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part08______1_3a7daf
            objectName: "QUEST08-ML-SYS03-Part08-光栅底板-1_3a7daf"
            position: Qt.vector3d(-0.0402795, 0, 0.0612332)
            rotation: Qt.quaternion(0.573576, 7.10659e-17, -0.819152, -1.43779e-16)
            source: "meshes/quest08_ML_SYS03_Part08______1_3a7daf_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part08______1_e469a4
            objectName: "QUEST08-ML-SYS03-Part08-光栅底板-1_e469a4"
            position: Qt.vector3d(-0.0402795, 0, 0.0612332)
            rotation: Qt.quaternion(0.573576, 7.10659e-17, -0.819152, -1.43779e-16)
            source: "meshes/quest08_ML_SYS03_Part08______1_e469a4_mesh.mesh"
            materials: [
                blue_material507
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part05______1
            objectName: "QUEST08-ML-SYS03-Part05-光栅支架-1"
            position: Qt.vector3d(-0.0628321, 0.214, 0.0530247)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part05______1_mesh.mesh"
            materials: [
                orange_material861
            ]
        }
        Model {
            id: ________13239
            objectName: "图纸自建-光栅-1"
            position: Qt.vector3d(-0.0247746, 0.214, 0.0668766)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/________1_mesh3240.mesh"
            materials: [
                red_material
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part04_______2_1_c32fa2
            objectName: "QUEST08-ML-SYS03-Part04-光栅夹持组件2-1_c32fa2"
            position: Qt.vector3d(-0.0102093, 0.281, 0.0721779)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part04_______2_1_c32fa2_mesh.mesh"
            materials: [
                polishedcarbonsteel_material3151
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part04_______2_1_ec4d60
            objectName: "QUEST08-ML-SYS03-Part04-光栅夹持组件2-1_ec4d60"
            position: Qt.vector3d(-0.0102093, 0.281, 0.0721779)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part04_______2_1_ec4d60_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part03_______1_7_9e3297
            objectName: "QUEST08-ML-SYS03-Part03-光栅夹持组件1-7_9e3297"
            position: Qt.vector3d(-0.0118953, 0.199, -0.00505657)
            rotation: Qt.quaternion(0.579228, -0.40558, 0.40558, -0.579228)
            source: "meshes/quest08_ML_SYS03_Part03_______1_7_9e3297_mesh.mesh"
            materials: [
                polishedcarbonsteel_material3151
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part03_______1_7_fff798
            objectName: "QUEST08-ML-SYS03-Part03-光栅夹持组件1-7_fff798"
            position: Qt.vector3d(-0.0118953, 0.199, -0.00505657)
            rotation: Qt.quaternion(0.579228, -0.40558, 0.40558, -0.579228)
            source: "meshes/quest08_ML_SYS03_Part03_______1_7_fff798_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part03_______1_6_bdcd44
            objectName: "QUEST08-ML-SYS03-Part03-光栅夹持组件1-6_bdcd44"
            position: Qt.vector3d(-0.0611462, 0.199, 0.130259)
            rotation: Qt.quaternion(0.579228, 0.40558, 0.40558, 0.579228)
            source: "meshes/quest08_ML_SYS03_Part03_______1_6_bdcd44_mesh.mesh"
            materials: [
                polishedcarbonsteel_material3151
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part03_______1_6_ec6c47
            objectName: "QUEST08-ML-SYS03-Part03-光栅夹持组件1-6_ec6c47"
            position: Qt.vector3d(-0.0611462, 0.199, 0.130259)
            rotation: Qt.quaternion(0.579228, 0.40558, 0.40558, 0.579228)
            source: "meshes/quest08_ML_SYS03_Part03_______1_6_ec6c47_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part01______1_fba8a3
            objectName: "QUEST08-ML-SYS03-Part01-光栅镜室-1_fba8a3"
            position: Qt.vector3d(-0.0412192, 0.214, 0.0608912)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part01______1_fba8a3_mesh.mesh"
            materials: [
                green_material592
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part01______1_e3a4ce
            objectName: "QUEST08-ML-SYS03-Part01-光栅镜室-1_e3a4ce"
            position: Qt.vector3d(-0.0412192, 0.214, 0.0608912)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part01______1_e3a4ce_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part01______1_7e46d8
            objectName: "QUEST08-ML-SYS03-Part01-光栅镜室-1_7e46d8"
            position: Qt.vector3d(-0.0412192, 0.214, 0.0608912)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part01______1_7e46d8_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part01______1_0ed203
            objectName: "QUEST08-ML-SYS03-Part01-光栅镜室-1_0ed203"
            position: Qt.vector3d(-0.0412192, 0.214, 0.0608912)
            rotation: Qt.quaternion(0.819152, -5.5816e-19, 0.573576, 1.13945e-17)
            source: "meshes/quest08_ML_SYS03_Part01______1_0ed203_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part07_________2_2_bf5f79
            objectName: "QUEST08-ML-SYS03-Part07-光栅角度调节组件2-2_bf5f79"
            position: Qt.vector3d(-0.0296941, 0.310647, 0.0906262)
            rotation: Qt.quaternion(0.984808, -1.21721e-16, -0.173648, 6.38958e-17)
            source: "meshes/quest08_ML_SYS03_Part07_________2_2_bf5f79_mesh.mesh"
            materials: [
                orange_material
            ]
        }
        Model {
            id: quest08_ML_SYS03_Part07_________2_2_2ab431
            objectName: "QUEST08-ML-SYS03-Part07-光栅角度调节组件2-2_2ab431"
            position: Qt.vector3d(-0.0296941, 0.310647, 0.0906262)
            rotation: Qt.quaternion(0.984808, -1.21721e-16, -0.173648, 6.38958e-17)
            source: "meshes/quest08_ML_SYS03_Part07_________2_2_2ab431_mesh.mesh"
            materials: [
                principledMaterial87
            ]
        }
    }

    // Animations:
}
