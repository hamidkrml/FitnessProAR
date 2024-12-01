//
//  BitirmeProjesiApp.swift
//  BitirmeProjesi
//
//  Created by hamid on 28.11.24.
//

import SwiftUI

@main
struct BitirmeProjesiApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView(){
                tanitimSayfasi()
            }
            .navigationViewStyle(.stack)
        }
    }
}
