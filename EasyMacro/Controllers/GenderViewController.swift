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
        customScreen()
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userGender = textButton
        }
        
        if(sender == button1) {
            Visual.deselectButton(button2)
        } else {
            Visual.deselectButton(button1)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        userChoices.gender = userGender
        
        if segue.identifier == Constants.genderToWeight {
            let weightVC = segue.destination as! WeightViewController
            weightVC.userChoices = userChoices
        }
    }
    
    private func customScreen(){
        
        Visual.customLabel(to: question1Label, text: Constants.genderQuestion, font: Constants.questionPolice, size: 27)
        Visual.customButton(to: button1, text: Constants.genderMale, isDefaultButton: true) {defaultTextButton in
            self.userGender = defaultTextButton
        }
        Visual.customButton(to: button2, text: Constants.genderFemale)
        Visual.buttonShadowAndFont(to: nextButton)
        
    }
    

    
    
}
