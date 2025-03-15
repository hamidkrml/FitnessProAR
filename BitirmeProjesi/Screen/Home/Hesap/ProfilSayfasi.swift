//
//  ProfilSayfasi.swift
//  BitirmeProjesi
//
//  Created by hamid on 11.03.25.
//

import SwiftUI

struct ProfilSayfasi: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    HStack(spacing: 40) {
                        ProfileView()
                            .maxLeft
                        Button {
                            LoginFirbase.shared.signout()
                        } label: {
                            Text("Cıkış Yap")
                                .foregroundColor(.white)
                                .font(.customfont(font: .Bold, fontSize: 12))
                        }
                        .padding(.trailing,9)
                    }
                    
                    HStack(spacing: 30){
                        
                        Text("Ad\n\("Hamit")")
                            .padding()
                        Text("SoyAd\n\("Karimli")")
                            .padding()
                        Text("Boy\n\("179")")
                            .padding()
                        Text("Ceki\n\("69")")
                            .padding()
                    }.maxLeft
                        .padding()
                        .font(.customfont(font: .light, fontSize: 14))
                        .italic()
                        .foregroundStyle(.white)
                        .lineSpacing(15)
                        .shadow(color:.gray,radius: 2,x: 2,y:2)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(22, corner: .allCorners)
                    
                    
                    Divider()
                    
                    VStack{
                        Text("Grafikler Eklenecek")
                    }
                    Spacer()
                }
            }.background(
                ExtractedView.shared
            )
            .preferredColorScheme(.dark)
        }
    }
}
#Preview {
    ProfilSayfasi()
}
