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
    
    static let questionPolice = "Jost-SemiBold"
    
    //MARK: - Metrics
    
    static let defaultWeight = 65
    static let minWeight = 20
    static let maxWeight = 300
    static let kgMetrics = "Kg"
    
    static let kgPolice = "Jost-SemiBold"
    
    //MARK: - Answers
    
    static let activityAnswer1 = "Normal activity"
    static let activityAnswer2 = "1h of exercise, \n3-5 times per week"
    static let activityAnswer3 = "2-3h of exercise, \n4-5 times per week"
    static let activityAnswer4 = "Extreme \ncompetitive athlete"
    
    static let sportType1 = "Endurance"
    static let sportType2 = "Strength & Power"
    static let sportType3 = "Mixed \nIntermittent sports"
    static let sportType4 = "Elite"
    static let sportType5 = "I do not exercise \nany sports"
    
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
    
}
