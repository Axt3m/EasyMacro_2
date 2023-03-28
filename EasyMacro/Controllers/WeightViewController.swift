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
    @IBOutlet weak var weightPicker: UIPickerView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var kgLabel: UILabel!
    
    public var userWeight: Int = K.defaultWeight
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weightPicker.dataSource = self
        weightPicker.delegate = self
        weightPicker.selectRow(K.defaultWeight - K.minWeight, inComponent: 0, animated: true)
        
        
        Visual.customLabel(to: question2Label, text: K.weightQuestion, font: K.questionPolice, size: 25)
        Visual.customLabel(to: kgLabel, text: K.kgMetrics, font: K.kgPolice, size: 18)
        Visual.buttonShadowAndFont(to: nextButton)
        

    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton)

        
    }
    

    
}

extension WeightViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return K.maxWeight - K.minWeight + 1
    }
    
}

extension WeightViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(K.minWeight + row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        userWeight = row + K.minWeight
    }
    
}
