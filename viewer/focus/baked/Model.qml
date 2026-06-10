import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: blue_material
        objectName: "blue"
        baseColor: "#ff4b4b4b"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material
        objectName: "defaultplastic"
        roughness: 0.17999999225139618
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material28
        objectName: "defaultplastic"
        roughness: 0.17999999225139618
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material25
        objectName: "defaultplastic"
        baseColor: "#ff888d8d"
        roughness: 0.1599999964237213
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: orange_material
        objectName: "orange"
        baseColor: "#ffff8d00"
        roughness: 1
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material10
        objectName: "defaultplastic"
        baseColor: "#ffc1c1c1"
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material7
        objectName: "defaultplastic"
        baseColor: "#ffc1c1c1"
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

    // Nodes:
    Node {
        id: world
        objectName: "world"
        Model {
            id: gb_FASTENER_SCREWS_HSHCS_M5X12_N_9
            objectName: "GB_FASTENER_SCREWS_HSHCS M5X12-N-9"
            position: Qt.vector3d(-0.03175, -0.0763494, 0.007239)
            rotation: Qt.quaternion(0.707107, 0, -9.32544e-16, 0.707107)
            source: "meshes/gb_FASTENER_SCREWS_HSHCS_M5X12_N_9_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest_CCD_1_75daa9
            objectName: "QUEST－CCD-1_75daa9"
            source: "meshes/quest_CCD_1_75daa9_mesh.mesh"
            materials: [
                defaultplastic_material7
            ]
        }
        Model {
            id: quest_CCD_1_4828a6
            objectName: "QUEST－CCD-1_4828a6"
            source: "meshes/quest_CCD_1_4828a6_mesh.mesh"
            materials: [
                defaultplastic_material10
            ]
        }
        Model {
            id: gb_FASTENER_SCREWS_HSHCS_M5X12_N_11
            objectName: "GB_FASTENER_SCREWS_HSHCS M5X12-N-11"
            position: Qt.vector3d(0.03175, -0.0763494, 0.007239)
            rotation: Qt.quaternion(0.707107, 0, -9.32544e-16, 0.707107)
            source: "meshes/gb_FASTENER_SCREWS_HSHCS_M5X12_N_11_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: gb_FASTENER_SCREWS_HSHCS_M6X12_N_3
            objectName: "GB_FASTENER_SCREWS_HSHCS M6X12-N-3"
            position: Qt.vector3d(-0.075, -0.0658494, -0.156411)
            rotation: Qt.quaternion(0.707107, 0, 9.32544e-16, -0.707107)
            source: "meshes/gb_FASTENER_SCREWS_HSHCS_M6X12_N_3_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: gb_FASTENER_SCREWS_HSHCS_M6X12_N_2
            objectName: "GB_FASTENER_SCREWS_HSHCS M6X12-N-2"
            position: Qt.vector3d(0.075, -0.0658494, -0.006411)
            rotation: Qt.quaternion(0.707107, 0, 9.32544e-16, -0.707107)
            source: "meshes/gb_FASTENER_SCREWS_HSHCS_M6X12_N_2_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: quest08_ML_SYS07________1
            objectName: "QUEST08-ML-SYS07-相机转接平板-1"
            position: Qt.vector3d(-1.23153e-19, -0.0650494, -0.066411)
            rotation: Qt.quaternion(0.707107, 0.707107, -7.12288e-16, -6.30711e-16)
            source: "meshes/quest08_ML_SYS07________1_mesh.mesh"
            materials: [
                orange_material
            ]
        }
        Model {
            id: quest08_ML_SYS07_____________1_729d35
            objectName: "QUEST08-ML-SYS07-二维电动平移台转接平板-1_729d35"
            position: Qt.vector3d(-2.36963e-15, -0.217058, -0.068911)
            rotation: Qt.quaternion(0.707107, 0.707107, 3.06614e-15, 4.045e-15)
            source: "meshes/quest08_ML_SYS07_____________1_729d35_mesh.mesh"
            materials: [
                blue_material
            ]
        }
        Model {
            id: quest08_ML_SYS07_____________1_7c0d26
            objectName: "QUEST08-ML-SYS07-二维电动平移台转接平板-1_7c0d26"
            position: Qt.vector3d(-2.36963e-15, -0.217058, -0.068911)
            rotation: Qt.quaternion(0.707107, 0.707107, 3.06614e-15, 4.045e-15)
            source: "meshes/quest08_ML_SYS07_____________1_7c0d26_mesh.mesh"
            materials: [
                defaultplastic_material25
            ]
        }
        Model {
            id: ________1_275c9b
            objectName: "联谊五维调整台-1_275c9b"
            position: Qt.vector3d(0.103389, -0.455258, -0.0771419)
            rotation: Qt.quaternion(0.707107, -0.707107, -3.87125e-15, 3.19966e-15)
            source: "meshes/________1_275c9b_mesh.mesh"
            materials: [
                defaultplastic_material28
            ]
        }
        Model {
            id: _________
            objectName: "联谊五维调整台上层"
            source: "meshes/__________mesh.mesh"
            materials: [
                defaultplastic_material
            ]
        }
        Model {
            id: _________32
            objectName: "联谊五维调整台下层"
            source: "meshes/__________mesh33.mesh"
            materials: [
                defaultplastic_material
            ]
        }
        Model {
            id: gb_FASTENER_SCREWS_HSHCS_M6X12_N_5
            objectName: "GB_FASTENER_SCREWS_HSHCS M6X12-N-5"
            position: Qt.vector3d(0.075, -0.0658494, -0.156411)
            rotation: Qt.quaternion(0.707107, 0, 9.32544e-16, -0.707107)
            source: "meshes/gb_FASTENER_SCREWS_HSHCS_M6X12_N_5_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: gb_FASTENER_SCREWS_HSHCS_M6X12_N_1
            objectName: "GB_FASTENER_SCREWS_HSHCS M6X12-N-1"
            position: Qt.vector3d(-0.075, -0.0658494, -0.006411)
            rotation: Qt.quaternion(0.707107, 0, 9.32544e-16, -0.707107)
            source: "meshes/gb_FASTENER_SCREWS_HSHCS_M6X12_N_1_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: gb_FASTENER_SCREWS_HSHCS_M5X12_N_12
            objectName: "GB_FASTENER_SCREWS_HSHCS M5X12-N-12"
            position: Qt.vector3d(-0.03175, -0.0763494, 0.019939)
            rotation: Qt.quaternion(0.707107, 0, -9.32544e-16, 0.707107)
            source: "meshes/gb_FASTENER_SCREWS_HSHCS_M5X12_N_12_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
        Model {
            id: gb_FASTENER_SCREWS_HSHCS_M5X12_N_10
            objectName: "GB_FASTENER_SCREWS_HSHCS M5X12-N-10"
            position: Qt.vector3d(0.03175, -0.0763494, 0.019939)
            rotation: Qt.quaternion(0.707107, 0, -9.32544e-16, 0.707107)
            source: "meshes/gb_FASTENER_SCREWS_HSHCS_M5X12_N_10_mesh.mesh"
            materials: [
                satinfinishstainlesssteel_material
            ]
        }
    }

    // Animations:
}
