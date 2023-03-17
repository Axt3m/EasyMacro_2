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
    
    var button1Selected: Bool = false
    var button2Selected: Bool = false
    var button3Selected: Bool = false
    var button4Selected: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Visual.customLabel(to: question2Label, text: K.activityQuestion, font: K.questionPolice, size: 24)
        Visual.buttonShadowAndFont(to: nextButton)
        
        button1.titleLabel?.text = K.activityAnswer1
        button2.titleLabel?.text = K.activityAnswer2
        button3.titleLabel?.text = K.activityAnswer3
        button4.titleLabel?.text = K.activityAnswer4
        
    }
    
    
    @IBAction func button1Pressed(_ sender: UIButton) {
//        button1Selected = true
//        Visual.buttonAnswer(to: sender, text: "Endurance", selected: button1Selected)
        //sender.backgroundColor = UIColor.red
        
    }

    @IBAction func button2Pressed(_ sender: UIButton) {
    }

    @IBAction func button3Pressed(_ sender: Any) {
    }

    @IBAction func button4Pressed(_ sender: Any) {
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: nextButton)
        
        //sender.backgroundColor = sender.backgroundColor == UIColor.red ? UIColor.black : UIColor.red
    }
    

}
