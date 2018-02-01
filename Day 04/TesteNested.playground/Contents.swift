//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func cls1 (n1 : Int) -> () -> Bool{
    var a = n1;
     var lala:String = "asdf";
    
    func cls2 () ->  Bool {
        var b = n1;
        a *= 2;
        b *= 3;
        print("INSIDE cls2 : a = \(a), b = \(b) ")
        
        func cls3 () -> Int {
            a *= 2
            b *= 3
            print("INSIDE cls3 : a = \(a), b = \(b) ")
            return (9)
        }
        
        return cls3() == 9
    }
    
    return "lala";
   
}


