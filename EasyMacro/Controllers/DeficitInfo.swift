//
//  DeficitInfo.swift
//  EasyMacro
//
//  Created by Angela Terao on 05/04/2023.
//

import UIKit


class DeficitInfo: UIViewController {
    
    @IBOutlet weak var smallDeficitTitle: UILabel!
    @IBOutlet weak var smallDeficitInfo: UILabel!
    @IBOutlet weak var moderateDeficitTitle: UILabel!
    @IBOutlet weak var moderateDeficitInfo: UILabel!
    @IBOutlet weak var largeDeficitTitle: UILabel!
    @IBOutlet weak var largeDeficitInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customScreen()

    }
    
    private func customScreen() {
        Visual.customLabel(to: smallDeficitTitle, text: K.smallDeficitTitle, font: K.welcomeTitlePolice, size: 25)
        Visual.customLabel(to: moderateDeficitTitle, text: K.moderateDeficitTitle, font: K.welcomeTitlePolice, size: 25)
        Visual.customLabel(to: largeDeficitTitle, text: K.largeDeficitTitle, font: K.welcomeTitlePolice, size: 25)
        
        Visual.customLabel(to: smallDeficitInfo, text: K.smallDeficitInfoLabel, font: K.welcomeTextPolice1, size: 15)
        Visual.customLabel(to: moderateDeficitInfo, text: K.moderateDeficitInfoLabel, font: K.welcomeTextPolice1, size: 15)
        Visual.customLabel(to: largeDeficitInfo, text: K.largeDeficitInfoLabel, font: K.welcomeTextPolice1, size: 15)
    }
    

}
