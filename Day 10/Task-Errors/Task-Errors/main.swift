//
//  main.swift
//  Task-Errors
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var processRequest = TrafficRequest()

do{
try processRequest.verifyValidTrafficRequest(CodeObjec: "Passenger01")
}catch TicketError.SpeedingError{
        print("something SpeedingError")
}catch TicketError.DriverLicence{
        print("something DriverLicence")
}catch TicketError.SeatBelt{
        print("something SeatBelt")
}catch TicketError.Invalide{
        print("something Invalide")
}




