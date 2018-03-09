//
//  ActivitySetDelegate.swift
//  parkinsonProject
//
//  Created by Florent BERLAND on 04/03/2018.
//  Copyright © 2018 Mégane WINTZ. All rights reserved.
//

import Foundation

protocol ActivitySetDelegate {
    
    func activityAdded(activity : Activity)
    func activityUpdated(newValue : Activity)
    func activityRemoved(deletedValue : Activity)
}
