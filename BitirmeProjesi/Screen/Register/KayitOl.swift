//
    //  KayitOl.swift
//  BitirmeProjesi
//
//  Created by hamid on 01.12.24.
//

import SwiftUI

struct KayitOl: View {

    @State var hamit = false
    @State var ad :String = ""
    @EnvironmentObject var viewModel:registerViewModel
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:35){
                    
                    HStack{
                        Image("fitness")
                            .resizable()
                            .frame(width: 100,height: 100)
                            .clipShape(Circle())
                            .padding()
                        Text("Kayit Ol")
                            .font(.largeTitle)
                            .italic()
                            .foregroundStyle(.white)
                            .lineSpacing(15)
                            .shadow(color:.gray,radius: 2,x: 2,y:2)
                    }
                    .maxLeft
                    .top8
                    Spacer()
                    HStack(spacing: 20){
                        TextField("Ad", text: $viewModel.ad)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(20, corner: .allCorners)
                        
                        TextField("SoyAd", text: $viewModel.soyad)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(20, corner: .allCorners)
                    }
                    
                    
                    VStack(spacing: 30){
                        TextField("Gmail", text: $viewModel.gmail)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(20, corner: .allCorners)
                        
                        SecureField("Şifre",text: $viewModel.Sifre)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(20, corner: .allCorners)
                    }
                    HStack(spacing: 20){
                        TextField("Boy", text: $viewModel.boy)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(20, corner: .allCorners)
                        
                        TextField("Ceki", text: $viewModel.ceki)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(20, corner: .allCorners)
                    }
                    Spacer()
                    Button {
                        Task{try await viewModel.CreateUser()}
                    } label: {
                        Buttongenel(adyaz: "KayitOl")
                    }

                }
                .padding(.horizontal,20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                ExtractedView.shared
            )
        
            .preferredColorScheme(.dark)
        }.navHide
        
            
            
         //   .bgNavlink(content: , isAction: $hamit)
            
    }
        
}

#Preview {
    NavigationStack{
        KayitOl()
//            .environmentObject(<#T##T#>)
    }
}
