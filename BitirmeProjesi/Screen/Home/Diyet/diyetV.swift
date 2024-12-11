//
//  diyetV.swift
//  BitirmeProjesi
//
//  Created by hamid on 11.12.24.
//

import Foundation
import SwiftUI

struct yemekfonk: View  {
 let diyetverileri: diyetverileri
    
    
    var body: some View {
        VStack{
            
                
            Image(diyetverileri.imageName)
                .resizable()
                .frame(width: 90, height: 80)
                .cornerRadius(15)
            Text(diyetverileri.name)
                .font(.customfont(font: .light, fontSize: 14))
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
            
        }
        .top8
        
    }
    
    
}
