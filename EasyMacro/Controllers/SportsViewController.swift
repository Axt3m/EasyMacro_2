//
//  SportsViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

class SportsViewController: UIViewController {
    
    
    @IBOutlet weak var question4Label: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    public var userSports: String = ""
    
    var userChoices: UserChoices!

    var buttons: [UIButton] = []
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        guard userChoices != nil else{
            fatalError()
        }
        
        progressBar.progress = 4/6
        
        customScreen()
        buttons = [button1, button2, button3, button4, button5]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        userChoices.sport = userSports
        if segue.identifier == Constants.sportsToGoals {
            let goalsVC = segue.destination as! GoalsViewController
            goalsVC.userChoices = userChoices
        }
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {

        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        
        var buttonsToDeselect = buttons
        if let index = buttonsToDeselect.firstIndex(of: sender){
            buttonsToDeselect.remove(at: index)
        }
        if !buttonsToDeselect.isEmpty{
            Visual.deselectButtons(buttonsToDeselect)
        }
        
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
    }
    
    private func customScreen() {
        Visual.customLabel(to: question4Label, text: Constants.sportQuestion, font: Constants.questionPolice, size: 27)
        
        Visual.customButton(to: button1, text: Constants.sportAnswer1, isDefaultButton: true) {text in self.userSports = text}
        Visual.customButton(to: button2, text: Constants.sportAnswer2)
        Visual.customButton(to: button3, text: Constants.sportAnswer3)
        Visual.customButton(to: button4, text: Constants.sportAnswer4)
        Visual.customButton(to: button5, text: Constants.sportAnswer5)
        
        Visual.buttonShadowAndFont(to: nextButton)
    }
    
    
}
