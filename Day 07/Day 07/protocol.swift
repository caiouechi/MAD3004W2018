//
//  protocol.swift
//  Day 07
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

protocol IDisplay{
    func display()
}


protocol IDisplayValue{
    var n1: Int{get set}
    
    func displayValue()
}

protocol ICalculate {
    var n1: Int {get set}
    var n2: Int {get set}
    var operType: Character {get set}
    
    init(n1: Int, n2: Int, operType: Character)
}
