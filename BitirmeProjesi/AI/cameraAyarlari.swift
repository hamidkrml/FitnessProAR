//
//  File.swift
//  BitirmeProjesi
//
//  Created by hamid on 11.12.24.
//

import SwiftUI
import ARKit
import RealityKit


struct eklemtespiti: UIViewRepresentable {
    
    typealias UIViewType = ARView
        
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
    

    
    
}
