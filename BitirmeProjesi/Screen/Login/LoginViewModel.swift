//
//  LoginViewModel.swift
//  BitirmeProjesi
//
//  Created by hamid on 09.03.25.
//

import Foundation


class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage: String? = nil
    func signIn() async throws{
        do{
            try await LoginFirbase.shared.login(email: email, password: password)

        }catch{
            self.errorMessage = "Kullanıcı adı veya şifre yanlış: \(error.localizedDescription)"
        }
        
    }
}
