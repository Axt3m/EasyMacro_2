//
//  SportsViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

class SportsViewController: UIViewController {
    
    
    @IBOutlet weak var question4Label: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    public var userSports: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Visual.customLabel(to: question4Label, text: K.sportQuestion, font: K.questionPolice, size: 24)
        
        Visual.customButton(to: button1, text: K.sportAnswer1, isDefaultButton: true) {text in self.userSports = text}
        Visual.customButton(to: button2, text: K.sportAnswer2)
        Visual.customButton(to: button3, text: K.sportAnswer3)
        Visual.customButton(to: button4, text: K.sportAnswer4)
        Visual.customButton(to: button5, text: K.sportAnswer5)
        
        Visual.buttonShadowAndFont(to: nextButton)
        
    }
    
    @IBAction func button1Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button2, button3, button4, button5)
    }
    
    
    @IBAction func button2Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button1, button3, button4, button5)
    }
    
    @IBAction func button3Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button1, button2, button4, button5)
    }
    
    @IBAction func button4Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button1, button2, button3, button5)
    }
    
    @IBAction func button5Pressed(_ sender: UIButton) {
        Visual.selectedButton(sender) {textButton in
            self.userSports = textButton
        }
        Visual.deselectButtons(button1, button2, button3, button4)
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton)
        UserChoices.sharedInstance.userSports = userSports
        
    }
    
    
}
