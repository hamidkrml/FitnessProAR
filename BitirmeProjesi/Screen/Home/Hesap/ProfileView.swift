//
//  hesapbilgileri.swift
//  BitirmeProjesi
//
//  Created by hamid on 10.01.25.
//

import PhotosUI
import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject private var viewModel = ProfileViewModel()

    var body: some View {
        PhotosPicker(
            selection: $viewModel.selectedItem,
            matching: .images,
            photoLibrary: .shared()
        ) {
            // Eğer resim seçildiyse resmi göster, aksi halde placeholder göster
            if let image = viewModel.profileImage {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                    .shadow(radius: 10)
            } else {
                Circle()
                    .fill(Color.gray.opacity(0.5))
                    .frame(width: 120, height: 120)
                    .overlay(Text("Fotoğraf Ekle").foregroundColor(.white))
            }
        }
        .onChange(of: viewModel.selectedItem) { _, newValue in
            viewModel.loadImage(from: newValue)
        }
        .padding()
    }
}
