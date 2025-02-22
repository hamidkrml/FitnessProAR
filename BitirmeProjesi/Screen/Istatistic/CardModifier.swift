//
//  CardModifier.swift
//  BitirmeProjesi
//
//  Created by hamid on 22.02.25.
//

import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        
            .cornerRadius(10)
            .shadow(color:Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}


