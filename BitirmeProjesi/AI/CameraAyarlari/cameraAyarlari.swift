//
//  File.swift
//  BitirmeProjesi
//
//  Created by hamid on 11.12.24.
/*

import SwiftUI
import ARKit
import RealityKit

private var bodySkeleton: BodySkeleton?
private let bodySkeletonAncor = AnchorEntity()

struct cameraAyarlari: UIViewRepresentable {
    
    typealias UIViewType = ARView
        
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
        arView.setupForBodyTracking()
        arView.scene.addAnchor(bodySkeletonAncor)
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
    

    
    
}


    extension ARView: ARSessionDelegate {
    func setupForBodyTracking() {
        let configuration = ARBodyTrackingConfiguration()
        self.session.run(configuration)
        self.session.delegate = self
    }
        
        
        
        public func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
            for anchor in anchors {
                if let bodyAnchor = anchor as? ARBodyAnchor {
                    if let skeleton = bodySkeleton{
                        skeleton.update(with:bodyAnchor)
                    }else{
                        bodySkeleton = BodySkeleton(for: bodyAnchor)
                        bodySkeletonAncor.addChild(bodySkeleton!)
                    }
                }
            }
        }
        

        func listAllJointNames() {
            let jointNames = ARSkeletonDefinition.defaultBody3D.jointNames
            for jointName in jointNames {
                print(jointName)
            }
        }

        // Bu kodu ARKit içeren bir projede kullanabilirsiniz.

 }

*/
