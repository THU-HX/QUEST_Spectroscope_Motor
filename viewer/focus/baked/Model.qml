import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: defaultplastic_material
        objectName: "defaultplastic"
        baseColor: "#ffc1c1c1"
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: defaultplastic_material45
        objectName: "defaultplastic"
        baseColor: "#ffc1c1c1"
        roughness: 1
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
        id: defaultplastic_material33
        objectName: "defaultplastic"
        baseColor: "#ff888d8d"
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
        id: defaultplastic_material29
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
        id: satinfinishstainlesssteel_material
        objectName: "satinfinishstainlesssteel"
        baseColor: "#fffff2e9"
        metalness: 1
        roughness: 0.4000000059604645
        alphaMode: PrincipledMaterial.Opaque
    }

    // Nodes:
    Node {
        id: root
        objectName: "ROOT"
        OrthographicCamera {
            id: current_camera_camera
            objectName: "current camera"
            position: Qt.vector3d(-0.669033, 0.143403, 0.492669)
            rotation: Qt.quaternion(0.892053, -0.059093, -0.41641, -0.165386)
            scale: Qt.vector3d(1, 1, 1)
            clipNear: 0.6206104755401611
            clipFar: 1.4537140130996704
            horizontalMagnification: 0.38752952218055725
            verticalMagnification: 0.29945462942123413
        }
        OrthographicCamera {
            id: _____camera
            position: Qt.vector3d(-0.019219, -0.0750347, 1.08284)
            clipNear: 0.8814969658851624
            clipFar: 1.7146005630493164
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        OrthographicCamera {
            id: ____camera
            position: Qt.vector3d(-0.019219, -0.0750347, 1.08284)
            clipNear: 0.8814969658851624
            clipFar: 1.7146005630493164
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        OrthographicCamera {
            id: ____camera5
            position: Qt.vector3d(-0.019219, -0.0750347, -1.25852)
            rotation: Qt.quaternion(0, 0, 1, 0)
            clipNear: 0.9044656157493591
            clipFar: 1.7375692129135132
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        OrthographicCamera {
            id: ____camera6
            position: Qt.vector3d(-1.1899, -0.0750347, -0.0878398)
            rotation: Qt.quaternion(0.707107, 0, -0.707107, 0)
            clipNear: 0.9045500755310059
            clipFar: 1.7376536130905151
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        OrthographicCamera {
            id: ____camera7
            position: Qt.vector3d(1.15146, -0.0750347, -0.0878398)
            rotation: Qt.quaternion(0.707107, 0, 0.707107, 0)
            clipNear: 0.8814125657081604
            clipFar: 1.714516043663025
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        OrthographicCamera {
            id: ____camera8
            position: Qt.vector3d(-0.019219, 1.15209, -0.0878398)
            rotation: Qt.quaternion(0.707107, -0.707107, 2.46885e-15, 2.46885e-15)
            clipNear: 0.9736437201499939
            clipFar: 1.8067471981048584
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        OrthographicCamera {
            id: ____camera9
            position: Qt.vector3d(-0.019219, -1.30216, -0.0878398)
            rotation: Qt.quaternion(0.707107, 0.707107, 2.46885e-15, -2.46885e-15)
            clipNear: 0.9252045750617981
            clipFar: 1.7583080530166626
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        OrthographicCamera {
            id: _____camera10
            position: Qt.vector3d(0.983727, 0.923631, 0.915106)
            rotation: Qt.quaternion(0.880487, -0.279814, 0.36471, 0.115903)
            scale: Qt.vector3d(1, 1, 1)
            clipNear: 1.457651972770691
            clipFar: 2.2907555103302
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        OrthographicCamera {
            id: _________camera
            position: Qt.vector3d(0.654414, 0.792254, 1.18874)
            rotation: Qt.quaternion(0.935372, -0.259401, 0.231654, 0.0642434)
            clipNear: 1.4053696393966675
            clipFar: 2.2384731769561768
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        OrthographicCamera {
            id: _________camera12
            position: Qt.vector3d(0.485724, 0.429909, 1.24812)
            rotation: Qt.quaternion(0.969554, -0.166349, 0.177114, 0.030388)
            clipNear: 1.2312179803848267
            clipFar: 2.064321517944336
            horizontalMagnification: 0.6942529678344727
            verticalMagnification: 0.6942529678344727
        }
        DirectionalLight {
            id: ____light
            objectName: "线光源"
            position: Qt.vector3d(1, 0, 0)
            rotation: Qt.quaternion(2.67648e-43, 0, -1.14906e-42, 0.5)
            scale: Qt.vector3d(inf, 0, 0)
            color: "#ff404040"
        }
        Node {
            id: ___
            objectName: "线光源"
            position: Qt.vector3d(1, 0, 0)
            rotation: Qt.quaternion(0.5, 2.0543e-42, 0, 0)
            scale: Qt.vector3d(inf, 0, 0)
        }
        Node {
            id: ___15
            objectName: "线光源"
            position: Qt.vector3d(1, 0, 0)
            rotation: Qt.quaternion(0.5, -1.6143e-42, 0, 4.03574e-43)
            scale: Qt.vector3d(inf, 0, 0)
        }
        Node {
            id: ___16
            objectName: "线光源"
            position: Qt.vector3d(1, 0, 0)
            rotation: Qt.quaternion(-7.56701e-44, 0, 1.67595e-42, 0.5)
            scale: Qt.vector3d(inf, 0, 0)
        }
        Node {
            id: quest08_ML_SYS07_______
            objectName: "QUEST08-ML-SYS07-相机调焦系统"
            Model {
                id: gb_FASTENER_SCREWS_HSHCS_M5X12_N_10
                objectName: "GB_FASTENER_SCREWS_HSHCS M5X12-N-10"
                position: Qt.vector3d(0.03175, -0.0763494, 0.019939)
                rotation: Qt.quaternion(0.707107, 3.74339e-23, -9.32544e-16, 0.707107)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/meshes_0__mesh.mesh"
                materials: [
                    satinfinishstainlesssteel_material
                ]
            }
            Model {
                id: gb_FASTENER_SCREWS_HSHCS_M5X12_N_12
                objectName: "GB_FASTENER_SCREWS_HSHCS M5X12-N-12"
                position: Qt.vector3d(-0.03175, -0.0763494, 0.019939)
                rotation: Qt.quaternion(0.707107, 3.74339e-23, -9.32544e-16, 0.707107)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/meshes_1__mesh.mesh"
                materials: [
                    satinfinishstainlesssteel_material
                ]
            }
            Model {
                id: gb_FASTENER_SCREWS_HSHCS_M6X12_N_1
                objectName: "GB_FASTENER_SCREWS_HSHCS M6X12-N-1"
                position: Qt.vector3d(-0.075, -0.0658494, -0.006411)
                rotation: Qt.quaternion(0.707107, 3.74339e-23, 9.32544e-16, -0.707107)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/meshes_2__mesh.mesh"
                materials: [
                    satinfinishstainlesssteel_material
                ]
            }
            Model {
                id: gb_FASTENER_SCREWS_HSHCS_M6X12_N_5
                objectName: "GB_FASTENER_SCREWS_HSHCS M6X12-N-5"
                position: Qt.vector3d(0.075, -0.0658494, -0.156411)
                rotation: Qt.quaternion(0.707107, 3.74339e-23, 9.32544e-16, -0.707107)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/meshes_3__mesh.mesh"
                materials: [
                    satinfinishstainlesssteel_material
                ]
            }
            Model {
                id: ________1
                objectName: "联谊五维调整台-1"
                position: Qt.vector3d(0.103389, -0.455258, -0.0771419)
                rotation: Qt.quaternion(0.707107, -0.707107, -3.87125e-15, 3.19966e-15)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/________1_mesh.mesh"
                materials: [
                    defaultplastic_material28,
                    defaultplastic_material29
                ]
            }
            Model {
                id: quest08_ML_SYS07_____________1
                objectName: "QUEST08-ML-SYS07-二维电动平移台转接平板-1"
                position: Qt.vector3d(-2.36963e-15, -0.217058, -0.068911)
                rotation: Qt.quaternion(0.707107, 0.707107, 3.06614e-15, 4.045e-15)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/quest08_ML_SYS07_____________1_mesh.mesh"
                materials: [
                    blue_material,
                    defaultplastic_material33
                ]
            }
            Model {
                id: quest08_ML_SYS07________1
                objectName: "QUEST08-ML-SYS07-相机转接平板-1"
                position: Qt.vector3d(-1.23153e-19, -0.0650494, -0.066411)
                rotation: Qt.quaternion(0.707107, 0.707107, -7.12288e-16, -6.30711e-16)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/meshes_6__mesh.mesh"
                materials: [
                    orange_material
                ]
            }
            Model {
                id: gb_FASTENER_SCREWS_HSHCS_M6X12_N_2
                objectName: "GB_FASTENER_SCREWS_HSHCS M6X12-N-2"
                position: Qt.vector3d(0.075, -0.0658494, -0.006411)
                rotation: Qt.quaternion(0.707107, 3.74339e-23, 9.32544e-16, -0.707107)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/meshes_7__mesh.mesh"
                materials: [
                    satinfinishstainlesssteel_material
                ]
            }
            Model {
                id: gb_FASTENER_SCREWS_HSHCS_M6X12_N_3
                objectName: "GB_FASTENER_SCREWS_HSHCS M6X12-N-3"
                position: Qt.vector3d(-0.075, -0.0658494, -0.156411)
                rotation: Qt.quaternion(0.707107, 3.74339e-23, 9.32544e-16, -0.707107)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/meshes_8__mesh.mesh"
                materials: [
                    satinfinishstainlesssteel_material
                ]
            }
            Model {
                id: gb_FASTENER_SCREWS_HSHCS_M5X12_N_11
                objectName: "GB_FASTENER_SCREWS_HSHCS M5X12-N-11"
                position: Qt.vector3d(0.03175, -0.0763494, 0.007239)
                rotation: Qt.quaternion(0.707107, 3.74339e-23, -9.32544e-16, 0.707107)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/meshes_9__mesh.mesh"
                materials: [
                    satinfinishstainlesssteel_material
                ]
            }
            Model {
                id: quest_CCD_1
                objectName: "QUEST－CCD-1"
                source: "meshes/quest_CCD_1_mesh.mesh"
                materials: [
                    defaultplastic_material45,
                    defaultplastic_material
                ]
            }
            Model {
                id: gb_FASTENER_SCREWS_HSHCS_M5X12_N_9
                objectName: "GB_FASTENER_SCREWS_HSHCS M5X12-N-9"
                position: Qt.vector3d(-0.03175, -0.0763494, 0.007239)
                rotation: Qt.quaternion(0.707107, 3.74339e-23, -9.32544e-16, 0.707107)
                scale: Qt.vector3d(1, 1, 1)
                source: "meshes/meshes_11__mesh.mesh"
                materials: [
                    satinfinishstainlesssteel_material
                ]
            }
        }
    }

    // Animations:
}
