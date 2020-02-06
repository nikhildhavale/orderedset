//
//  ViewController.swift
//  OrderedSet
//
//  Created by Nikhil d on 06/02/20.
//  Copyright © 2020 Nikhil d. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let orderedSet = NSMutableOrderedSet()
    var array = [Person]()
    var arraySwift = [PersonSwift]()
    var orderdSetSwift = OrderedSet<PersonSwift>()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let person1 = Person()
        person1.id = "1"
        person1.name = "1n"
        let person2 = Person()
        person2.id = "2"
        person2.name = "2n"
        let person3 = Person()
        person3.id = "1"
        person3.name = "1nfff"
        orderedSet.add(person1)
        orderedSet.add(person2)
        for item in orderedSet {
            if let person = item as? Person {
                print(person.description)
            }
        }
        print("inserting")
        orderedSet.add(person3)
        for item in orderedSet {
            if let person = item as? Person {
                print(person.description)
            }
        }
        print("array")
        array.append(person1)
        array.append(person2)
        for item in array {
            print(item.description)
        }
        print("inserting")
        
        if let index = array.firstIndex(of: person3){
            array.remove(at: index)
            array.insert(person3, at: index)
        }
        for item in array {
            print(item.description)
        }
        print("array swift object")
        let person1s = PersonSwift()
        person1s.id = "1"
        person1s.name = "1n"
        let person2s = PersonSwift()
        person2s.id = "2"
        person2s.name = "2n"
        let person3s = PersonSwift()
        person3s.id = "1"
        person3s.name = "1nfff"
        
        arraySwift.append(person1s)
        arraySwift.append(person2s)
        for item in arraySwift {
            print(item.description)
        }
        print("inserting")
        
        if let index = arraySwift.firstIndex(of: person3s){
            arraySwift.remove(at: index)
            arraySwift.insert(person3s, at: index)
        }
        for item in arraySwift {
            print(item.description)
        }
        print("swift ordered set")
        orderdSetSwift.append(person1s)
        orderdSetSwift.append(person2s)
        for item in orderdSetSwift {
                print(item.description)
        }
        print("inserting")
        orderdSetSwift.append(person3s)
        for item in orderdSetSwift {
                print(item.description)
        }
        
        
    }
    
    
}

