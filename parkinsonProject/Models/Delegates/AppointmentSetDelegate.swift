//
//  AppointmentSetDelegate.swift
//  parkinsonProject
//
//  Created by Florent BERLAND on 04/03/2018.
//  Copyright © 2018 Mégane WINTZ. All rights reserved.
//

import Foundation

protocol AppointmentSetDelegate {
    
    func appointmentAdded(appointment : Appointment)
    func appointmentUpdated(newValue : Appointment)
    func appointmentDeleted(deletedAppointment : Appointment)
    
    static func ==(lhs : AppointmentSetDelegate, rhs : AppointmentSetDelegate) -> Bool
    static func !=(lhs : AppointmentSetDelegate, rhs : AppointmentSetDelegate) -> Bool
}
