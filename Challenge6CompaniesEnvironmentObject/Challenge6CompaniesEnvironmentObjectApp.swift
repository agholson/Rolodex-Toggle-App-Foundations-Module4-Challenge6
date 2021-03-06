//
//  Challenge6CompaniesEnvironmentObjectApp.swift
//  Challenge6CompaniesEnvironmentObject
//
//  Created by Shepherd on 8/7/21.
//

import SwiftUI

@main
struct Challenge6CompaniesEnvironmentObjectApp: App {
  
    var body: some Scene {
        
        WindowGroup {
            // Initialize the RolodexModel, which we follow around here
            ContentView()
                .environmentObject(RolodexModel())
        }
        
    }
}
