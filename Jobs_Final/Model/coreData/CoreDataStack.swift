//
//  CoreDataStack.swift
//  Jobs_Final
//
//  Created by Rodolphe Schnetzer on 20/04/2022.
//

import Foundation
import CoreData

open class CoreDataStack {
    

// MARK: - Core Data stack

private let modelName: String

public init(modelName: String) {
    self.modelName = modelName
}

lazy var persistentContainer: NSPersistentContainer = {
  
    let container = NSPersistentContainer(name: modelName)
    container.loadPersistentStores(completionHandler: { (storeDescription, error) in
        if let error = error as NSError? {
          
            fatalError("Unresolved error \(error), \(error.userInfo)")
        }
    })
    return container
}()

// MARK: - Core Data Saving support
    
    public lazy var mainContext: NSManagedObjectContext = {
        return persistentContainer.viewContext
    }()

func saveContext () {
    let context = persistentContainer.viewContext
    if context.hasChanges {
        do {
            try context.save()
        } catch {
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
    }
}
}
