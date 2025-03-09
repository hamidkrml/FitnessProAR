//
//  LoginViewModel.swift
//  BitirmeProjesi
//
//  Created by hamid on 09.03.25.
//

import Foundation
import FirebaseAuth
import Combine

class LoginViewModel:ObservableObject{
    private let service = LoginFirbase.shared
    private let cancellables = Set<AnyCancellable>()
    @Published var user:FirebaseAuth.User?
    
    init(){
        setupSubscibers()
    }
    
    func setupSubscibers(){
        service.$user.sink{[weak self] user in
            self?.user = user}
    }
}
