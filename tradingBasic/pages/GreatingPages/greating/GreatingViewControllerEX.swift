//
//  GreatingViewControllerEX.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 09/12/2020.
//

struct Tests: Decodable {
    let id: Int
    let test, publishedAt, createdAt, updatedAt: String
}

import UIKit
import Alamofire

extension GreatingViewController
{
    func getUserStatus()
    {
        let auth: AuthService = AuthService()
        if !auth.getUserInfo().username.isEmpty {
            let storyboard = UIStoryboard(name: "Home", bundle: nil)
            let view = storyboard.instantiateInitialViewController()
            if let realView = view {
                self.present(realView, animated: true, completion: nil)
            }
        }
    }
}
