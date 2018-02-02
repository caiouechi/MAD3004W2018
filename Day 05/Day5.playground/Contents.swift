//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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


var emp1 = Employee()
emp1.empID = 101
emp1.empName = "Srijith"
emp1.basicPay = 5000
//emp1.display()

var emp3 = Employee()
//emp3.display()

var emp4 = Employee(ID: 104, nm: "Navneet", pay: 3409.89)
//emp4.display()




var obj2 = PermanentEmployee()
obj2.vacationWeeks = 10
obj2.empID = 102
obj2.empName = "Tuan"
obj2.basicPay = 3000
//obj2.display()

var obj6 = PermanentEmployee(eID: 106, eNM: "Navjot", ePay: 1320.77, weeks: 1   )
//obj6.display()

//always a class ness to initialize super class init

//TASK multiple inheritance, not supplies. why most of languages

//financial, weeks > 5 then basic pay -> 100
//per emp -> payroll -> var finalpay: double, if w.weeks > 5, final pay - >  100

class Payroll : PermanentEmployee {
    var netPlay: Double{
        get{
            var vw = self.vacationWeeks!
            if vw > 5{
                return basicPay! - 100;
            }else{
                return self.basicPay!
            }
        }
    }

    
    
    override init(){
    //    self.finalPay = 0;
        super.init();
    }
    
    init(peID: Int, peNM: String, pePay: Double, pweeks: Int){
        //self.finalPay = 0;
        super.init(eID: peID,eNM: peNM, ePay: pePay, weeks: pweeks)
    }

    override func display(){
        super.display();
        //calculate();
        print("final Pay: ", self.netPlay)
    }
    
  
}


var obj7 = Payroll(peID: 107, peNM: "Prabh", pePay: 2456.23, pweeks: 4)
obj7.display()

//manipulate object array[]
var janPayroll = [Payroll]()
let noOfEmployees = 2
for i in 0..<2{
    janPayroll.append(Payroll(peID: 107, peNM: "jk", pePay: 5555.56, pweeks: 7))
    
    janPayroll[i].display()
}













