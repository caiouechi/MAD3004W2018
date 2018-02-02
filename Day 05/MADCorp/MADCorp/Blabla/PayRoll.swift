//
//  PayRoll.swift
//  MADCorp
//
//  Created by MacStudent on 2018-02-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

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
