
//
//  LoginViewModel.swift
//  BitirmeProjesi
//
//  Created by hamid on 09.03.25.
//

import Foundation
import Firebase
import FirebaseAuth
import Combine

class FirbaseViewModel:ObservableObject{
    private let service = LoginFirbase.shared
    private let cancellables = Set<AnyCancellable>()
    @Published var user1:FirebaseAuth.User?
    
    init(){
        setupSubscibers()
    }
    
    func setupSubscibers(){
        service.$user.sink{[weak self] user in
            self?.user1 = user}
    }
        
}

