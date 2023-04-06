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
    
    var userChoices = UserChoices()
    var gender: String?
    var weight: Int?
    var activity: String?
    var sports: String?
    var goals: String?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        progressBar.progress = 1.0
        
        customScreen()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == K.preferencesToResults {
            let resultsVC = segue.destination as! ResultsViewController
            resultsVC.gender = userChoices.getGender(with: Test.unwrapOptionalString(gender))
            resultsVC.weight = userChoices.getWeight(with: Test.unwrapOptionalInt(weight))
            resultsVC.activity = userChoices.getActivity(with: Test.unwrapOptionalString(activity))
            resultsVC.sports = userChoices.getActivity(with: Test.unwrapOptionalString(sports))
            resultsVC.goals = userChoices.getActivity(with: Test.unwrapOptionalString(goals))
            resultsVC.preferences = userChoices.getActivity(with: userPreferences)
        }
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userPreferences = textButton
        }
        Visual.deselectButtons(button2)
    }
    
    
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userPreferences = textButton
        }
        Visual.deselectButtons(button1)
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
    }

    
    private func customScreen(){
        Visual.customLabel(to: question6Label, text: K.preferencesQuestion, font: K.questionPolice, size: 27)
        
        Visual.customButton(to: button1, text: K.preferencesAnswer1, isDefaultButton: true) {defaultTextButton in
            self.userPreferences = defaultTextButton
        }
        
        Visual.customButton(to: button2, text: K.preferencesAnswer2)
        
        Visual.buttonShadowAndFont(to: nextButton, text: K.calculateButtonTitle)
    }
    
    
}
