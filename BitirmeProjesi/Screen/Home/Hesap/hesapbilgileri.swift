//
//  hesapbilgileri.swift
//  BitirmeProjesi
//
//  Created by hamid on 10.01.25.
//

import Foundation
import SwiftUI
import PhotosUI


struct hesapbilgileri :View {
    var body: some View {
        
        @State var selectedPhoto: PhotosPickerItem? = nil
        @State var profileImage: Image? = nil
        
        NavigationView {
            ZStack {
                ExtractedView.shared
                    .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    HStack{
                    if let profileImage = profileImage {
                                    profileImage
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 120, height: 120)
                                        .clipShape(Circle())
                                        .shadow(radius: 5)
                    } else {
                        
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                            .foregroundColor(.gray)
                        
                        PhotosPicker("Fotoğraf Seç", selection: $selectedPhoto, matching: .images)
                            .buttonStyle(.bordered)
                            .padding(.top, 10)
                        
                        
                    }
                        
                    }
                    .maxLeft
                    .top15
                    .horizontal8
                    
                    VStack{
                        Text("ghfkghgh")
                        
                    }
                    Spacer()
                }
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
           
        }
        .preferredColorScheme(.dark)
    }
        
}
#Preview {
    hesapbilgileri()
}
