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
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Visual.customLabel(to: question2Label, text: K.activityQuestion, font: K.questionPolice, size: 24)
        Visual.buttonShadowAndFont(to: nextButton)
        
        Visual.customButton(to: button1, text: K.activityAnswer1)
        Visual.customButton(to: button2, text: K.activityAnswer2)
        Visual.customButton(to: button3, text: K.activityAnswer3)
        Visual.customButton(to: button4, text: K.activityAnswer4)
        
    }
    
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        
        button1.layer.borderColor = UIColor.red.cgColor
        button1.layer.borderWidth = 2
        button1.layer.cornerRadius = 21

        Visual.selectedButton(sender)
        Visual.deselectButtons(button2, button3, button4)
        
        
    }

    @IBAction func button2Pressed(_ sender: UIButton) {
        
        Visual.selectedButton(sender)
        Visual.deselectButtons(button1, button3, button4)
  
    }

    @IBAction func button3Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender)
        Visual.deselectButtons(button1, button2, button4)

    }

    @IBAction func button4Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender)
        Visual.deselectButtons(button1, button2, button3)

    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton)

    }
    

}
