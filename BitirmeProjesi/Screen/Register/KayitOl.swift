//
    //  KayitOl.swift
//  BitirmeProjesi
//
//  Created by hamid on 01.12.24.
//

import SwiftUI

struct KayitOl: View {

    @State var hamit = false
    @EnvironmentObject var viewModel:registerViewModel
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing:20){
                    
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
                    VStack(spacing: 20){
                        TextField("Ad", text: $viewModel.ad)
                            .background(Color.white.opacity(0.2))
                            .foregroundColor(.red)
                            .cornerRadius(20, corner: .allCorners)
                    }
                    
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                ExtractedView.shared
            )
        
            .preferredColorScheme(.dark)
        }
        
            
            
         //   .bgNavlink(content: , isAction: $hamit)
            
    }
        
}

#Preview {
    NavigationStack{
        KayitOl()
    }
}
