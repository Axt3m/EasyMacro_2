//
//  UserChoices.swift
//  EasyMacro
//
//  Created by Angela Terao on 27/03/2023.
//

import UIKit

class UserChoices {
    
    static let sharedInstance = UserChoices()
    
    private init(){}
    
    var userGender: String?
    var userWeight: Int?
    var userActivityLevel: String?
    var userSports: String?
    var userGoals: String?
    
    
}
