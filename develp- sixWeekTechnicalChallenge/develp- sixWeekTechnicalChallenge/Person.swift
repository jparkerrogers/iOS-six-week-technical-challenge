//
//  Person.swift
//  develp- sixWeekTechnicalChallenge
//
//  Created by Jonathan Rogers on 3/11/16.
//  Copyright © 2016 Jonathan Rogers. All rights reserved.
//

import Foundation

class Person: Equatable {
    
    let kName = "name"
    let kAge = "age"

    var name: String
    var age: String
    
    init(name: String, age:String) {
        self.name = name
        self.age = age
    }
    
    init?(dicitonary: Dictionary<String, AnyObject>) {
        guard let name = dicitonary[kName] as? String,
            let age = dicitonary[kAge] as? String else {
                self.name = ""
                self.age = ""
                
                return nil
        }
        
        self.name = name
        self.age = age
    }
    
    func dictionaryCopy() -> Dictionary<String, AnyObject> {
        
        let dictionary = [
            kName
        ]
    }
}

func == (lhs: Person, rhs: Person) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}
