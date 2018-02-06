//
//  Addition.swift
//  Day 07
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Operation: Arithmetic{
    var oper: Character?
    
    /*
    init(oper: Character){
        self.oper = oper
    }*/
    
    required init(n1: Int, n2: Int, operType: Character) {
        super.init(n1: n1, n2: n2, operType: operType)
    }
    
    func calculte(){
        print("calling function")
    }
    
    
}
