//
//  main.swift
//  Day 07
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
var obj1 = test()
obj1.display()


var obj2: IDisplay = test()
obj2.display()

obj2 = obj1 as test
obj2.display()

class B: test, IDisplayValue{
    var n2 = 200
    override func display(){
        prinit("Class B")
        
    }
    
    func dispValue(){
        
    }
}

 did not understand */


var obj1 = TestA()
obj1.n1 = 20

var obj2 = TestB()
obj2.n1 = 30
obj2.n2 = 40
obj2.display()
obj2.displayValue()

var obj3 = obj2 as TestA
obj3.display()


var objArith = Arithmetic(n1: 20, n2: 30,operType: "*")
objArith.calculateWithOperator()

var objOperation = Operation(n1: 10, n2: 10,operType: "+")
print("operation")
objOperation.calculateWithOperator()



let oneInch = 25.4.mm
print("One inch is \(oneInch) meteres")
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")

let aMarathon = (42.km + 195.m)
print("A marathon is \(aMarathon) meteres long")

var s = "Hello"
print(s.length)
print("contains \(s.contains(s: "ell"))")


var propertyInt:Int;
print("check prime")
print(8.isPrime())





