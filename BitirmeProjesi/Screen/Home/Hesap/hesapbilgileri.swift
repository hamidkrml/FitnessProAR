//
//  hesapbilgileri.swift
//  BitirmeProjesi
//
//  Created by hamid on 10.01.25.
//

import Foundation
import SwiftUI

struct hesapbilgileri :View {
    var body: some View {

        VStack {
            Text("kullancilarin bilgileri ve suan kadar yapdiklari işlemleri gösterilecek ve beden kitle indeksi ve")
                .font(.customfont(font: .Bold, fontSize: 22))
        }
            
            
                .font(.customfont(font: .Bold, fontSize: 22))
            
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background{
                    ExtractedView()
                }
        
                .preferredColorScheme(.dark)
    }
        
}
#Preview {
    hesapbilgileri()
}
