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
        Visual.customLabel(to: smallDeficitTitle, text: Constants.smallDeficitTitle, font: Constants.welcomeTitlePolice, size: 25)
        Visual.customLabel(to: moderateDeficitTitle, text: Constants.moderateDeficitTitle, font: Constants.welcomeTitlePolice, size: 25)
        Visual.customLabel(to: largeDeficitTitle, text: Constants.largeDeficitTitle, font: Constants.welcomeTitlePolice, size: 25)
        
        Visual.customLabel(to: smallDeficitInfo, text: Constants.smallDeficitInfoLabel, font: Constants.welcomeTextPolice1, size: 15)
        Visual.customLabel(to: moderateDeficitInfo, text: Constants.moderateDeficitInfoLabel, font: Constants.welcomeTextPolice1, size: 15)
        Visual.customLabel(to: largeDeficitInfo, text: Constants.largeDeficitInfoLabel, font: Constants.welcomeTextPolice1, size: 15)
    }
    

}
