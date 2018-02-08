//
//  main.swift
//  Day09
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var newObject = Product(name: "nameObject")

var laptop = Product(name: "Laptop")

if let machine = laptop {
    print("Product name is \(machine.name)")
    
    let anonymousMachine = Product(name: "")
    
    if anonymousMachine == nil {
        print("The anonymous machine could not be initialized")
    }
}

/*
if let oneProjector = CartItem(name: "Projector", quantity: 0){
    print("Cart contains \(oneProjector.quantity) \(oneProjector.name)")
}else{
    print("Unable to initialize cart item.")
}
 */

if let newDriverLicense = DriverLicense(pName: "",pAddress: "Address", pAge: 18){
    print("Driver License \(newDriverLicense.Name) \(newDriverLicense.Age)")
}else{
    print("Unable to initialize Driver License.")
}


print("another concepts")
print("")

var objManu = Manufacturer(name: "Audi")
print("\(objManu.name)")

var newVehicle = Vehicle(name: "testeVehicle")


let bicycle = Vehicle(name: "BMW", noOfWheels: 2)

let preference = Preference()
print(preference.description)

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")






var matrix = Matrix(rows: 3, columns: 3 )
print("\(matrix.grid)")

matrix[0,1] = 1.5
matrix[1,0] = 3.2

print("\(matrix.grid)")



