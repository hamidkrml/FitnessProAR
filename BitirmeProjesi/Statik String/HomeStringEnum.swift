//
//  HomeStringEnum.swift
//  BitirmeProjesi
//
//  Created by hamid on 05.02.25.
//

import Foundation
enum SporSayfalarinString:String{
    case biceps,LsagVid,LsolVid,PressVid,Squat,StandingVid
    
    func localizede() -> String{
        rawValue.localizede()
    }
}

extension String{
    func localizede() -> String{
        return NSLocalizedString(self, tableName: "SporSayfalarinString",bundle: Bundle.main,value: String(),comment: String())
    }
}
