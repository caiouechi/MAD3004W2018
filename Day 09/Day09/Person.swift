//
//  Person.swift
//  Day09
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


class Person{
    var Name: String
    var Address: String
    var Age: Int
    
    init(){
        self.Name = ""
        self.Address = ""
        self.Age = 0
    }
    
    init?(pName: String, pAddress: String, pAge: Int){
        if pName.isEmpty{
            return nil
        }
        self.Name = pName
        self.Address = pAddress
        self.Age = pAge
    }
}
