//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

//String can be null?
/*var lala:String? = nil;
print(lala);*/

var DictionaryList:Dictionary<Int,String>;

//Dictionaries
var namesOfIntegers = [Int: String]() //namesofIntegeres is an empty [Int String] dictionary

namesOfIntegers[16] = "sixteen" // namesOfIntegers now contains 1 key-value pair

print("nameOfIntegers : \(namesOfIntegers)");

print("dictionary contains \(namesOfIntegers.count) elements")
print("dictionary : ", namesOfIntegers)

namesOfIntegers = [:] //namesOfIntegers is once again an empty dictionary of type [Int: String]
print("dictionary contains \(namesOfIntegers.count) elements")
print("namesOfIntegers :", namesOfIntegers)

if namesOfIntegers.isEmpty {
    print("Dictionary is empty")
}else {
    print(namesOfIntegers)
}

var airports:Dictionary<String, String> = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("airports: \(airports)")
print("The airports dictionary contains \(airports.count) items.") //Prints the airports dictionary contains 2 items.

airports["LHR"] = "London Hearthrow" // the value for "Lhr" has been changed to Londong Hearthrow
print("airports: \(airports)")

airports["YYZ"] = "TP International"
airports["AMD"] = "SVP International"
print("airports : ", airports)

let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB")

print("The old value for DUB was \(oldValue).") //Pirints "The old value for DUB was Dublin."

if let airportName = airports["AMD"]{
    print("The name of the airport is \(airportName).")
}else {
    print("That airport is not in the airports dictionary.")
}

airports["Mars"] = "Range Rover" // Apple International is not the real

airports["Mars"] = nil //APLS has now been removed from the dictionary
print("airports : \(airports)")

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
    
}else {
    print("The airports dictionary does not contain a value for DUB.")
}

for (airportCode, airportName) in airports {
    print(airportCode, airportName)}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")}


let airportCodes = [String](airports.keys) // airportCodes is ["YYZ", "LHR"]
print("airportCodes : \(airportCodes)")

let airportNames = [String](airports.values)  // airportNames is ["Toronto Pearson", "London Heathrow"]
print("airportNames : \(airportNames)")

//<KEY, VALUES> pairs
var d1: Dictionary<String, String> = ["India":"Hindi", "Canada":"English"]
print(d1)
print(d1.description)
print(d1["India"]!)
print(d1["Canada"]!)

d1["China"] = "Mandarin"

for (k,v) in d1{
    print("\(k) -> \(v)")
}

var d2 = ["India": "Hindi", "Canada": "English"]
for (k, v) in d2{
    print("\(k) -> \(v)")
}

//Dictionary with any values type
var d3 = [String: AnyObject]()
d3["firstName"] = "JK" as AnyObject
d3["lastName"] = "Patel" as AnyObject
d3["age"] = Int(50) as AnyObject
d3["salary"] = nil
print("d3", d3)


//Getting as a Key, value pair

for(k,v) in d3{
    print("\(k) -> \(v)")
}

var x = (10,20, "Patel")
print(x.0)
print(x.1)
print(x.2)

let http404Error = (404, "Not Found")
print(http404Error)


let (statusCode, statusMessage) = http404Error
print("statusCode:", statusCode)
print ("statusMessage:", statusMessage)

let (codeOnly, _) = http404Error
print ("codeOnly:", codeOnly)

let errorDescription = (Code: 404, Message: "Not Found")
print(errorDescription.Code, errorDescription.Message);

func add(){
    print("I am in User Defiend fucntion")
}

add();

func add(n1: Int, n2: Int){
    var sum: Int
    sum = n1 + n2;
    print ("sum: ", sum)
}

//Single Parameter
func welcome(name: String){
    print("Hello, \(name)")
}

welcome(name: "JK PATEL");

add(n1:10, n2:20);
//add(20,10) //Error
//add(n2:30, n1:40); //Error

//Making parameter label optional using_
func sub(a: Int, _ b: Int)
{
    let c = a - b
    print ("Sub : \(c)")
}

sub(a: 2, 0)

//Single return type
func mul(a: Int, b: Int) -> Int{
    let c = a * b
    return c;
}

var d = mul(a:2, b:3)
print (d);

//by default the parameters are LET
func swipe(number1 a: Int, b: Int) -> (Int, Int){
    //var temp = a
    //a = b
    //b = temp
    return (b,a)
}

var a,b,c:Int
(a,b) = swipe(number1: 10, b:20)
print("a: \(a), b: \(b)")

(_,c) = swipe(number1: 10, b:20)
print("c : \(c)")


//inout the same paramteres, cam be changed and return
//you can not pass a value, because you can not change that
//ampersand
func swipe(aa: inout Double, bb: inout Double){
    let temp = aa
    aa = bb
    bb = temp
    //why not bb == aa
}

var X = 8.0, Y = 9.0
swipe(aa:&X, bb:&Y)
print("x: \(X), y: \(Y)");

//Default Parameter
func simpleInterest(amount:Double, noOfYears: Double, rate: Double = 5.0) -> Double{
    let si = amount * rate * noOfYears/100
    return si
}

print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5))")
print("simple interest: \(simpleInterest(amount: 1000, noOfYears: 5, rate: 10))")


//variadic parameteres
//How many intergers? as much as you want
func display(n:Int...){
    for i in n{print(n)}
}

display(n: 1,2,3,4,5)
display(n: 10,20,30)

//passing array as parameter
func display(parameters:[Int]...){
   // print("Number of VAlues \(numberValues)")
    for i in parameters{
        print("i: \(i)")
    }
}

var arr = [1,2,3,4,5,6]
display(parameters: arr, arr, arr)


func display(arrayList:[Int]...) -> [Int]{
    var array1 = arrayList[0]
    var array2 = arrayList[1]
    var result = [Int]()
    
    if array1.count == array2.count{
        for i in 0..<array1.count{
            result.append(array1[i] + array2[i])
        }
    }
    return result
}

var a1 = [1,2,3,4,5]
var a2 = [10,11,12,13,14]
var a3 = display(arrayList:a1,a2)

print("printing a3 ", a3);













