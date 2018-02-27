//
//  Evaluation.swift
//  parkinsonProject
//
//  Created by Thierry WINTZ on 27/02/2018.
//  Copyright © 2018 Mégane WINTZ. All rights reserved.
//

import Foundation

/// Set of `Person`s
///
/// *add*: `PersonSet` x `Person` -> `PersonSet` -- add a `Person` to the collection
///
/// *remove*: `PersonSet` x `Person` -> `PersonSet` -- remove a `Person` to the collection
///
/// *count*: `PersonSet` -> `Int` -- number of `Person` in the collection
///
/// *contains:person*: `PersonSet` x `Person` -> `Bool` -- `true` if this `Person` belongs to collection
///
/// *look:forPersons*: `PersonSet` x `Person` -> `PersonSet` -- return a new `PersonSet` with all `Person` with same first name and last name of initial `PersonSet`
///
/// *contains:personWithFirstname*: `PersonSet` x `String` -> `Bool` -- `true` if this a `Person` with the same first name belongs to collection
///
/// *look:forPersonsWithFirstname*: `PersonSet` x `String` -> `PersonSet` -- return a new `PersonSet` with all `Person` with first name given in parameter
///
/// *contains:personWithLastname*: `PersonSet` x `String` -> `Bool` -- `true` if this a `Person` with the same lastname name belongs to collection
///
/// *look:forPersonsWithLastname*: `PersonSet` x `String` -> `PersonSet` -- return a new `PersonSet` with all `Person` with last name given in parameter
///
/// *contains:personWithFullname*: `PersonSet` x `String` -> `Bool` -- `true` if this a `Person` with the same full name belongs to collection
///
/// *look:forPersonsWithFullname*: `PersonSet` x `String` -> `PersonSet` -- return a new `PersonSet` with all `Person` with full name given in parameter
///
/// *makeIterator*: returns an iterator on collection
