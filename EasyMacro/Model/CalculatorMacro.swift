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
        
        if userChoices.gender == K.genderMale {
            if userChoices.activity == K.activityAnswer1 {
                totalCalories = weightLbs * K.multiplierCaloriesMaleActivityAnswer1
            } else if userChoices.activity == K.activityAnswer2 {
                totalCalories = weightLbs * K.multiplierCaloriesMaleActivityAnswer2
            } else if userChoices.activity == K.activityAnswer3 {
                totalCalories = weightLbs * K.multiplierCaloriesMaleActivityAnswer3
            } else {
                totalCalories = weightLbs * K.multiplierCaloriesMaleActivityAnswer4
            }
        } else {
            if userChoices.activity == K.activityAnswer1 {
                totalCalories = weightLbs * K.multiplierCaloriesFemaleActivityAnswer1
            } else if userChoices.activity == K.activityAnswer2 {
                totalCalories = weightLbs * K.multiplierCaloriesFemaleActivityAnswer2
            } else if userChoices.activity == K.activityAnswer3 {
                totalCalories = weightLbs * K.multiplierCaloriesFemaleActivityAnswer3
            } else {
                totalCalories = weightLbs * K.multiplierCaloriesFemaleActivityAnswer4
            }
        }
        
        return totalCalories
    }
    
    
    mutating func caloriesWithDeficit() -> Int {
        totalCalories = baselineCalories()
        
        if userChoices.gender == K.genderMale {
            if userChoices.goals == K.goalsAnswer1 {
                deficitCalories = Int(Double(totalCalories) * (1 - K.deficitMaleGoalsAnswer1))
            } else if userChoices.goals == K.goalsAnswer2 {
                deficitCalories = Int(Double(totalCalories) * (1 - K.deficitMaleGoalsAnswer2))
            } else {
                deficitCalories = Int(Double(totalCalories) * (1 - K.deficitMaleGoalsAnswer3))
            }
        } else {
            if userChoices.goals == K.goalsAnswer1 {
                deficitCalories = Int(Double(totalCalories) * (1 - K.deficitFemaleGoalsAnswer1))
            } else if userChoices.goals == K.goalsAnswer2 {
                deficitCalories = Int(Double(totalCalories) * (1 - K.deficitFemaleGoalsAnswer2))
            } else {
                deficitCalories = Int(Double(totalCalories) * (1 - K.deficitFemaleGoalsAnswer3))
            }
        }
        
        return deficitCalories
    }
    
    mutating func proteinRequirement() -> Int {
        let weightLbs = Int(Double(userChoices.weight!) * 2.2)
        
        if userChoices.gender == K.genderMale {
            if userChoices.sport == K.sportAnswer1{
                proteinAmount = Int(Double(weightLbs) * K.proteinMaleSportAnswer1)
            } else if userChoices.sport == K.sportAnswer2{
                proteinAmount = Int(Double(weightLbs) * K.proteinMaleSportAnswer2)
            } else if userChoices.sport == K.sportAnswer3{
                proteinAmount = Int(Double(weightLbs) * K.proteinMaleSportAnswer3)
            } else if userChoices.sport == K.sportAnswer4{
                proteinAmount = Int(Double(weightLbs) * K.proteinMaleSportAnswer4)
            } else {
                proteinAmount = Int(Double(weightLbs) * K.proteinMaleSportAnswer5)
            }
        } else {
            if userChoices.sport == K.sportAnswer1{
                proteinAmount = Int(Double(weightLbs) * K.proteinFemaleSportAnswer1)
            } else if userChoices.sport == K.sportAnswer2{
                proteinAmount = Int(Double(weightLbs) * K.proteinFemaleSportAnswer2)
            } else if userChoices.sport == K.sportAnswer3{
                proteinAmount = Int(Double(weightLbs) * K.proteinFemaleSportAnswer3)
            } else if userChoices.sport == K.sportAnswer4{
                proteinAmount = Int(Double(weightLbs) * K.proteinFemaleSportAnswer4)
            } else {
                proteinAmount = Int(Double(weightLbs) * K.proteinFemaleSportAnswer5)
            }
        }
        
        
        return proteinAmount
    }
    
    mutating func fatsRequirement() -> Int {
        totalCalories = caloriesWithDeficit()
        
        if userChoices.gender == K.genderMale {
            if userChoices.preferences == K.preferencesAnswer1 {
                fatsAmount = Int(Double(totalCalories) * K.preferencesMaleAnswer1) / 9
            } else if userChoices.preferences == K.preferencesAnswer2 {
                fatsAmount = Int(Double(totalCalories) * K.preferencesMaleAnswer2) / 9
            }
        } else {
            if userChoices.preferences == K.preferencesAnswer1 {
                fatsAmount = Int(Double(totalCalories) * K.preferencesFemaleAnswer1) / 9
            } else if userChoices.preferences == K.preferencesAnswer2 {
                fatsAmount = Int(Double(totalCalories) * K.preferencesFemaleAnswer2) / 9
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
