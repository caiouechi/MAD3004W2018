//
//  main.swift
//  Day10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")


var processRequest = RequestLimitIncrease()

do{
   
try processRequest.increaseLimit(acountNo: "S1200")
    
}catch limitIncreaseError.insufficientBalance{
    print("You don't have sufficient balance.")
}catch limitIncreaseError.ineligible{
    print("You don't have account with us")
}catch limitIncreaseError.noSavingAccount{
    print("Limit increase is only available to Saving accounts.")
}catch{
    print("Unexpected Error.")
}


do{
    try processRequest.increaseLimit(acountNo: "S1100")
}catch is limitIncreaseError{
    print("Something wrong with your account")
}



