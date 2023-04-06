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
        Visual.customLabel(to: fatsTitle, text: K.fatsTitleLabel, font: K.welcomeTitlePolice, size: 28)
        
        Visual.customLabel(to: fatsInfoLabel, text: K.fatsInfoLabel, font: K.welcomeTextPolice1, size: 15)
    }
    

}
