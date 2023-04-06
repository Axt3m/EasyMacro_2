//
//  FatsInfo.swift
//  EasyMacro
//
//  Created by Angela Terao on 05/04/2023.
//

import UIKit

class FatsInfo: UIViewController {
    
    
    @IBOutlet weak var fatsTitle: UILabel!
    @IBOutlet weak var fatsInfoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customScreen()

    }
    
    private func customScreen() {
        Visual.customLabel(to: fatsTitle, text: Constants.fatsTitleLabel, font: Constants.welcomeTitlePolice, size: 28)
        
        Visual.customLabel(to: fatsInfoLabel, text: Constants.fatsInfoLabel, font: Constants.welcomeTextPolice1, size: 15)
    }
    

}
