//
//  ViewController.swift
//  EasyMacro
//
//  Created by Angela Terao on 13/03/2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var descriptionLabel1: UILabel!
    @IBOutlet weak var descriptionLabel2: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Visual.customLabel(to: welcomeLabel, text: K.welcomeTitle, font: K.welcomeTitlePolice, size: 25)
        Visual.customLabel(to: descriptionLabel1, text: K.welcomeText1, font: K.welcomeTextPolice1, size: 18)
        Visual.customLabel(to: descriptionLabel2, text: K.welcomeText2, font: K.welcomeTextPolice2, size: 15)
        Visual.buttonShadowAndFont(to: startButton, text: K.welcomeButtonTitle)

    }
    
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
        Visual.buttonShadowAndFont(to: startButton, text: K.welcomeButtonTitle)
    }
    

    
}

