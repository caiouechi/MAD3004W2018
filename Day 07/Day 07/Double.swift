//
//  Double.swift
//  Day 07
//
//  Created by MacStudent on 2018-02-06.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

extension Double {
    var km: Double { return self * 1_000.0}
    var m: Double { return self}
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0}
    var ft: Double { return self / 3.28084 }
}


extension String{
    var length: Int{
        get {
            return self.count}
    }
    
    func contains(s: String) -> Bool{
        var usedString = self;
        return usedString.contains(s)
    }
    
    var consonants: [String]{
        get{
            return ["b", "c", "d", "f", "g"]
        }
    }
    //vowell
}

//task for the day
// create an extension to int type to find out that the number if prime or not
extension Int{
    func isPrime() -> Bool{
        var numberInt = self;
        
        if numberInt <= 1{
            return false
        }
        
            
        if numberInt <= 3{
            return true
        }
        
            
            var i = 2
        while (i*i <= numberInt){
            if numberInt % i == 0{
                return false
            }
            i = i + 1
        
        }
        
        
        return true
        
    }
}

