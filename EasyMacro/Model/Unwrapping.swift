//
//  Test.swift
//  EasyMacro
//
//  Created by Angela Terao on 29/03/2023.
//

import Foundation
import UIKit

struct Unwrapping {
    
    static func optionalString(_ data: String?) -> String {
        guard let dataString = data else {
            fatalError("Couldn't unwrap optional String")
        }
        return dataString
    }

    static func optionalInteger(_ data: Int?) -> Int {
        guard let dataInt = data else {
            fatalError("Couldn't unwrap optional Int")
        }
        return dataInt
    }
    
    
}
