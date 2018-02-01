//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//comparing classes and structures

class SomeClass{
    
}

struct SomeStructure{
    
}

struct project{
    var title = ""
    var hours = 0
    
    func display(){
        print("Project Title: ", title)
        print("Total work hours required : ", hours)
    }
}

var LMSProject = project(title: "Moodle", hours : 200) //technologies : ["PHP", "Ajax", "JQUERY"])
print(LMSProject)

LMSProject.display()

LMSProject.hours = 300
print(LMSProject)

LMSProject.display()


//class declaration
class Manager{
    var name: String = ""
    var productOwner : Bool = true
    var currentProjects = project()
}

//repare que quando voce cria do tipo da classe ou metodo voce tem cque colocar = e com ()
//create instance of class
let mgrCanada =  Manager()
mgrCanada.name = "JK"
mgrCanada.productOwner = true
mgrCanada.currentProjects = project(title: "Sales Reporting", hours: 20)

print("mgrCanada Name: ", mgrCanada.name)
print("mgrCanada product Owner: ", mgrCanada.productOwner)
print("mgrCanada current Project Title: ", mgrCanada.currentProjects.title)
print("mgrCanada current Project Hours: ", mgrCanada.currentProjects.hours)

mgrCanada.name = "test";
mgrCanada.productOwner = false;
mgrCanada.currentProjects.hours = 4;

print("mgrCanada Name: ", mgrCanada.name)
print("mgrCanada product Owner: ", mgrCanada.productOwner)
print("mgrCanada current Project Title: ", mgrCanada.currentProjects.title)
print("mgrCanada current Project Hours: ", mgrCanada.currentProjects.hours)

//structures are VALUE TYPES
struct address{
    var street = "265 Yorkland Blvd"
    var city = "North York"
    var postalCode = "M1H1Y1"
}

//not let, because are value type, needs to be updated and variable
var lambton = address()
print("Lambton: ", lambton)

var cestar = lambton
//let cestar = lambton // raise error when change the parameter
print("Cestar: ", cestar)

cestar.street = "271 yorkland blvd"
cestar.postalCode = "M1H3Y3"
print("Cestar : ", cestar)

print("Lambton: ", lambton)

//classes are REFERENCE TYPES ->means that if you make a copy, instant a new variable, it will be referenced to the previous reference
class Institute {
    var street = "265 YorkLland Blvd"
    var city = "North York"
    var postalCode = "M1h1y1"
}

var myLambton = Institute()
print("myLambton street: ", myLambton.street)
print("myLambton city: ", myLambton.city)
print("myLambton postalCode: ", myLambton.postalCode)

var myCestar = myLambton

print("myCestar street: ", myCestar.street)
    print("myCestar city: ", myCestar.city)
    print("myCestar postalCode: ", myCestar.postalCode)

myCestar.street = "271 Yorkland Blvd"
myCestar.postalCode = "M3H3Y3"
print("myCestar street: ", myCestar.street)
print("myCestar postalCode: ", myCestar.postalCode)

//This shows that is reference type
print("myLambton street", myLambton.street)
print("myLambton postalCode ", myLambton.postalCode)

// you use == it compare values, the === compares the references
//identical to ===
if myLambton === myCestar {
    print("lambton and cestar are same")
}
else {
    print("lambton and cestar are not same")
}

var yourCestar = Institute()
if yourCestar === myCestar {
    print("yourCestar and myCestar are same")
}
else {
    print("yourCestar and myCestar are Not same")
}

//task, yesterday you created a person, now you create a class for it





