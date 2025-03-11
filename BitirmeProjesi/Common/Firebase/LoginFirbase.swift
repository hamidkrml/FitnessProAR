//
//  File.swift
//  BitirmeProjesi
//
//  Created by hamid on 03.01.25.
//
import Foundation
import FirebaseAuth


class LoginFirbase{

    @Published var user1: FirebaseAuth.User?
    
    static let shared = LoginFirbase()
    
    init() {
        self.user1 = Auth.auth().currentUser
    }
    
      
    func login(email:String, password:String)async throws{}
    
    func createUser(email:String,password:String)async throws{
        do{
            let resut = try await Auth.auth().createUser(withEmail: email, password: password)
            self.user1 = resut.user
        }catch{
            print("hata\(error.localizedDescription)")
        }
    }
    
    func loadUserData()async throws{}
    
    func signout(){}
    
    
}
