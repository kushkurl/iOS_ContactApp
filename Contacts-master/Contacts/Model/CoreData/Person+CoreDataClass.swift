//
//  Person+CoreDataClass.swift
//  Contacts
//
//  Created by Kushagra Kurl and Jaskirat Kaur.
//  
//
//

import Foundation
import CoreData


public class Person: NSManagedObject {
    
    convenience init() {
        self.init(entity: CoreDataManager.sharedInstance.entityForName("Person"), insertInto: CoreDataManager.sharedInstance.persistentContainer.viewContext)
    }
}
