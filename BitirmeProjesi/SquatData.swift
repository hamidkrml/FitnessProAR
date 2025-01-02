//
//  SquatData.swift
//  BitirmeProjesi
//
//  Created by hamid on 29.12.24.
//

import Foundation
import SwiftData



@Model
class SquatData{
    @Attribute var count :Int
    
    init(count: Int) {
        self.count = count
    }
    
}

