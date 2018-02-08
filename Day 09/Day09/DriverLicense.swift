//
//  DriverLicense.swift
//  Day09
//
//  Created by MacStudent on 2018-02-08.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class DriverLicense: Person{
    
    override init?(pName: String, pAddress: String, pAge: Int) {
        
        if pAge < 16{
            return nil;
        }
    
        
        super.init(pName: pName, pAddress: pAddress, pAge: pAge);
    }
    
    
}
