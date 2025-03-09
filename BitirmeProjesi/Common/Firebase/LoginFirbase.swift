//
//  File.swift
//  BitirmeProjesi
//
//  Created by hamid on 03.01.25.
//
import Foundation
import FirebaseAuth


class LoginFirbase{

    @Published var user: FirebaseAuth.User?
    
    static let shared = LoginFirbase()
    
    init() {
        self.user = Auth.auth().currentUser
    }
    
    func login(email:String, password:String)async throws{}
    
    func createUser(email:String,password:String)async throws{
        print("kullanci mail\(email)")
        print("kullanci mail\(password)")
    }
    
    func loadUserData()async throws{}
    
    func signout(){}
    
    
}
