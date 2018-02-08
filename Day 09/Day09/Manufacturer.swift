//
//  Manufacturer.swift
//  Day09
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class Manufacturer{
    var name: String
    
    //designated init
    init(name: String){
        self.name = name
    }
    
    //point to the designited init, convenience somehow needs to designate to the designated class
    convenience init(){
        self.init(name: "[Unknown]")
    }
}
