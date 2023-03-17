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
        
        
        button1.setTitle(K.activityAnswer1, for: .normal)
        
    }
    
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        
        button1.layer.borderColor = UIColor.red.cgColor
        button1.layer.borderWidth = 2
        button1.layer.cornerRadius = 21

        Visual.selectedButton(sender)
        Visual.deselectButtons(button2, button3, button4)
        print(button1.isSelected)
        print(button2.isSelected)
        print(button3.isSelected)
        print(button4.isSelected)
        
        
    }

    @IBAction func button2Pressed(_ sender: UIButton) {
        
        Visual.selectedButton(sender)
        Visual.deselectButtons(button1, button3, button4)
        print(button1.isSelected)
        print(button2.isSelected)
        print(button3.isSelected)
        print(button4.isSelected)
        print("---")
    }

    @IBAction func button3Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender)
        Visual.deselectButtons(button1, button2, button4)
        print(button1.isSelected)
        print(button2.isSelected)
        print(button3.isSelected)
        print(button4.isSelected)
        print("---")
    }

    @IBAction func button4Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender)
        Visual.deselectButtons(button1, button2, button3)
        print(button1.isSelected)
        print(button2.isSelected)
        print(button3.isSelected)
        print(button4.isSelected)
        print("---")
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton)
        
        //sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor.red
    }
    

}
