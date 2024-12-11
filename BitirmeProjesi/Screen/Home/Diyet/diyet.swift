//
//  asd.swift
//  BitirmeProjesi
//
//  Created by hamid on 02.12.24.
//

import SwiftUI

struct diyet: View {
    let columuns : [GridItem] = [GridItem(.flexible()),
                                 GridItem(.flexible()),
                                 GridItem(.flexible())
                                ]
    
    var body: some View {
        ZStack{
            NavigationView{
                ScrollView{
                    
                    
                    VStack{
                        Image("fitness")
                            .resizable()
                            .frame(width: 380, height: 320)
                            .cornerRadius(15)
                    }
                    
                    
                    Divider()
                    Text("Diyetlerimiz")
                        .font(.customfont(font: .light, fontSize: 35))
                        .maxLeft
                    LazyVGrid(columns: columuns){
                    ForEach(mocdata.diyetverisi){ diyetverileri in
                        yemekfonk(diyetverileri: diyetverileri)
                                }
                        }
                    
                }
               
                .navigationTitle("ProFitness")
                
                }
        }
      .navHide
       
    }
       
}
   
#Preview {
    diyet()
}

