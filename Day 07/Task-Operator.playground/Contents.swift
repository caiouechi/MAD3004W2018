//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//operation


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



//arithmetic


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



//icalculate

protocol ICalculate {
    var n1: Int {get set}
    var n2: Int {get set}
    var operType: Character {get set}
    
    init(n1: Int, n2: Int, operType: Character)
}

