//
//  WeightViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 15/03/2023.
//

import Foundation
import UIKit

class WeightViewController: UIViewController {
    
    @IBOutlet weak var question2Label: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var kgLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var weightTextField: UITextField!
    
    public var userWeight: Int = 0
    
    var userChoices: UserChoices!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard userChoices != nil else{
            fatalError()
        }
        
        progressBar.progress = 2/6
        weightTextField.keyboardType = .numberPad
        weightTextField.delegate = self
        weightTextField.font = UIFont(name: Constants.questionPolice, size: 40)
        
        customScreen()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        if userWeight != 0 {
            self.performSegue(withIdentifier: Constants.weightToActivity, sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        userChoices.weight = userWeight
        if segue.identifier == Constants.weightToActivity {
            let activityVC = segue.destination as! ActivityLevelViewController
            activityVC.userChoices = userChoices
        }
    }
    
    private func customScreen(){
        Visual.customLabel(to: question2Label, text: Constants.weightQuestion, font: Constants.questionPolice, size: 27)
        Visual.customLabel(to: kgLabel, text: Constants.kgMetrics, font: Constants.kgPolice, size: 18)
        Visual.buttonShadowAndFont(to: nextButton)
    }
}

extension WeightViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == weightTextField {
            let maxNumbers = 3
            let newLength: Int = textField.text!.count + string.count - range.length
            let allowedCharacters = CharacterSet(charactersIn: Constants.allowedCharacters)
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet) && (newLength <= maxNumbers)
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return weightTextField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        conditionWeight(with: textField)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    private func conditionWeight(with textField: UITextField){
        
        if textField.text == "" {
            return
        }

        let weightInteger = Int(textField.text!)
        userWeight = weightInteger!
        
        if userWeight == 0 {
            weightTextField.text = ""
            weightTextField.placeholder = Constants.conditionWeight1
        } else if userWeight < 20 {
            weightTextField.text = ""
            weightTextField.placeholder = Constants.conditionWeight2
        } else if userWeight > 300 {
            weightTextField.text = ""
            weightTextField.placeholder = Constants.conditionWeight3
        }
    }
    
}
