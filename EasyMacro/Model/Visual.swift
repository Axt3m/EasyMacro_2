//
//  Effects.swift
//  EasyMacro
//
//  Created by Angela Terao on 15/03/2023.
//

import Foundation
import UIKit

struct Visual {
    
//    static func buttonShadowAndFont(to button: UIButton) -> UIButton {
//
//        button.layer.shadowRadius = 2
//        button.layer.shadowColor = UIColor.black.cgColor
//        button.layer.shadowOpacity = 0.2
//        button.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
//
//        if let attrFont = UIFont(name: K.nextButtonPolice, size: 18) {
//            let title = button.titleLabel!.text!
//            let attrTitle = NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: attrFont])
//            button.setAttributedTitle(attrTitle, for: UIControl.State.normal)
//        }
//
//        return button
//    }
    
    //, text textInput: String , size sizeInput: Int
    
    static func buttonShadowAndFont(to button: UIButton, text textInput: String? = nil, size sizeInput: Int? = nil) {
            
            button.layer.shadowRadius = 2
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.2
            button.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
            
        if let attrFont = UIFont(name: K.nextButtonPolice, size: CGFloat(sizeInput ?? 18)) {
            let title = textInput ?? K.nextButtonTitle //button.titleLabel!.text!
            let attrTitle = NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: attrFont])
            
            button.setAttributedTitle(attrTitle, for: UIControl.State.normal)
        }
            
    }
    
    static func customLabel(to label: UILabel, text textInput: String, font fontInput: String, size sizeInput: Int) {
        
        label.text = textInput
        label.font = UIFont(name: fontInput, size: CGFloat(sizeInput))
        
    }
}
