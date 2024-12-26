//
//  eklemBony.swift
//  BitirmeProjesi
//
//  Created by hamid on 11.12.24.
/*
import Foundation
import RealityKit

struct Eklemboy {
    var fromJoint: SkeletonJoint
    var toJoint: SkeletonJoint

    // İki eklem arasındaki mesafeyi hesaplamak için bir fonksiyon ekleyebilirsiniz
    var centerPosition: SIMD3<Float> {
        [( fromJoint.position.x + toJoint.position.x)/2,(fromJoint.position.y+toJoint.position.y)/2,(fromJoint.position.z + toJoint.position.z)/2 ]
    }
    var length: Float {
        simd_distance(fromJoint.position, toJoint.position)
    }
    
    
    
}
    func calculateAngle(joint1: SIMD3<Float>, joint2: SIMD3<Float>, joint3: SIMD3<Float>) -> Float {
        let vector1 = joint1 - joint2
        let vector2 = joint3 - joint2
        let dotProduct = dot(vector1, vector2)
        let magnitude = length(vector1) * length(vector2)
        return acos(dotProduct / magnitude) * (180 / .pi)
 }

*/
