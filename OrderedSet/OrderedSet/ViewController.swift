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
    }


}

