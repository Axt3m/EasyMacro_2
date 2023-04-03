//
//  GenderViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

class GenderViewController: UIViewController {
    
    @IBOutlet weak var question1Label: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var userGender: String = ""
    
    var userChoices = UserChoices()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressBar.progress = 1/6
        
        Visual.customLabel(to: question1Label, text: K.genderQuestion, font: K.questionPolice, size: 24)
        
        Visual.customButton(to: button1, text: K.genderMale, isDefaultButton: true) {defaultTextButton in
            self.userGender = defaultTextButton
        }
        
        Visual.customButton(to: button2, text: K.genderFemale)
        
        Visual.buttonShadowAndFont(to: nextButton)
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userGender = textButton
        }
        Visual.deselectButtons(button2)
    }
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userGender = textButton
        }
        Visual.deselectButtons(button1)
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton)


    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "genderToWeight" {
            let weightVC = segue.destination as! WeightViewController
            weightVC.gender = userChoices.getGender(with: userGender)
        }
    }
    

    
    
}
