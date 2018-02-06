//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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
