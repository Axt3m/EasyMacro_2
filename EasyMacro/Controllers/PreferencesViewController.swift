//
//  FatsViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 31/03/2023.
//

import UIKit

class PreferencesViewController: UIViewController {
    
    @IBOutlet weak var question6Label: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    public var userPreferences: String = ""
    
    var userChoices: UserChoices!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        guard userChoices != nil else{
            fatalError()
        }
        
        progressBar.progress = 1.0
        
        customScreen()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        userChoices.preferences = userPreferences
        if segue.identifier == Constants.preferencesToResults {
            let resultsVC = segue.destination as! ResultsViewController
            resultsVC.userChoices = userChoices
        }
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userPreferences = textButton
        }
        Visual.deselectButton(button2)
    }
    
    
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userPreferences = textButton
        }
        Visual.deselectButton(button1)
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
    }

    
    private func customScreen(){
        Visual.customLabel(to: question6Label, text: Constants.preferencesQuestion, font: Constants.questionPolice, size: 27)
        
        Visual.customButton(to: button1, text: Constants.preferencesAnswer1, isDefaultButton: true) {defaultTextButton in
            self.userPreferences = defaultTextButton
        }
        
        Visual.customButton(to: button2, text: Constants.preferencesAnswer2)
        
        Visual.buttonShadowAndFont(to: nextButton, text: Constants.calculateButtonTitle)
    }
    
    
}
