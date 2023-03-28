//
//  GoalsViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

class GoalsViewController: UIViewController {
    
    
    @IBOutlet weak var question5Label: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    public var userGoals: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Visual.customLabel(to: question5Label, text: K.goalsQuestion, font: K.questionPolice, size: 24)
        
        Visual.customButton(to: button1, text: K.goalsAnswer1, isDefaultButton: true) {defaultTextButton in
            self.userGoals = defaultTextButton
        }
        
        Visual.customButton(to: button2, text: K.goalsAnswer2)
        Visual.customButton(to: button3, text: K.goalsAnswer3)
        
        Visual.buttonShadowAndFont(to: nextButton, text: K.calculateButtonTitle)
        
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userGoals = textButton
        }
        Visual.deselectButtons(button2, button3)
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userGoals = textButton
        }
        Visual.deselectButtons(button1, button3)
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userGoals = textButton
        }
        Visual.deselectButtons(button1, button2)
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton, text: K.calculateButtonTitle)
        UserChoices.sharedInstance.userGoals = userGoals
        
        var calories: Int = 0
        var calculatorMacro = CalculatorMacro()
        
        calories = calculatorMacro.baselineCalories(gender: UserChoices.sharedInstance.userGender!, weight: UserChoices.sharedInstance.userWeight!)
        print("The calories of the user needed is \(calories)")
        
    }
    
    
    
}
