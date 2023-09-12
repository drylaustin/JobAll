//
//  JobAllApp.swift
//  JobAll
//
//  Created by DARYL AGUSTIN on 9/12/23.
//

import SwiftUI

@main
struct JobAllApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
