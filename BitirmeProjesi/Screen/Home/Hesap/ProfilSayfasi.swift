//
//  ProfilSayfasi.swift
//  BitirmeProjesi
//
//  Created by hamid on 11.03.25.
//

import SwiftUI

struct ProfilSayfasi: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 40) {
                ProfileView()
                    .maxLeft
                Button {
                    print("sad")
                } label: {
                    Text("Cıkış Yap")
                        .foregroundColor(.white)
                }
                .maxConter
            }
            
            HStack(spacing: 30){
                
                Text("Ad\n\("asda")")
                    .padding()
                Text("SoyAd\n\("asda")")
                    .padding()
                Text("Boy\n\("asda")")
                    .padding()
                Text("Ceki\n\("asda")")
                    .padding()
            }.maxLeft
                .padding()
                .font(.customfont(font: .light, fontSize: 15))
                .italic()
                .foregroundStyle(.white)
                .lineSpacing(15)
                .shadow(color:.gray,radius: 2,x: 2,y:2)
            Spacer()
            
            
            VStack{
                
            }
        }.background(
            ExtractedView.shared
        )
        .preferredColorScheme(.dark)
    }
}
#Preview {
    ProfilSayfasi()
}
