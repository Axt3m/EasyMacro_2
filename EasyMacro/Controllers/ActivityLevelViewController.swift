//
//  ActivityViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 15/03/2023.
//

import UIKit

class ActivityLevelViewController: UIViewController {
    
    @IBOutlet weak var question3Label: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    public var userActivityLevel: String = ""
    
    var userChoices = UserChoices()
    var gender: String?
    var weight: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressBar.progress = 1/2
        
        Visual.customLabel(to: question3Label, text: K.activityQuestion, font: K.questionPolice, size: 27)
        Visual.buttonShadowAndFont(to: nextButton)

        Visual.customButton(to: button1, text: K.activityAnswer1, isDefaultButton: true) {defaultTextButton in
            self.userActivityLevel = defaultTextButton
        }
        
        Visual.customButton(to: button2, text: K.activityAnswer2)
        Visual.customButton(to: button3, text: K.activityAnswer3)
        Visual.customButton(to: button4, text: K.activityAnswer4)
    
    }
    
    
    @IBAction func button1Pressed(_ sender: UIButton) {

        Visual.selectedButton(sender) {textButton in
            self.userActivityLevel = textButton
        }
        
        Visual.deselectButtons(button2, button3, button4)
        
    }

    @IBAction func button2Pressed(_ sender: UIButton) {
        
        Visual.selectedButton(sender) {textButton in
            self.userActivityLevel = textButton
        }
        
        Visual.deselectButtons(button1, button3, button4)
  
    }

    @IBAction func button3Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userActivityLevel = textButton
        }
        
        Visual.deselectButtons(button1, button2, button4)

    }

    @IBAction func button4Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userActivityLevel = textButton
        }
        Visual.deselectButtons(button1, button2, button3)
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "activityToSport" {
            let sportVC = segue.destination as! SportsViewController
            sportVC.gender = userChoices.getGender(with: Test.unwrapOptionalString(gender))
            sportVC.weight = userChoices.getWeight(with: Test.unwrapOptionalInt(weight))
            sportVC.activity = userChoices.getActivity(with: userActivityLevel)
            
        }
    }
    

    

}
