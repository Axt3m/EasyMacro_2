//
//  UserChoices.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

struct UserChoices {
    
    var gender: String?
    var weight: Int?
    var activity: String?
    var sport: String?
    var goals: String?
    var preferences: String?
    
    mutating func getGender(with userGender: String) -> String {
        self.gender = userGender
        return Unwrapping.optionalString(gender)
    }

    mutating func getWeight(with userWeight: Int) -> Int {
        self.weight = userWeight
        return Unwrapping.optionalInteger(weight)
    }

    mutating func getActivity(with userActivity: String) -> String {
        self.activity = userActivity
        return Unwrapping.optionalString(activity)
    }

    mutating func getSport(with userSport: String) -> String {
        self.sport = userSport
        return Unwrapping.optionalString(sport)
    }

    mutating func getGoals(with userGoals: String) -> String {
        self.goals = userGoals
        return Unwrapping.optionalString(goals)
    }

    mutating func getPreferences(with userPreferences: String) -> String {
        self.preferences = userPreferences
        return Unwrapping.optionalString(preferences)
    }
    
    
    
}
