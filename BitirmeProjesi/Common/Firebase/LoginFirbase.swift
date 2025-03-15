//
//  File.swift
//  BitirmeProjesi
//
//  Created by hamid on 03.01.25.
//
import Foundation
import FirebaseAuth
import SwiftUI

class LoginFirbase{

    @Published var user1: FirebaseAuth.User?
    
    static let shared = LoginFirbase()
    
    init() {
        self.user1 = Auth.auth().currentUser
    }
    
      
    func login(email:String, password:String)async throws{
        
        
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.user1 = result.user
        }catch{
            let hata = Text("Kullanci adiniz Veya sifreniz yanlisdir\(error.localizedDescription)")
        }
        
    }
    
    func createUser(email:String,password:String)async throws{
        do{
            let resut = try await Auth.auth().createUser(withEmail: email, password: password)
            self.user1 = resut.user
        }catch{
            print("hata\(error.localizedDescription)")
        }
    }
    
    func loadUserData()async throws{}
    
    func signout(){
        /// firbase kullanci adindan dusecek
        try? Auth.auth().signOut()
        self.user1 = nil
    }
    
    
}
