//
//  Dose.swift
//  parkinsonProject
//
//  Created by Thierry WINTZ on 28/02/2018.
//  Copyright © 2018 Mégane WINTZ. All rights reserved.
//

import Foundation

/// Dose type
///

/// ---- Properties
///
/// isTaken : bool
///
/// reminderNb : int
///
/// dateFirstReminder : Date


class Dose {
    
    public var isTaken : Bool
    public var reminderNb : Int
    public var dateFirstReminder : Date?
    
    init(){
        isTaken = false
        reminderNb = 0
    }
}
