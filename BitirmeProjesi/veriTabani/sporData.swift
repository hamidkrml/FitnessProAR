//
//  sporData.swift
//  BitirmeProjesi
//
//  Created by hamid on 12.02.25.
//

import Foundation
import SwiftData


@Model
class sporData{
    var squat : Int
    var biceps : Int
    var lungeSol: Int
    var lungerSag : Int
    var press : Int
    var standing : Int
    
    
    init(squat: Int, biceps: Int, lungeSol: Int, lungerSag: Int, press: Int, standing: Int) {
        self.squat = squat
        self.biceps = biceps
        self.lungeSol = lungeSol
        self.lungerSag = lungerSag
        self.press = press
        self.standing = standing
    }
    
    
    
}
