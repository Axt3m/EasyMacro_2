//
//  ResultsViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    var userChoices = UserChoices()
    var gender: String?
    var weight: Int?
    var activity: String?
    var sports: String?
    var goals: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Test.unwrapOptionalString(gender))
        print(Test.unwrapOptionalInt(weight))
        print(Test.unwrapOptionalString(activity))
        print(Test.unwrapOptionalString(sports))
        print(Test.unwrapOptionalString(goals))
        
        var calculatorMacro = CalculatorMacro(userChoices: UserChoices(gender: gender, weight: weight, activity: activity, sport: sports, goals: goals))
        
        print(calculatorMacro.baselineCalories())
        print(calculatorMacro.caloriesWithDeficit())
        print(calculatorMacro.proteinRequirement())
    }
    
}
