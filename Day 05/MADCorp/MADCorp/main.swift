//
//  main.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation


var obj7 = Payroll(peID: 107, peNM: "Prabh", pePay: 2456.23, pweeks: 4)
obj7.display()

//manipulate object array[]
var janPayroll = [Payroll]()
let noOfEmployees = 2
for i in 0..<2{
    janPayroll.append(Payroll(peID: 107, peNM: "jk", pePay: 5555.56, pweeks: 7))
    
    janPayroll[i].display()
}

