//
//  LoginPageControllerEX.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 11/12/2020.
//

import UIKit

extension LoginPageController {
    func login()
    {
        let auth: AuthService = AuthService()
        let spiningIndicatorOutlet: UIActivityIndicatorView = UIActivityIndicatorView(style: .large)
        spiningIndicatorOutlet.frame = CGRect(x: self.loginButtonOutlet.frame.width / 2, y: self.loginButtonOutlet.frame.height / 2, width: 1, height: 1)
        
        self.loginButtonOutlet.addSubview(spiningIndicatorOutlet)
        self.loginButtonOutlet.setTitle("", for: .normal)
        spiningIndicatorOutlet.startAnimating()
        
        auth.login(user: "yoahn.l@me.com", passowrd: "Pouletpied1").then {
            result in
            let storyboard = UIStoryboard(name: "Home", bundle: nil)
            let view = storyboard.instantiateInitialViewController()
            if let realView = view {
                self.present(realView, animated: true, completion: nil)
            }
        }
    }
}
