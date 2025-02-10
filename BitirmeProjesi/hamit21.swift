//
//  hamit.swift
//  SwiftDataApp
//
//  Created by hamid on 10.02.25.
//

import SwiftUI

struct hamit21: View {
    var body: some View {
       
       
        kayitEkrani()
        
        .frame(maxWidth: .infinity)
        .background{
            ExtractedView()
        }
       .preferredColorScheme(.dark)
    }
}

#Preview {
    hamit21()
}

struct ExtractedView: View {
    var body: some View {
        ZStack {
            
            
            VStack {
                
                Circle()
                    .fill(Color.yellow) // İç kısmı yeşil
                    .scaleEffect(0.6)
                    .offset(x: 20)
                    .blur(radius: 120)
                
                Circle()
                    .fill(Color.red) // İç kısmı yeşil
                    .scaleEffect(0.6)
                    .offset(x: 20)
                    .blur(radius: 120)
                
                Circle()
                    .fill(Color.yellow) // İç kısmı yeşil
                    .scaleEffect(0.6)
                    .offset(x: 20)
                    .blur(radius: 120)
            }
            Rectangle()
                .fill(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}
