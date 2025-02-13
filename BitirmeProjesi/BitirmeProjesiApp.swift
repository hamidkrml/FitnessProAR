//
//  BitirmeProjesiApp.swift
//  BitirmeProjesi
//
//  Created by hamid on 28.11.24.
//

import SwiftUI
import SwiftData

@main
struct BitirmeProjesiApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                tanitimSayfasi()
            }
            
        }
        .modelContainer(for: SporData.self)
        
    }
    init(){
        print(URL.applicationSupportDirectory.path(percentEncoded: false))
    }
}
