//
//  User.swift
//  BitirmeProjesi
//
//  Created by hamid on 15.03.25.
//

import Foundation

struct User: Identifiable,Codable{
    let id: String
    var ad:String    = "hamit"
    var soyad:String = "karim"
    var Sifre:String = ""
    var gmail:String = ""
    var boy  :String = ""
    var ceki :String = ""
}
extension User{
    static var moock_Data:[User] = [
        .init(id: UUID().uuidString)
    ]
}
