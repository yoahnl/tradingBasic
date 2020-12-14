//
//  User.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 13/12/2020.
//

import Foundation

struct User
{
    internal init(username: String, email: String) {
        self.username = username
        self.email = email
    }
    
    var username: String
    var email: String
}
