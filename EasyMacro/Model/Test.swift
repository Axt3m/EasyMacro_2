//
//  Test.swift
//  EasyMacro
//
//  Created by Angela Terao on 29/03/2023.
//

import Foundation
import UIKit

struct Test {
    
    static func unwrapOptionalString(_ data: String?) -> String {
        guard let dataString = data else {
            fatalError("Couldn't unwrap optional String")
        }
        return dataString
    }
    
    static func unwrapOptionalInt(_ data: Int?) -> Int {
        guard let dataInt = data else {
            fatalError("Couldn't unwrap optional Int")
        }
        return dataInt
    }
    
    static func stringToNumber(_ textField: UITextField) -> Int {
        if textField.text != "" {
            let numberText = Int(textField.text!)
            return numberText!
        } else {
            return 0
        }
    }
    
}
