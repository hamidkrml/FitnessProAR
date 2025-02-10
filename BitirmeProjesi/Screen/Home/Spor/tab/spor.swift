//
//  spor.swift
//  BitirmeProjesi
//
//  Created by hamid on 03.02.25.
//

import SwiftUI

struct spor: View {
    let columns = [
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    //yatay hizalandirmak icin
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:25){
                            NavigationLink(destination: KayitOl()){
                                Image("fitness")
                                    .resizable()
                                    .frame(width: 300,height: 200)
                                    .cornerRadius(35)
                            }
                            NavigationLink(destination: KayitOl()){
                                Image("fitness")
                                    .resizable()
                                    .frame(width: 350,height: 200)
                                    .cornerRadius(35)
                            }
                        }
                        .padding(.horizontal)
                    }
                    Divider()
                    
                    LazyVGrid(columns: columns, spacing: 25) {
                        
                        
                        NavigationLink(destination: Squatvid()) {
                            HStack(spacing: 50) {
                                Image("squat")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .offset(x:20)
                                    .cornerRadius(30)
                                Text("Squat ")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                
                            }
                            .maxLeft
                        }
                        
                        NavigationLink(destination: Bicepvid()) {
                            HStack(spacing: 50  ) {
                                
                                Image("bicep")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .offset(x:20)
                                    .cornerRadius(30)
                                Text("Biceps ")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            }
                            .maxLeft
                        }
                        NavigationLink(destination: Standingvid()) {
                            HStack(spacing: 50) {
                                
                                Image("lateral")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .offset(x:20)
                                    .cornerRadius(30)
                                Text("lateral")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            }
                            .maxLeft
                        }
                        NavigationLink(destination: Pressvid()) {
                            HStack(spacing: 50) {
                                
                                Image("dumbel")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .offset(x:20)
                                    .cornerRadius(30)
                                Text("dumbelPres")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            }
                            .maxLeft
                        }
                        
                        NavigationLink(destination: Lsagvid()) {
                            HStack(spacing: 50) {
                                
                                Image("sag")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .offset(x:20)
                                    .cornerRadius(40)
                                Text("Lungess")
                                    .font(.title2)
                                    .foregroundColor(.black)
                            }
                            .maxLeft
                        }
                        
                        NavigationLink(destination: Lsolvid()) {
                            HStack(spacing: 50) {
                                
                                Image("sol")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .offset(x:20)
                                    .cornerRadius(30)
                                
                                Text("Lungess")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                
                                
                            }.maxLeft
                            
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .navigationTitle("sporlarimiz")
            .frame(maxWidth: .infinity)
            .background{
                ExtractedView()
            }
          //.preferredColorScheme(.dark)
        }.navHide
    }
    
    
}
#Preview {
    spor()
}
