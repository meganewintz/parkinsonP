//
//  TreatmentSet.swift
//  parkinsonProject
//
//  Created by Thierry WINTZ on 28/02/2018.
//  Copyright © 2018 Mégane WINTZ. All rights reserved.
//

import Foundation

/// AppointmentSet type
///

/// ---- Methods
///

/// init
///
/// initialize an 'AppointmentSet', empty.
///


/// addAppointment
///
/// add an Appointment to the set
///
/// - Parameters:
///   - appointment: `Appointment`
/// - Returns : 'AppointmentSet' with the appointment enter in parameter


/// removeAppointment
///
/// remove an appointment to the set
///
/// - Parameters:
///   - appointment: `Appointment`
/// - Returns : 'AppointmentSet' without the appointment enter in parameter


/// count
///
/// number of `Appointment` in the set
///
/// - Returns : 'Int'


/// contains
///
///
/// - Parameters:
///   - appointment: `Appointment`
/// - Returns : True if the appointment is in the set


/// nextAppointment
///
/// give the next appointment programed
///
/// - Returns : Appointment?


/// updateAppointment
///
/// updates an appointment with a new value
///
/// - Parameters:
///   - old: `Appointment`
///   - new: Appointment
/// - Returns : 'AppointmentSet' with the appointment updated


/// checkConflict
///
/// return true if the appointment in parameter happens at the same time with another one in the set
///
/// - Parameters:
///   - appointment: Appointment
///
/// Returns : true if the appointment in parameter happens at the same time with another one in the set


/// addDelegate
///
/// add a delegate to this model if it is not already present
///
/// - Parameters:
///   - delegate: `AppointmentSetDelegate`
///
/// Returns : 'AppointmentSet' the current instance with the delegate in parameter


/// removeDelegate
///
/// remove a delegate to this model
///
/// - Parameters:
///   - delegate: `AppointmentSetDelegate`
///
/// Returns : 'AppointmentSet' the current instance without the delegate in parameter

class AppointmentSet {
    
    var appointmentSet : [Appointment]
    var delegates : [AppointmentSetDelegate]
    
    init(){
        appointmentSet = [Appointment]()
        delegates = [AppointmentSetDelegate]()
    }
    
    func addAppointment(appointment : Appointment) -> AppointmentSet {
        appointmentSet.append(appointment)
        for d : AppointmentSetDelegate in delegates {
            d.appointmentAdded(appointment : appointment)
        }
        return self
    }
    
    func removeAppointment(appointment : Appointment) -> AppointmentSet {
        
        if let index=appointmentSet.index(where: { $0 == appointment })
        {
            appointmentSet.remove(at: index)
            for d : AppointmentSetDelegate in delegates {
                d.appointmentDeleted(deletedAppointment : appointment)
            }
        }
        return self
    }
    
    func count() -> Int {
        return appointmentSet.count
    }
    
    func contains(appointment : Appointment) -> Bool {
        return appointmentSet.contains(where: { $0 == appointment})
    }
    
    
    func nextAppointment() -> Appointment? {
        guard appointmentSet.count > 0 else { return nil }
        
        // get only the future appointments
        let currentDate = Date()
        var futureAppointments = [Appointment]()
        for appointment in appointmentSet {
            if appointment.date > currentDate {
                futureAppointments.append(appointment)
            }
        }
        
        if futureAppointments.count == 0 {
            // no future appointment
            return nil
        } else {
            // find the appointment which minimise the time interval between its date and the current date
            var nearestAppointment = futureAppointments[0]
            var smallestInterval = nearestAppointment.date - currentDate
            for appointment in futureAppointments {
                if appointment.date - currentDate < smallestInterval {
                    smallestInterval = appointment.date - currentDate
                    nearestAppointment = appointment
                }
            }
            return nearestAppointment
        }
    }
    
    
    func updateAppointment(old : Appointment, new : Appointment) -> AppointmentSet {
        if let index=appointmentSet.index(where: { $0 == old })
        {
            appointmentSet[index] = new
            for d : AppointmentSetDelegate in delegates {
                d.appointmentUpdated(newValue: new)
            }
        }
        return self
    }
    
    
    func checkConflict(appointment : Appointment) -> Bool {
        return appointmentSet.contains(where : { $0.date == appointment.date })
    }
    
    func addDelegate(delegate : AppointmentSetDelegate) -> AppointmentSet
    {
        if !delegates.contains(where: { $0 == delegate }){
            delegates.append(delegate)
        }
        return self
    }
    
    func removeDelegate(delegate : AppointmentSetDelegate) -> AppointmentSet {
        if let index = delegates.index(where: { $0 == delegate })
        {
            delegates.remove(at: index)
        }
        return self
    }

}
