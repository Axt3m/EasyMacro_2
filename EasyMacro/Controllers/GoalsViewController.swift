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
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    public var userGoals: String = ""
    
    var userChoices: UserChoices!

    var buttons: [UIButton] = []
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        progressBar.progress = 5/6
        
        customScreen()
        
        buttons = [button1, button2, button3]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        userChoices.goals = userGoals
        if segue.identifier == Constants.goalsToPreferences {
            let preferencesVC = segue.destination as! PreferencesViewController
            preferencesVC.userChoices = userChoices
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {

        Visual.selectedButton(sender) {textButton in
            self.userGoals = textButton
        }
        
        var buttonsToDeselect = buttons
        if let index = buttonsToDeselect.firstIndex(of: sender){
            buttonsToDeselect.remove(at: index)
        }
        if !buttonsToDeselect.isEmpty{
            Visual.deselectButtons(buttonsToDeselect)
        }
        
    }
    
    private func customScreen(){
        Visual.customLabel(to: question5Label, text: Constants.goalsQuestion, font: Constants.questionPolice, size: 27)
    
        Visual.customButton(to: button1, text: Constants.goalsAnswer1, isDefaultButton: true) {defaultTextButton in
            self.userGoals = defaultTextButton
        }
        
        Visual.customButton(to: button2, text: Constants.goalsAnswer2)
        Visual.customButton(to: button3, text: Constants.goalsAnswer3)
        
        Visual.buttonShadowAndFont(to: nextButton)
    }
    
}
