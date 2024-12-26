//
//  FrameworkGridViewModel.swift
//  BitirmeProjesi
//
//  Created by hamid on 18.12.24.
//

import Foundation
import SwiftUI
final class FrameworkGridViewModel:ObservableObject{
    var selecedFramework:Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    
    @Published  var isShowingDetailView = false
}

