//
//  Persistence.swift
//  JobAll
//
//  Created by DARYL AGUSTIN on 9/12/23.
//

import Foundation
import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Jobs")
        
        container.loadPersistentStores{ (jobDescription, error) in
            if let error = error as NSError? {
                fatalError("load failed: \(error)")
            }
        }
    }
}
