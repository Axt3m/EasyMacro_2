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
    
    static let answerPolice = "Jost-Light"
    
    
    //MARK: - Other constants
    
    static let welcomeButtonTitle = "Get Started"
    static let nextButtonTitle = "Next"
    static let calculateButtonTitle = "Calculate"
    static let nextButtonPolice = "Jost-Bold"
    
    static let nextButtonColor = UIColor(red: 67.0/255.0, green: 211.0/255.0, blue: 175.0/255.0, alpha: 1).withAlphaComponent(0.9)
    
    //MARK: - Calculation constants
    
    let caloriesMaleActivityAnswer1 = 14
    let caloriesMaleActivityAnswer2 = 16
    let caloriesMaleActivityAnswer3 = 18
    let caloriesMaleActivityAnswer4 = 20
    
    let caloriesFemaleActivityAnswer1 = 12
    let caloriesFemaleActivityAnswer2 = 14
    let caloriesFemaleActivityAnswer3 = 16
    let caloriesFemaleActivityAnswer4 = 18
    
    
    let proteinMaleSportAnswer1 = 1.15
    let proteinMaleSportAnswer2 = 1.25
    let proteinMaleSportAnswer3 = 1.25
    let proteinMaleSportAnswer4 = 1.3
    let proteinMaleSportAnswer5 = 0.7
    
    let proteinFemaleSportAnswer1 = 0.75
    let proteinFemaleSportAnswer2 = 0.95
    let proteinFemaleSportAnswer3 = 0.85
    let proteinFemaleSportAnswer4 = 1.15
    let proteinFemaleSportAnswer5 = 0.7
    
    
    let deficitMaleGoalsAnswer1 = 0.15
    let deficitMaleGoalsAnswer2 = 0.25
    let deficitMaleGoalsAnswer3 = 0.3
    
    let deficitFemaleGoalsAnswer1 = 0.1
    let deficitFemaleGoalsAnswer2 = 0.2
    let deficitFemaleGoalsAnswer3 = 0.25
    
}
