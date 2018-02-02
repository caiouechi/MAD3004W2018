//
//  Employee.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

//classes
class Employee{
    var empID: Int?
    var empName: String?
    var basicPay: Double?
    
    //initializers
    init(){
        empID = 0
        empName = ""
        basicPay = 0.0
    }
    
    init(ID: Int, nm: String, pay: Double){
        self.empID = ID
        self.empName = nm
        self.basicPay = pay
    }
    
    func display(){
        print("Employee ID: ", self.empID!)
        print("Employee Name: ", self.empName!)
        print("basic Pay: ", self.basicPay!)
    }
    
    //deinitializer
    deinit{
        print("employee object deinitialized")
    }
}
