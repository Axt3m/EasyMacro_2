//
//  ActivityViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 15/03/2023.
//

import UIKit

class ActivityViewController: UIViewController {
    
    @IBOutlet weak var question2Label: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Visual.customLabel(to: question2Label, text: K.activityQuestion, font: K.questionPolice, size: 24)
        Visual.buttonShadowAndFont(to: nextButton)
        
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton)
    }
}
