//
//  class.swift
//  Day 07
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class TestA: IDisplay, IDisplayValue{
    var n1: Int = 0
    
    func displayValue() {
        print("Value of n1: \(self.n1)")
    }
    
    func display(){
        print("Indice");
    }
    
    
}

class Arithmetic: ICalculate{
    var operType: Character
    
    var n1: Int
    var n2: Int
    
    required init(n1: Int, n2: Int, operType: Character) {
        self.n1 = n1
        self.n2 = n2
        self.operType = operType
    }
    
    func calculate() {
        var result = self.n1 + self.n2
        print("Result = \(result)")
    }
    
    func calculateWithOperator(){
        operation(operType: self.operType);
    }
    
    func operation(operType: Character){
        
        switch  operType{
        case "+":
            print( (n1 + n2))
            break;
        case "-":
            print( (n1 - n2))
            break;
        case "*":
            print( (n1 * n2))
            break;
        default:
            print( (n1 / n2))
            break;
        }
        
    }
    
  
    
    
}

