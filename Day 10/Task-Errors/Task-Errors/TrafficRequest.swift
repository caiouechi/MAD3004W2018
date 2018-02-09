//
//  TrafficRequest.swift
//  Task-Errors
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

class TrafficRequest{
    var trafficRequest = ["Passenger01": TrafficType(SpeedOverTheLimit: 300, YearsOfDriverLicence: 1, PassengerUsingSeatBelt: true, ValidLicence: true),
    "Passenger02": TrafficType(SpeedOverTheLimit: 300, YearsOfDriverLicence: 2,PassengerUsingSeatBelt: true, ValidLicence: true),
    "Passenger03": TrafficType(SpeedOverTheLimit: 5, YearsOfDriverLicence: 1, PassengerUsingSeatBelt: true, ValidLicence: true),
    "Passenger04": TrafficType(SpeedOverTheLimit: 6, YearsOfDriverLicence: 4, PassengerUsingSeatBelt: true, ValidLicence: true)]
    
    
    
    func verifyValidTrafficRequest(CodeObjec: String) throws{
        guard var verifyObject = trafficRequest[CodeObjec] else{
            throw TicketError.Invalide
        }
        
        guard verifyObject.SpeedOverTheLimit < 50 else{
            throw TicketError.SpeedingError
        }

        guard verifyObject.YearsOfDriverLicence < 3 else{
            throw TicketError.DriverLicence
        }
        guard verifyObject.PassengerUsingSeatBelt == true else{
            throw TicketError.SeatBelt
        }
        
        guard verifyObject.ValidLicence == true else{
            throw TicketError.DriverLicence
        }
        
        
    }
}



