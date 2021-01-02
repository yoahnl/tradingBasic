//
//  enum.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 13/12/2020.
//

import Foundation

enum LoginReturn {
    case success
    case error
}

struct defaultsKeys {
    static let UID = "UID"
    static let email = "email"
    static let username = "username"
    static let jwt = "jwt"
}

enum ApiError: Error {
    case forbidden              //Status code 403
    case notFound               //Status code 404
    case conflict               //Status code 409
    case internalServerError    //Status code 500
}
