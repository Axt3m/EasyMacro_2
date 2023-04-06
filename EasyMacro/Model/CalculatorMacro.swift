//
//  CalculatorMacro.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

struct CalculatorMacro {
    
    var userChoices: UserChoices
   
    var totalCalories: Int = 0
    var deficitCalories: Int = 0
    
    var proteinAmount: Int = 0
    var carbsAmount: Int = 0
    var fatsAmount: Int = 0
    
    var caloriesFromProtein: Int = 0
    var caloriesFromCarbs: Int = 0
    var caloriesFromFats: Int = 0
    
    var proteinPct: Double = 0.0
    var carbsPct: Double = 0.0
    var fatsPct: Double = 0.0
    
    mutating func baselineCalories() -> Int {
        let weightLbs = Int(Double(userChoices.weight!) * 2.2)
        
        if userChoices.gender == Constants.genderMale {
            if userChoices.activity == Constants.activityAnswer1 {
                totalCalories = weightLbs * Constants.multiplierCaloriesMaleActivityAnswer1
            } else if userChoices.activity == Constants.activityAnswer2 {
                totalCalories = weightLbs * Constants.multiplierCaloriesMaleActivityAnswer2
            } else if userChoices.activity == Constants.activityAnswer3 {
                totalCalories = weightLbs * Constants.multiplierCaloriesMaleActivityAnswer3
            } else {
                totalCalories = weightLbs * Constants.multiplierCaloriesMaleActivityAnswer4
            }
        } else {
            if userChoices.activity == Constants.activityAnswer1 {
                totalCalories = weightLbs * Constants.multiplierCaloriesFemaleActivityAnswer1
            } else if userChoices.activity == Constants.activityAnswer2 {
                totalCalories = weightLbs * Constants.multiplierCaloriesFemaleActivityAnswer2
            } else if userChoices.activity == Constants.activityAnswer3 {
                totalCalories = weightLbs * Constants.multiplierCaloriesFemaleActivityAnswer3
            } else {
                totalCalories = weightLbs * Constants.multiplierCaloriesFemaleActivityAnswer4
            }
        }
        
        return totalCalories
    }
    
    
    mutating func caloriesWithDeficit() -> Int {
        totalCalories = baselineCalories()
        
        if userChoices.gender == Constants.genderMale {
            if userChoices.goals == Constants.goalsAnswer1 {
                deficitCalories = Int(Double(totalCalories) * (1 - Constants.deficitMaleGoalsAnswer1))
            } else if userChoices.goals == Constants.goalsAnswer2 {
                deficitCalories = Int(Double(totalCalories) * (1 - Constants.deficitMaleGoalsAnswer2))
            } else {
                deficitCalories = Int(Double(totalCalories) * (1 - Constants.deficitMaleGoalsAnswer3))
            }
        } else {
            if userChoices.goals == Constants.goalsAnswer1 {
                deficitCalories = Int(Double(totalCalories) * (1 - Constants.deficitFemaleGoalsAnswer1))
            } else if userChoices.goals == Constants.goalsAnswer2 {
                deficitCalories = Int(Double(totalCalories) * (1 - Constants.deficitFemaleGoalsAnswer2))
            } else {
                deficitCalories = Int(Double(totalCalories) * (1 - Constants.deficitFemaleGoalsAnswer3))
            }
        }
        
        return deficitCalories
    }
    
    mutating func proteinRequirement() -> Int {
        let weightLbs = Int(Double(userChoices.weight!) * 2.2)
        
        if userChoices.gender == Constants.genderMale {
            if userChoices.sport == Constants.sportAnswer1{
                proteinAmount = Int(Double(weightLbs) * Constants.proteinMaleSportAnswer1)
            } else if userChoices.sport == Constants.sportAnswer2{
                proteinAmount = Int(Double(weightLbs) * Constants.proteinMaleSportAnswer2)
            } else if userChoices.sport == Constants.sportAnswer3{
                proteinAmount = Int(Double(weightLbs) * Constants.proteinMaleSportAnswer3)
            } else if userChoices.sport == Constants.sportAnswer4{
                proteinAmount = Int(Double(weightLbs) * Constants.proteinMaleSportAnswer4)
            } else {
                proteinAmount = Int(Double(weightLbs) * Constants.proteinMaleSportAnswer5)
            }
        } else {
            if userChoices.sport == Constants.sportAnswer1{
                proteinAmount = Int(Double(weightLbs) * Constants.proteinFemaleSportAnswer1)
            } else if userChoices.sport == Constants.sportAnswer2{
                proteinAmount = Int(Double(weightLbs) * Constants.proteinFemaleSportAnswer2)
            } else if userChoices.sport == Constants.sportAnswer3{
                proteinAmount = Int(Double(weightLbs) * Constants.proteinFemaleSportAnswer3)
            } else if userChoices.sport == Constants.sportAnswer4{
                proteinAmount = Int(Double(weightLbs) * Constants.proteinFemaleSportAnswer4)
            } else {
                proteinAmount = Int(Double(weightLbs) * Constants.proteinFemaleSportAnswer5)
            }
        }
        
        
        return proteinAmount
    }
    
    mutating func fatsRequirement() -> Int {
        totalCalories = caloriesWithDeficit()
        
        if userChoices.gender == Constants.genderMale {
            if userChoices.preferences == Constants.preferencesAnswer1 {
                fatsAmount = Int(Double(totalCalories) * Constants.preferencesMaleAnswer1) / 9
            } else if userChoices.preferences == Constants.preferencesAnswer2 {
                fatsAmount = Int(Double(totalCalories) * Constants.preferencesMaleAnswer2) / 9
            }
        } else {
            if userChoices.preferences == Constants.preferencesAnswer1 {
                fatsAmount = Int(Double(totalCalories) * Constants.preferencesFemaleAnswer1) / 9
            } else if userChoices.preferences == Constants.preferencesAnswer2 {
                fatsAmount = Int(Double(totalCalories) * Constants.preferencesFemaleAnswer2) / 9
            }
        }
 
        return fatsAmount
    }
    
    mutating func carbsRequirement() -> Int {
        totalCalories = caloriesWithDeficit()
        caloriesFromFats = fatsRequirement() * 9
        caloriesFromProtein = proteinRequirement() * 4
        caloriesFromCarbs = totalCalories - (caloriesFromFats + caloriesFromProtein)
        
        fatsPct = (Double(caloriesFromFats) / Double(totalCalories)) * 100
        proteinPct = (Double(caloriesFromProtein) / Double(totalCalories)) * 100
        carbsPct = (Double(caloriesFromCarbs) / Double(totalCalories)) * 100
        
        
        return caloriesFromCarbs / 4
    }
    

    
    
    
    


    
    
}
