/*

import Foundation
import RealityKit
import ARKit

class BodySkeleton: Entity {
    var joints: [String:Entity] = [:]
    var bones: [String:Entity] = [:]
    
    required init(for bodyAnchor: ARBodyAnchor) {
        super.init()

        // Eklem (joint) görselleştirmesi
        for jointName in ARSkeletonDefinition.defaultBody3D.jointNames {
            var jointRadius: Float = 0.05
            var jointColor: UIColor = .green

            // Eklemler için özelleştirilmiş yarıçap ve renk
            switch jointName {
            case "neck_1_joint", "neck_2_joint", "neck_3_joint", "neck_4_joint", "head_joint",
                 "left_shoulder_1_joint", "right_shoulder_1_joint":
                jointRadius *= 0.5
                
            case "jaw_joint", "chin_joint", "left_eye_joint", "left_eyeLowerLid_joint", "left_eyeUpperlid_joint", "left_eyeball_joint", "nose_joint", "right_eye_joint", "right_eyeLowerLid_joint", "right_eyeUpperLid_joint", "right_eyeball_joint":
                jointRadius *= 0.2
                jointColor = .yellow
                
            case _ where jointName.hasPrefix("spine_"):
                jointRadius *= 0.75

            case "left_hand_joint", "right_hand_joint":
                jointRadius *= 1
                jointColor = .green

            case _ where jointName.hasPrefix("left_hand") || jointName.hasPrefix("right_hand"):
                jointRadius *= 0.25
                jointColor = .yellow

            case _ where jointName.hasPrefix("left_toes") || jointName.hasPrefix("right_toes"):
                jointRadius *= 0.5
                jointColor = .yellow

            default:
                jointRadius *= 0.05
                jointColor = .green
            }

            // Eklemi oluşturma
            let jointEntity = createJoints(radius: jointRadius, color: jointColor)
            joints[jointName] = jointEntity
            self.addChild(jointEntity)
        }

        // Kemikler ve Omurga görselleştirmesi
       
    }

    required init() {
        fatalError("init() has not been implemented")
    }
    
    func update(with bodyAnchor: ARBodyAnchor) {
        let rootPosition = simd_make_float3(bodyAnchor.transform.columns.3)
        
        // Eklemleri güncelle
        for jointName in ARSkeletonDefinition.defaultBody3D.jointNames {
            if let jointEntity = joints[jointName],
               let jointEntityTransform = bodyAnchor.skeleton.modelTransform(for: ARSkeleton.JointName(rawValue: jointName)) {
                let jointEntityOfFsetFromRoot = simd_make_float3(jointEntityTransform.columns.3)
                jointEntity.position = jointEntityOfFsetFromRoot + rootPosition
                jointEntity.orientation = Transform(matrix: jointEntityTransform).rotation
            }
        }
        
        // Kemikleri güncelle
       
    }
    
    private func createJoints(radius: Float, color: UIColor = .white) -> Entity {
        let mesh = MeshResource.generateSphere(radius: radius)
        let material = SimpleMaterial(color: color, roughness: 0.8, isMetallic: false)
        return ModelEntity(mesh: mesh, materials: [material])
    }

    private func createSkeletonBone(bone: Bones, bodyAnchor: ARBodyAnchor) -> Eklemboy? {
        // Geleneksel eklem dönüşümü için koordinatları hesapla
        guard let fromJointEntityTransform = bodyAnchor.skeleton.modelTransform(for: ARSkeleton.JointName(rawValue: bone.jointFromName)),
              let toJointEntityTransform = bodyAnchor.skeleton.modelTransform(for: ARSkeleton.JointName(rawValue: bone.jointToName))
        else {
            return nil
        }
        
        let rootPosition = simd_make_float3(bodyAnchor.transform.columns.3)

        // Eklemlerin konumlarını hesapla
        let jointFromEntityOffsetFromRoot = simd_make_float3(fromJointEntityTransform.columns.3)
        let jointFromEntityPosition = jointFromEntityOffsetFromRoot + rootPosition

        let jointToEntityOffsetFromRoot = simd_make_float3(toJointEntityTransform.columns.3)
        let jointToEntityPosition = jointToEntityOffsetFromRoot + rootPosition

        let fromJoint = SkeletonJoint(name: bone.jointFromName, position: jointFromEntityPosition)
        let toJoint = SkeletonJoint(name: bone.jointToName, position: jointToEntityPosition)

        return Eklemboy(fromJoint: fromJoint, toJoint: toJoint)
    }

    private func createBoneEntity(for skeletonBone: Eklemboy, diameter: Float = 0.04, color: UIColor = .white) -> Entity {
        // Kemikler için kutu şeklinde bir şekil oluştur
        let mesh = MeshResource.generateBox(size: [diameter, diameter, skeletonBone.length], cornerRadius: diameter / 2)
        let material = SimpleMaterial(color: color, roughness: 0.5, isMetallic: true)
        return ModelEntity(mesh: mesh, materials: [material])
    }
}

 
*/
