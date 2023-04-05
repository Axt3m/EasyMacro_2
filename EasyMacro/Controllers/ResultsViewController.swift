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
    
    @IBOutlet weak var pieChart: PieChartView!
    
    @IBOutlet weak var recalculateButton: UIButton!
    
    var proteinDataEntry = PieChartDataEntry(value: 0)
    var carbsDataEntry = PieChartDataEntry(value: 0)
    var fatsDataEntry = PieChartDataEntry(value: 0)
    
    var numberOfDataEntries = [PieChartDataEntry]()
    
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
        
        calculateAllMacros()
        
        customScreen()
        
        proteinDataEntry.value = userProteinPct
        carbsDataEntry.value = userCarbsPct
        fatsDataEntry.value = userFatsPct
        
        numberOfDataEntries = [proteinDataEntry, carbsDataEntry, fatsDataEntry]
        updateChartData()

    }
    
    private func calculateAllMacros() {
        var calculatorMacro = CalculatorMacro(userChoices: UserChoices(gender: gender, weight: weight, activity: activity, sport: sports, goals: goals, preferences: preferences))
        
        userBaselineCalories = calculatorMacro.baselineCalories()
        userCalorieswithDeficit = calculatorMacro.caloriesWithDeficit()
        userProteinAmount = calculatorMacro.proteinRequirement()
        userFatsAmount = calculatorMacro.fatsRequirement()
        userCarbsAmount = calculatorMacro.carbsRequirement()
        userProteinPct = calculatorMacro.proteinPct
        userCarbsPct = calculatorMacro.carbsPct
        userFatsPct = calculatorMacro.fatsPct
    }
    
    private func customScreen() {
        Visual.customLabel(to: resultsLabel, text: K.resultsTitle, font: K.welcomeTitlePolice, size: 30)
        Visual.customLabel(to: resultsLabel2, text: K.resultsTitle2, font: K.welcomeTextPolice1, size: 25)
        Visual.customLabel(to: totalCaloriesLabel, text: "\(userCalorieswithDeficit)", font: K.nextButtonPolice, size: 30)

        Visual.customLabel(to: proteinPctLabel, text: String(format: K.formatPct, userProteinPct), font: K.welcomeTextPolice2, size: 20)
        Visual.customLabel(to: carbsPctLabel, text: String(format: K.formatPct, userCarbsPct), font: K.welcomeTextPolice2, size: 20)
        Visual.customLabel(to: fatsPctLabel, text: String(format: K.formatPct, userFatsPct), font: K.welcomeTextPolice2, size: 20)
        
        Visual.customLabel(to: proteinGrLabel, text: "\(userProteinAmount) g", font: K.answerPolice, size: 18)
        Visual.customLabel(to: carbsGrLabel, text: "\(userCarbsAmount) g", font: K.answerPolice, size: 18)
        Visual.customLabel(to: fatsGrLabel, text: "\(userFatsAmount) g", font: K.answerPolice, size: 18)
        
        Visual.buttonShadowAndFont(to: recalculateButton, text: K.recalculateButtonTitle)
    }
    
    
    private func updateChartData() {
        
        let chartDataSet = PieChartDataSet(entries: numberOfDataEntries, label: nil)
        let chartData = PieChartData(dataSet: chartDataSet)
        
        customChart(withDataSet: chartDataSet)
        
        pieChart.data = chartData
    }
    
    private func customChart(withDataSet chartDataSet: PieChartDataSet){
        
        chartDataSet.colors = [K.proteinColor, K.carbsColor, K.fatsColor]
        
        pieChart.holeRadiusPercent = 0.60
        pieChart.transparentCircleRadiusPercent = 0.63
        pieChart.chartDescription?.text = ""
        pieChart.legend.enabled = false
        
        proteinDataEntry.label = K.proteinLabel
        carbsDataEntry.label = K.carbsLabel
        fatsDataEntry.label = K.fatsLabel

    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {

        navigationController?.popToRootViewController(animated: true)
    }
}
