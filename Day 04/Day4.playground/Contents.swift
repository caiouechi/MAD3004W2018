//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Closure")

var months = [4,3,1,6,5,2]
print(months.sorted())

func reverse(_ s1: Int, _ s2: Int) -> Bool {
    return s1 > s2;
}

var reversedMonths = months.sorted(by: reverse)
print("reversedMonths", reversedMonths);

func increasing(_ s1: Int, _ s2: Int) -> Bool {
    return s1 < s2
}

var increasingMonths = months.sorted(by: increasing)
print("increasing months: ", increasingMonths)

//closure expression syntax

/*
 { (parameters) -> returne type in statements }
 */

// sabe as the previous one, but with the name separated
var reverseClosure = months.sorted(by:  {
    (s1: Int, s2: Int) -> Bool in return s1 > s2
})

print("reverseClosure", reverseClosure)

//inferring parameter types from context
var inferTypes = months.sorted(by: {
    (s1, s2) in return s1 < s2
})

print("inferTypes: ", inferTypes);

//shorthand argument names
print("shorthand argument: ", months.sorted(by: {$0 < $1}))

//operator methods
print("operator methods: ", months.sorted(by: < ))

var three = [1,3,4,5,6,8,9,12,15]
print("three : ", three)

//applying some rules to the lists
var modThree = three.filter({ $0 % 3 == 0})
print("modThree :", modThree)

//even numbers
var modEvenNumbers = three.filter({ $0 % 2 == 0});
print("modThree :", modEvenNumbers)

//nested functions closure
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amount
        
        return runningTotal
    }
    
    return incrementer
}

var incrementByTen = makeIncrementer(forIncrement: 10)

//test japapito
print("first test: ", makeIncrementer(forIncrement: 10)())
print("second test: ", makeIncrementer(forIncrement: 10)())
print("third test: ", makeIncrementer(forIncrement: 10)())

print("first call: ", incrementByTen())
print("second call: ", incrementByTen())
print("third call: ", incrementByTen())

//let incrementBySeven = makeIncrementer(forIncrementer(forIncremenet: 7))
let incrementBySeven = makeIncrementer(forIncrement: 7)
print("Incremenet by seve 1: ", incrementBySeven())
print("Incremenet by seve 1: ", incrementBySeven())

print("fourth call: ", incrementByTen())

//Closures are reference type
let incrementBySevenAgain = incrementBySeven
print("Increment by seven 3: ", incrementBySevenAgain())

//Autoclosures
var errorList = [404,414,402,431,455,440]
print("Total Errors : ", errorList.count)

let debugger = {
    errorList.remove(at: 0)
}
print("Total Errors : ", errorList.count)

print("Now solving \(debugger())!")
print("Total Errors : ", errorList.count)
print("Error List: ", errorList)

//read about escaping and  trailing closure

















