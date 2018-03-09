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

class ActivitySet {
    fileprivate var pset : [Activity] = []
    
    /// `ActivitySet` x `Activity` -> `ActivitySet` -- add Activity to ActivitySet, if `Activity` already belongs to `ActivitySet` then do nothing
    ///
    /// - Parameter activity: `Activity` to be added to the set
    /// - Returns: `ActivitySet` with new `Activity` added to the set, or `ActivitySet` unmodified if `Activity` belonged already to the set.
    @discardableResult
    func addActivity(activity: Activity) -> ActivitySet{
        if !self.contains(activity: activity){
            self.pset.append(activity)
        }
        return self
    }
    
    
    /// `ActivitySet` x `Activity` -> `ActivitySet` -- if `Activity` belongs to `ActivitySet`, remove it from the set, else do nothing
    ///
    /// - Parameter activity: `Activity` to be removed
    /// - Returns: `ActivitySet` with `Activity` removed if `Activity` belonged to `ActivitySet`
    @discardableResult
    func removeActivity(activity: Activity) -> ActivitySet{
        //if let i = self.pset.index(of: activity){
        //    self.pset.remove(at: i)
        //}
        return self
    }
    
    /// number of elements in the set
    var count: Int{
        return self.pset.count
    }
    
    /// `ActivitySet` x `Activity` -> `Bool` -- look for `Activity` in the set...
    ///
    /// - Parameter activity: `Activity` to be looked for
    /// - Returns: True if `Activity` belongs to the set
    func contains(activity: Activity) -> Bool{
        return self.pset.contains(where: {$0===activity})
    }
    
   
    
    /// ActivitySet` x `String` -> `Bool` -- look for `Activity` with firstname
    ///
    /// - Parameter firstname: `String` name to be search
    /// - Returns: True if one `Activity` has this firstname
    func contains(activityName name: String) -> Bool{
        return self.pset.contains(where: {$0.name==name})
    }

    
    subscript(index: Int) -> Activity {
        get {
            guard (index>=0) && (index<self.count) else{
                fatalError("index out of range")
            }
            return self.pset[index]
        }
        set(newValue) {
            guard (index>=0) && (index<self.count) else{
                fatalError("index out of range")
            }
            self.pset[index]=newValue
        }
    }
    
    /// `ActivitySet` -> `ItActivitySet` -- make an iterator on the set
    ///
    /// - Returns: a new iterator on the set initialized on the first element
    func makeIterator() -> ItActivitySet{
        return ItActivitySet(self)
    }
    
    
}

// MARK: -

/// Iterator on ActivitySet
struct ItActivitySet : IteratorProtocol{
    private var current: Int = 0
    private let set: ActivitySet
    
    fileprivate init(_ s: ActivitySet){
        self.set = s
    }
    
    /// reset iterator
    ///
    /// - Returns: iterator reseted
    @discardableResult
    mutating func reset() -> ItActivitySet{
        self.current = 0
        return self
    }
    
    @discardableResult
    mutating func next() -> Activity? {
        guard self.current < self.set.count else{
            return nil
        }
        let nextActivity = self.set.pset[self.current]
        self.current += 1
        return nextActivity
    }
    
    /// true if iterator as finished
    var end : Bool{
        return self.current < self.set.count
    }
}


