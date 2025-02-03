//
//  SporHaberleri .swift
//  BitirmeProjesi
//
//  Created by hamid on 03.02.25.
//

import SwiftUI

struct SporHaberleri_: View {
    var body: some View {
        
        GeometryReader{ geometry in
            
            
            NavigationView {
                ScrollView(.horizontal){
                    LazyHStack() {
                        HStack{
                            
                            
                            NavigationLink(destination: KayitOl()) {
                                Image("fitness")
                                    .resizable()
                                    .frame(width: 350,height:200)
                                    .cornerRadius(.infinity, corner: .allCorners)
                                    .offset(x:30,y: 25)
                            }
                            
                            NavigationLink(destination: KayitOl()) {
                                Image("fitness")
                                    .resizable()
                                    .frame(width: 350,height:200)
                                    .cornerRadius(.infinity, corner: .allCorners)
                                    .offset(x:30,y: 25)
                            }
                            
                            
                            
                        }
                    }
                }.navigationTitle("Sporlarimiz")
            }
               
        
            
            
            
        }
        
        
    }
}

#Preview {
    SporHaberleri_()
}
