//
//  Effects.swift
//  EasyMacro
//
//  Created by Angela Terao on 15/03/2023.
//

import Foundation
import UIKit

struct Visual {
    
    static func buttonShadowAndFont(to button: UIButton, text textInput: String? = nil, size sizeInput: Int? = nil) {
            
        button.layer.shadowRadius = 2
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.2
        button.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
            
        if let attrFont = UIFont(name: Constants.nextButtonPolice, size: CGFloat(sizeInput ?? 18)) {
            let title = textInput ?? Constants.nextButtonTitle
            let attrTitle = NSAttributedString(string: title, attributes: [NSAttributedString.Key.font: attrFont])
            
            button.setAttributedTitle(attrTitle, for: UIControl.State.normal)
        }
            
    }
    
    static func customLabel(to label: UILabel, text textInput: String, font fontInput: String, size sizeInput: Int) {
        
        label.text = textInput
        label.font = UIFont(name: fontInput, size: CGFloat(sizeInput))
        
    }
    
    static func customButton(to button: UIButton, text textInput: String, font fontInput: String? = nil, size sizeInput: Int? = nil, isDefaultButton defaultButton: Bool? = false, completion: ((String) -> Void)? = nil)  {
        
        button.setAttributedTitle(NSAttributedString(string: textInput, attributes: [NSAttributedString.Key.font: UIFont(name: fontInput ?? Constants.answerPolice, size: CGFloat(sizeInput ?? 18))!]), for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.contentHorizontalAlignment = .center

        
        if defaultButton == true {
            selectedButton(button)
            completion?(textInput)
        }
    }
    

    static func selectedButton(_ b1: UIButton, completion: ((String) -> Void)? = nil) {
        
        b1.isSelected = true
        b1.layer.borderColor = UIColor(red: 247.0/255.0, green: 226.0/255.0, blue: 159.0/255.0, alpha: 1).cgColor
        b1.layer.borderWidth = 2
        b1.layer.cornerRadius = 21
        b1.backgroundColor = UIColor(red: 252.0/255.0, green: 246.0/255.0, blue: 212.0/255.0, alpha: 1)
        
        completion?(Unwrapping.optionalString(b1.titleLabel?.text))

    }

    
    static func deselectButtons(_ buttons: [UIButton]) {
        
        for i in 0..<buttons.count {
            buttons[i].isSelected = false
            buttons[i].layer.borderColor = UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1).cgColor
            buttons[i].layer.borderWidth = 2
            buttons[i].layer.cornerRadius = 21
            buttons[i].backgroundColor = UIColor.white

        }
    }
    
    static func deselectButton(_ button: UIButton) {
        
        button.isSelected = false
        button.layer.borderColor = UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1).cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 21
        button.backgroundColor = UIColor.white
    }
    
}



