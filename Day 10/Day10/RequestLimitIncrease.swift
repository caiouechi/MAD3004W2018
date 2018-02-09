
//
//  RequestLimitIncrease.swift
//  Day10
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation



class RequestLimitIncrease{
    var requestsReceived = [
        "S1100": requestsFromAccount(type: "Saving", balance: 1234.09, reqStatus: "In Process"),
        "S1200" : requestsFromAccount(type: "Saving", balance: 5080.09, reqStatus: "In Process"),
        "S1300": requestsFromAccount(type: "Chequing", balance: 10000.09, reqStatus: "In Process"),
        "S1400": requestsFromAccount(type: "Saving", balance: 5400, reqStatus: "Approved")
    ]
    
    func increaseLimit(acountNo acno: String) throws{
        guard let reqAcc = requestsReceived[acno] else{
            throw limitIncreaseError.ineligible
        }
    
    //There is one bonus to using guard that might make it even more useful to you: if you use it to unwrap any optionals, those unwrapped values stay around for you to use in the rest of your code block. For example:
    guard reqAcc.type == "Saving" else{
    throw limitIncreaseError.noSavingAccount
    }
    
    guard reqAcc.balance >= 5000 else{
    throw limitIncreaseError.insufficientBalance(balanceNeeded: 5000-reqAcc.balance)
    }
        
    guard reqAcc.reqStatus == "Approved" else{
        throw limitIncreaseError.StatusProblem
    }
    
    var approvedRequest = reqAcc
    approvedRequest.reqStatus = "Approved"
    print("your request is approved")
        
    }
}



