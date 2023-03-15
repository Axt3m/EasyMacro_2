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
        
        welcomeLabel.text = K.welcomeTitle
        welcomeLabel.font = UIFont(name: K.welcomeTitlePolice, size: 25)
        
        descriptionLabel1.text = K.welcomeText1
        descriptionLabel1.font = UIFont(name: K.welcomeTextPolice1, size: 18)
        
        descriptionLabel2.text = K.welcomeText2
        descriptionLabel2.font = UIFont(name: K.welcomeTextPolice2, size: 15)
        
        startButton.titleLabel?.font = UIFont(name: K.nextButtonPolice, size: 18)

    }
    

    
}

