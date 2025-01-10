//
//  Button .swift
//  BitirmeProjesi
//
//  Created by hamid on 29.12.24.
//

import Foundation
import SwiftUI

struct Buttongenel: View {
    var adyaz :String
    var body: some View {
        
        Text(adyaz)
            .foregroundColor(.btPrimaryApp)
            .frame(width: 200, height: 40)
            .background(Color.primaryApp)
            .cornerRadius(25)
            .padding(.bottom, .bottomInsets + 16)
    }
}

