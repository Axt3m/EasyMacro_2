//
//  CalculatorMacro.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

struct CalculatorMacro {
    
    init?(){
        guard let gender = UserChoices.sharedInstance.userGender else {
            fatalError("error")
        }
    }

    
//    guard let gender = UserChoices.sharedInstance.userGender else {
//        print("coucou")
//    }
//
//
//    guard let weight = UserChoices.sharedInstance.userWeight else {fatalError("Error on weight: \(error)")}
//    guard let activity = UserChoices.sharedInstance.userActivityLevel else {fatalError("Error on activity: \(error)")}
//    guard let sport = UserChoices.sharedInstance.userSports else {fatalError("Error on sport: \(error)")}
//
    var calories: Int = 0

    mutating func baselineCalories() -> Int {
        let weightLbs = Int(Double(weight) * 2.2)
        
        if gender == K.genderMale {
            if activity == K.activityAnswer1 {
                calories = weightLbs * K.multiplierCaloriesMaleActivityAnswer1
            } else if activity == K.activityAnswer2 {
                calories = weightLbs * K.multiplierCaloriesMaleActivityAnswer2
            } else if activity == K.activityAnswer3 {
                calories = weightLbs * K.multiplierCaloriesMaleActivityAnswer3
            } else {
                calories = weightLbs * K.multiplierCaloriesMaleActivityAnswer4
            }
        } else {
            if activity == K.activityAnswer1 {
                calories = weightLbs * K.multiplierCaloriesFemaleActivityAnswer1
            } else if activity == K.activityAnswer2 {
                calories = weightLbs * K.multiplierCaloriesFemaleActivityAnswer2
            } else if activity == K.activityAnswer3 {
                calories = weightLbs * K.multiplierCaloriesFemaleActivityAnswer3
            } else {
                calories = weightLbs * K.multiplierCaloriesFemaleActivityAnswer4
            }
        }
        
        return calories
    }
    
    func deficit
    
    
}
