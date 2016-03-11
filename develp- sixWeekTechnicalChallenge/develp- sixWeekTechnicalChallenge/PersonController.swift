//
//  PersonController.swift
//  develp- sixWeekTechnicalChallenge
//
//  Created by Jonathan Rogers on 3/11/16.
//  Copyright © 2016 Jonathan Rogers. All rights reserved.
//

import Foundation

class PersonController {
    
    private let personsKey = "persons"
    
    var persons: [Person]
    
    init() {
        
        self.persons = []
    }

    func addPerson(person: Person) {
        
        persons.append(person)
        
    }
    
    func removePerson(person: Person) {
        if let personIndex = persons.indexOf(person) {
            persons.removeAtIndex(personIndex)
        }
    }
    
    func loadToPersistentStorage() {
        
        let personDictionariesLoaded = NSUserDefaults.standardUserDefaults().objectForKey(personsKey) as? [Dictionary<String, AnyObject>]
        
        if let personDictionary = personDictionariesLoaded {
            self.persons = personDictionary.map({Person(dicitonary: $0)!})
        }
    }
    
    func saveToPersistentStorage() {
        
        let personDictionariesSaved = self.persons.map({$0.dictionaryCopy()})
    }
}
