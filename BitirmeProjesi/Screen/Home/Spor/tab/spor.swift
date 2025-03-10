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
        
        let sampledata: [(image:String,title:String,destination:DetailPage)] = [
            (image :"squat",title:"Squat",destination: .squat),
            (image :"bicep",title:"Biceps",destination: .bicep),
            (image :"lateral",title:"Lateral",destination: .lateral),
            (image :"dumbel",title:"DumbelPres",destination: .dumbel),
            (image :"sag",title:"LungesSag",destination: .LungesSag),
            (image :"sol",title:"LungesSol",destination: .LungesSol)
        ]
        
        
        
        
        
        
        NavigationView{
            ScrollView{
                
                    
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
                    
                    LazyVStack {
                        
                        ForEach(sampledata, id: \.title) { item in
                            let destinationView = getDetailView(for: item.destination)
                            
                            NavigationLink(destination: destinationView) {
                                productCard(image: item.image, title: item.title)
                                    
                            }
                      }
                }
                
                }
            .navigationTitle("sporlarimiz")
           
            .background(
                ExtractedView.shared
            )
          .preferredColorScheme(.dark)
            }
            
        .navHide
    }
    }
//#Preview {
//    spor()
//}
