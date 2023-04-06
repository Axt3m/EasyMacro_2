//
//  ResultsViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit
import Charts

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var resultsLabel2: UILabel!
    @IBOutlet weak var totalCaloriesLabel: UILabel!
    @IBOutlet weak var proteinPctLabel: UILabel!
    @IBOutlet weak var carbsPctLabel: UILabel!
    @IBOutlet weak var fatsPctLabel: UILabel!
    @IBOutlet weak var proteinGrLabel: UILabel!
    @IBOutlet weak var carbsGrLabel: UILabel!
    @IBOutlet weak var fatsGrLabel: UILabel!
    
    @IBOutlet weak var proteinCalLabel: UILabel!
    @IBOutlet weak var carbsCalLabel: UILabel!
    @IBOutlet weak var fatsCalLabel: UILabel!
    
    @IBOutlet weak var pieChart: PieChartView!
    
    @IBOutlet weak var recalculateButton: UIButton!
    
    var proteinDataEntry = PieChartDataEntry(value: 0)
    var carbsDataEntry = PieChartDataEntry(value: 0)
    var fatsDataEntry = PieChartDataEntry(value: 0)
    
    var numberOfDataEntries = [PieChartDataEntry]()
    
    var userChoices: UserChoices!
    
    var userBaselineCalories: Int = 0
    var userCalorieswithDeficit: Int = 0
    var userProteinAmount: Int = 0
    var userFatsAmount: Int = 0
    var userCarbsAmount: Int = 0
    var userProteinPct: Double = 0
    var userFatsPct: Double = 0
    var userCarbsPct: Double = 0
    var userProteinCal: Int = 0
    var userCarbsCal: Int = 0
    var userFatsCal: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard userChoices != nil else{
            fatalError()
        }
        
        calculateAllMacros()
        
        customScreen()
        
        proteinDataEntry.value = Double(userProteinCal)
        carbsDataEntry.value = Double(userCarbsCal)
        fatsDataEntry.value = Double(userFatsCal)
        
        numberOfDataEntries = [proteinDataEntry, carbsDataEntry, fatsDataEntry]
        updateChartData()

    }
    
    private func calculateAllMacros() {
        var calculatorMacro = CalculatorMacro(userChoices: userChoices)
        
        userBaselineCalories = calculatorMacro.baselineCalories()
        userCalorieswithDeficit = calculatorMacro.caloriesWithDeficit()
        userProteinAmount = calculatorMacro.proteinRequirement()
        userFatsAmount = calculatorMacro.fatsRequirement()
        userCarbsAmount = calculatorMacro.carbsRequirement()
        userProteinPct = calculatorMacro.proteinPct
        userCarbsPct = calculatorMacro.carbsPct
        userFatsPct = calculatorMacro.fatsPct
        userProteinCal = calculatorMacro.caloriesFromProtein
        userCarbsCal = calculatorMacro.caloriesFromCarbs
        userFatsCal = calculatorMacro.caloriesFromFats
    }
    
    private func customScreen() {
        Visual.customLabel(to: resultsLabel, text: Constants.resultsTitle, font: Constants.welcomeTitlePolice, size: 35)
        Visual.customLabel(to: resultsLabel2, text: Constants.resultsTitle2, font: Constants.welcomeTextPolice1, size: 22)
        Visual.customLabel(to: totalCaloriesLabel, text: "\(userCalorieswithDeficit)", font: Constants.nextButtonPolice, size: 30)
        
        Visual.customLabel(to: proteinGrLabel, text: "\(userProteinAmount) g", font: Constants.welcomeTextPolice2, size: 20)
        Visual.customLabel(to: carbsGrLabel, text: "\(userCarbsAmount) g", font: Constants.welcomeTextPolice2, size: 20)
        Visual.customLabel(to: fatsGrLabel, text: "\(userFatsAmount) g", font: Constants.welcomeTextPolice2, size: 20)
        
        Visual.customLabel(to: proteinPctLabel, text: String(format: Constants.formatPct, userProteinPct), font: Constants.answerPolice, size: 18)
        Visual.customLabel(to: carbsPctLabel, text: String(format: Constants.formatPct, userCarbsPct), font: Constants.answerPolice, size: 18)
        Visual.customLabel(to: fatsPctLabel, text: String(format: Constants.formatPct, userFatsPct), font: Constants.answerPolice, size: 18)
        
        Visual.customLabel(to: proteinCalLabel, text: "\(userProteinCal) cal", font: Constants.answerPolice, size: 18)
        Visual.customLabel(to: carbsCalLabel, text: "\(userCarbsCal) cal", font: Constants.answerPolice, size: 18)
        Visual.customLabel(to: fatsCalLabel, text: "\(userFatsCal) cal", font: Constants.answerPolice, size: 18)

        Visual.buttonShadowAndFont(to: recalculateButton, text: Constants.recalculateButtonTitle)
    }
    
    
    private func updateChartData() {
        
        let chartDataSet = PieChartDataSet(entries: numberOfDataEntries, label: nil)
        let chartData = PieChartData(dataSet: chartDataSet)
        
        customChart(withDataSet: chartDataSet)
        
        pieChart.data = chartData
    }
    
    private func customChart(withDataSet chartDataSet: PieChartDataSet){
        
        chartDataSet.colors = [Constants.proteinColor, Constants.carbsColor, Constants.fatsColor]
        
        pieChart.holeRadiusPercent = 0.60
        pieChart.transparentCircleRadiusPercent = 0.63
        pieChart.chartDescription?.text = ""
        pieChart.legend.enabled = false
        
        proteinDataEntry.label = Constants.proteinLabel
        carbsDataEntry.label = Constants.carbsLabel
        fatsDataEntry.label = Constants.fatsLabel

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
