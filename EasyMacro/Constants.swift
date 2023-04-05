//
//  K.swift
//  EasyMacro
//
//  Created by Angela Terao on 13/03/2023.
//

import Foundation
import UIKit

struct K {
    
    //MARK: - WelcomeVC
    
    static let welcomeTitle = "Welcome to EasyMacro"
    static let welcomeText1 = "A quick and personalized questionnaire that will give you a tailored set of macros and help you achieve your health and fitness goals."
    static let welcomeText2 = "Let's begin this journey towards \na healthier and happier you !"
    
    static let welcomeTitlePolice = "Pacifico"
    static let welcomeTextPolice1 = "Jost-Light"
    static let welcomeTextPolice2 = "Jost-SemiBold"
    
    //MARK: - Questions
    
    static let weightQuestion = "What is your \ncurrent weight ?"
    static let activityQuestion = "What is your \nactivity level ?"
    static let sportQuestion = "What kind of sports \ndo you exercise ?"
    static let goalsQuestion = "What are \nyour goals ?"
    static let genderQuestion = "What is your sex ?"
    static let preferencesQuestion = "What is \nyour preference ?"
    
    static let questionPolice = "Jost-SemiBold"
    
    //MARK: - Metrics
    
    static let defaultWeight = 65
    static let minWeight = 20
    static let maxWeight = 300
    static let kgMetrics = "Kg"
    
    static let kgPolice = "Jost-SemiBold"
    
    //MARK: - Answers
    
    static let genderMale = "Male"
    static let genderFemale = "Female"
    
    static let activityAnswer1 = "Normal activity"
    static let activityAnswer2 = "1h of exercise, \n3-5 times per week"
    static let activityAnswer3 = "2-3h of exercise, \n4-5 times per week"
    static let activityAnswer4 = "Extreme \ncompetitive athlete"
    
    static let sportAnswer1 = "Endurance"
    static let sportAnswer2 = "Strength & Power"
    static let sportAnswer3 = "Mixed \nIntermittent sports"
    static let sportAnswer4 = "Elite"
    static let sportAnswer5 = "I do not exercise \nany sports"
    
    static let goalsAnswer1 = "Small deficit"
    static let goalsAnswer2 = "Moderate deficit"
    static let goalsAnswer3 = "Large deficit"
    
    static let preferencesAnswer1 = "High-fat foods"
    static let preferencesAnswer2 = "High-carbs foods"
    
    static let answerPolice = "Jost-Light"
    
    
    //MARK: - Other constants
    
    static let welcomeButtonTitle = "Get Started"
    static let nextButtonTitle = "Next"
    static let calculateButtonTitle = "Calculate"
    static let nextButtonPolice = "Jost-Bold"
    
    static let nextButtonColor = UIColor(red: 67.0/255.0, green: 211.0/255.0, blue: 175.0/255.0, alpha: 1).withAlphaComponent(0.9)
    
    //MARK: - Results screen
    
    static let resultsTitle = "Well done!"
    static let resultsTitle2 = "Here are your daily needs:"
    static let proteinLabel = "Protein"
    static let carbsLabel = "Carbs"
    static let fatsLabel = "Fats"
    
    static let proteinColor = UIColor(red: 240.0/255.0, green: 109.0/255.0, blue: 147.0/255.0, alpha: 1)
    static let carbsColor = UIColor(red: 93.0/255.0, green: 220.0/255.0, blue: 223.0/255.0, alpha: 1)
    static let fatsColor = UIColor(red: 125.0/255.0, green: 190.0/255.0, blue: 254.0/255.0, alpha: 1)
    
    //UIColor(red: 176.0/255.0, green: 173.0/255.0, blue: 226.0/255.0, alpha: 1)
    
    static let formatPct = "%.1f %%"
    
    static let recalculateButtonTitle = "Recalculate"
    
    //MARK: - Multiplier constants
    
    static let multiplierCaloriesMaleActivityAnswer1 = 14
    static let multiplierCaloriesMaleActivityAnswer2 = 16
    static let multiplierCaloriesMaleActivityAnswer3 = 18
    static let multiplierCaloriesMaleActivityAnswer4 = 20
    
    static let multiplierCaloriesFemaleActivityAnswer1 = 12
    static let multiplierCaloriesFemaleActivityAnswer2 = 14
    static let multiplierCaloriesFemaleActivityAnswer3 = 16
    static let multiplierCaloriesFemaleActivityAnswer4 = 18
    
    
    static let proteinMaleSportAnswer1 = 1.15
    static let proteinMaleSportAnswer2 = 1.25
    static let proteinMaleSportAnswer3 = 1.25
    static let proteinMaleSportAnswer4 = 1.3
    static let proteinMaleSportAnswer5 = 0.7
    
    static let proteinFemaleSportAnswer1 = 0.75
    static let proteinFemaleSportAnswer2 = 0.95
    static let proteinFemaleSportAnswer3 = 0.85
    static let proteinFemaleSportAnswer4 = 1.15
    static let proteinFemaleSportAnswer5 = 0.7
    
    
    static let deficitMaleGoalsAnswer1 = 0.15
    static let deficitMaleGoalsAnswer2 = 0.25
    static let deficitMaleGoalsAnswer3 = 0.3
    
    static let deficitFemaleGoalsAnswer1 = 0.1
    static let deficitFemaleGoalsAnswer2 = 0.2
    static let deficitFemaleGoalsAnswer3 = 0.25
    
    
    static let preferencesMaleAnswer1 = 0.25
    static let preferencesMaleAnswer2 = 0.2
    
    static let preferencesFemaleAnswer1 = 0.3
    static let preferencesFemaleAnswer2 = 0.25
    
    
}
