//
//  DoseSet.swift
//  parkinsonProject
//
//  Created by Thierry WINTZ on 28/02/2018.
//  Copyright © 2018 Mégane WINTZ. All rights reserved.
//

import Foundation

/// DoseSet type
///

/// ---- Methods
///

/// init
///
/// initialize an 'DoseSet', empty.
///


/// addDose
///
/// add a dose to the set
///
/// - Parameters:
///   - dose: `Dose`
/// - Returns : 'DoseSet' with the dose enter in parameter


/// count
///
/// number of `Dose` in the set
///
/// - Returns : 'Int'


/// contains
///
///
/// - Parameters:
///   - dose: `Dose`
/// - Returns : True if the dose is in the set


/// nextReminder
///
/// give the date of the next dose reminder
///
/// - Returns : Date? (nil if there is no reminder programmed)


/// updateDose
///
/// updates a dose with a new value
///
/// - Parameters:
///   - old: `Dose`
///   - new: Dose
/// - Returns : 'DoseSet' with the dose updated


/// addDelegate
///
/// add a delegate to this model
///
/// - Parameters:
///   - delegate: `DoseSetDelegate`
///
/// Returns : 'DoseSet' the current instance with the delegate in parameter


/// removeDelegate
///
/// remove a delegate to this model
///
/// - Parameters:
///   - delegate: `DoseSetDelegate`
///
/// Returns : 'DoseSet' the current instance without the delegate in parameter


/// percentageOfSuccess
///
/// return the percentage of taken doses of the number of programmed doses
///
/// Return : Float

class ActivitiesSet {
    
}