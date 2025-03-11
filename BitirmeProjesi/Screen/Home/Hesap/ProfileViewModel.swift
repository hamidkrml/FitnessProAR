//
//  ProfileViewModel.swift
//  BitirmeProjesi
//
//  Created by hamid on 11.03.25.
//
import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    @Published var selectedItem: PhotosPickerItem? = nil
    @Published var profileImage: Image? = nil

    func loadImage(from item: PhotosPickerItem?) {
        guard let item = item else { return }

        item.loadTransferable(type: Data.self) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    if let data = data, let uiImage = UIImage(data: data) {
                        self.profileImage = Image(uiImage: uiImage)
                    } else {
                        print("Resim verisi alınamadı")
                    }
                case .failure(let error):
                    print("Hata oluştu: \(error.localizedDescription)")
                }
            }
        }
    }
}
