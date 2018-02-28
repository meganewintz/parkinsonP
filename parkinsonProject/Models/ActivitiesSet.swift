//
//  ActivitiesSet.swift
//  parkinsonProject
//
//  Created by Thierry WINTZ on 28/02/2018.
//  Copyright © 2018 Mégane WINTZ. All rights reserved.
//

import Foundation

/// ActivitiesSet type
///

/// ---- Methods
///

/// init
///
/// initialize an 'ActivitiesSet', empty.
///


/// addActivity
///
/// add an activity to the set
///
/// - Parameters:
///   - activity: `Activity`
/// - Returns : 'ActivitiesSet' with the activity enter in parameter


/// removeActivity
///
/// remove an activity to the set
///
/// - Parameters:
///   - activity: `Activity`
/// - Returns : 'ActivitiesSet' without the activity enter in parameter


/// count
///
/// number of `Activity` in the set
///
/// - Returns : 'Int'


/// contains
///
///
/// - Parameters:
///   - activity: `Activity`
/// - Returns : True if the activity is in the set


/// nextActivity
///
/// give the next Activity programed
///
/// - Returns : Activity? (empty if the set is empty))


/// activityOf
///
/// set of activities programed for the day enter in parameter
///
/// - Parameters:
///   - days: `Date`
/// - Returns : 'ActivitiesSet' containing all the activities programed for the day enter


/// getActivityByName
///
/// activity corresponding to the name
///
/// - Parameters:
///   - name: `String` name of an activity
/// - Returns : 'Activity?' activity corresponding to the name, nothing if the activity is not present in the set


/// checkConflict
///
/// check if the activity enter in paramter doesn't occur in the same time than another actiiviy present in the set
///
/// - Parameters:
///   - activity: `Activity`
/// - Returns : True if there is a conflict


/// getActivityByName
///
/// activity corresponding to the name
///
/// - Parameters:
///   - name: `String` name of an activity
/// - Returns : 'Activity?' activity corresponding to the name, nothing if the activity is not present in the set


/// addDelegate
///
/// add a delegate to this model
///
/// - Parameters:
///   - delegate: `Delegate`


/// removeDelegate
///
/// remove a delegate to this model
///
/// - Parameters:
///   - delegate: `Delegate`

class ActivitiesSet {
    
}

