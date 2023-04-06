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
        
        customScreen()

    }
    
    @IBAction func startButtonPressed(_ sender: UIButton) {
    }
    
    private func customScreen(){
        
        Visual.customLabel(to: welcomeLabel, text: Constants.welcomeTitle, font: Constants.welcomeTitlePolice, size: 25)
        Visual.customLabel(to: descriptionLabel1, text: Constants.welcomeText1, font: Constants.welcomeTextPolice1, size: 18)
        Visual.customLabel(to: descriptionLabel2, text: Constants.welcomeText2, font: Constants.welcomeTextPolice2, size: 15)
        Visual.buttonShadowAndFont(to: startButton, text: Constants.welcomeButtonTitle)
        
    }
    
}

