//
//  CoreDataManager.swift
//  Jobs_Final
//
//  Created by Rodolphe Schnetzer on 20/04/2022.
//

import Foundation
import CoreData


final class CoreDataManger {
    
    // MARK: - Properties

    private let coreDataStack: CoreDataStack
    private let managedObjectContext: NSManagedObjectContext

    var tasks: [Profile] {
        let request: NSFetchRequest<Profile> = Profile.fetchRequest()
        
        guard let profile = try? managedObjectContext.fetch(request) else { return [] }
        return profile
    }

    // MARK: - Initializer

    init(coreDataStack: CoreDataStack) {
        self.coreDataStack = coreDataStack
        self.managedObjectContext = coreDataStack.mainContext
    }
    
    
    
}
