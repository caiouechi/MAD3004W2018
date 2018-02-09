//
//  Error.swift
//  Task-Errors
//
//  Created by MacStudent on 2018-02-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation

enum TicketError: Error{
    case SpeedingError
    case DriverLicence
    case SeatBelt
    case Invalide
}


struct TrafficType{
    var SpeedOverTheLimit: Float
    var YearsOfDriverLicence: Int
    var PassengerUsingSeatBelt: Bool
    var ValidLicence: Bool

}
