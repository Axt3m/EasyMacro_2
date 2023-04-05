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
    
    var userChoices = UserChoices()
    var gender: String?
    var weight: Int?
    var activity: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressBar.progress = 4/6
        
        Visual.customLabel(to: question4Label, text: K.sportQuestion, font: K.questionPolice, size: 27)
        
        Visual.customButton(to: button1, text: K.sportAnswer1, isDefaultButton: true) {text in self.userSports = text}
        Visual.customButton(to: button2, text: K.sportAnswer2)
        Visual.customButton(to: button3, text: K.sportAnswer3)
        Visual.customButton(to: button4, text: K.sportAnswer4)
        Visual.customButton(to: button5, text: K.sportAnswer5)
        
        Visual.buttonShadowAndFont(to: nextButton)
        
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button2, button3, button4, button5)
    }
    
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button1, button3, button4, button5)
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button1, button2, button4, button5)
    }
    
    @IBAction func button4Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button1, button2, button3, button5)
    }
    
    @IBAction func button5Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button1, button2, button3, button4)
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton)
 
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sportToGoals" {
            let goalsVC = segue.destination as! GoalsViewController
            goalsVC.gender = userChoices.getGender(with: Test.unwrapOptionalString(gender))
            goalsVC.weight = userChoices.getWeight(with: Test.unwrapOptionalInt(weight))
            goalsVC.activity = userChoices.getActivity(with: Test.unwrapOptionalString(activity))
            goalsVC.sports = userChoices.getActivity(with: userSports)
            
        }
    }
    
    
}
