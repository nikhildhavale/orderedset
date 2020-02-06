//
//  Person.swift
//  OrderedSet
//
//  Created by Nikhil d on 06/02/20.
//  Copyright © 2020 Nikhil d. All rights reserved.
//

import UIKit

class Person: NSObject {
    var id = ""
    var name = ""
    public static func == (lhs: Person, rhs: Person) -> Bool
    {
        return lhs.id == rhs.id
    }
    override var description: String{
        return "id = \(id)  name \(name)"
    }
    override func isEqual(_ object: Any?) -> Bool {
        if let person = object as? Person {
            if person.id == self.id {
                return true
            }
        }
        return false
    }
}
class PersonSwift:Equatable,CustomStringConvertible,Hashable {
    var description: String {
         return "id = \(id)  name \(name)"
    }
    
    var id = ""
    var name = ""
    static func == (lhs: PersonSwift, rhs: PersonSwift) -> Bool {
         return lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        
    }
    
}
