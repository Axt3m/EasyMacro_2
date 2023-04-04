//
//  ResultsViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var totalCaloriesLabel: UILabel!
    @IBOutlet weak var proteinPctLabel: UILabel!
    @IBOutlet weak var carbsPctLabel: UILabel!
    @IBOutlet weak var fatsPctLabel: UILabel!
    @IBOutlet weak var proteinGrLabel: UILabel!
    @IBOutlet weak var carbsGrLabel: UILabel!
    @IBOutlet weak var fatsGrLabel: UILabel!
    
    
    
    var userChoices = UserChoices()
    var gender: String?
    var weight: Int?
    var activity: String?
    var sports: String?
    var goals: String?
    var preferences: String?
    
    var userBaselineCalories: Int = 0
    var userCalorieswithDeficit: Int = 0
    var userProteinAmount: Int = 0
    var userFatsAmount: Int = 0
    var userCarbsAmount: Int = 0
    var userProteinPct: Double = 0
    var userFatsPct: Double = 0
    var userCarbsPct: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        print(Test.unwrapOptionalString(gender))
        //        print(Test.unwrapOptionalInt(weight))
        //        print(Test.unwrapOptionalString(activity))
        //        print(Test.unwrapOptionalString(sports))
        //        print(Test.unwrapOptionalString(goals))
        
        var calculatorMacro = CalculatorMacro(userChoices: UserChoices(gender: gender, weight: weight, activity: activity, sport: sports, goals: goals, preferences: preferences))
        
        userBaselineCalories = calculatorMacro.baselineCalories()
        userCalorieswithDeficit = calculatorMacro.caloriesWithDeficit()
        userProteinAmount = calculatorMacro.proteinRequirement()
        userFatsAmount = calculatorMacro.fatsRequirement()
        userCarbsAmount = calculatorMacro.carbsRequirement()
        
        Visual.customLabel(to: resultsLabel, text: K.resultsTitle, font: K.questionPolice, size: 30)
        
        Visual.customLabel(to: totalCaloriesLabel, text: "\(userCalorieswithDeficit) cal", font: K.questionPolice, size: 28)
 
        
        userProteinPct = round((Double(calculatorMacro.caloriesFromProtein) / Double(userCalorieswithDeficit)) * 100)
        proteinPctLabel.text = "\(Int(userProteinPct)) %"
        proteinGrLabel.text = "\(userProteinAmount) g"
        
        userCarbsPct = round((Double(calculatorMacro.caloriesFromCarbs) / Double(userCalorieswithDeficit)) * 100)
        carbsPctLabel.text = "\(Int(userCarbsPct)) %"
        carbsGrLabel.text = "\(userFatsAmount) g"
        
        userFatsPct = round((Double(calculatorMacro.caloriesFromFats) / Double(userCalorieswithDeficit)) * 100)
        fatsPctLabel.text = "\(Int(userFatsPct)) %"
        fatsGrLabel.text = "\(userCarbsAmount) g"
        
        print(userProteinPct + userCarbsPct + userFatsPct)
        
        
        
        
    }
    
}
