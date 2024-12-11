//
//  dsa.swift
//  BitirmeProjesi
//
//  Created by hamid on 02.12.24.
//

import SwiftUI

struct dsa: View {
    var body: some View {
        VStack{
            HStack{
                Image("fitness")
                    .resizable()
                    .frame(width: 60, height: 50)
                    .padding()
                Text("ProFitness")
                        .font(.customfont(font: .Bold, fontSize:40))
                
            }.maxLeft
            
           
            
            
            Spacer()
        }
    }
}

#Preview {
    dsa()
}
