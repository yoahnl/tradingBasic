//
//  LoginPageControllerEX.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 11/12/2020.
//

import UIKit
import Toast_Swift

extension LoginPageController
{    
    func login()
    {
        let auth: AuthService = AuthService()
        let spiningIndicatorOutlet: UIActivityIndicatorView = UIActivityIndicatorView(style: .large)
        spiningIndicatorOutlet.frame = CGRect(x: self.loginButtonOutlet.frame.width / 2, y: self.loginButtonOutlet.frame.height / 2, width: 1, height: 1)
                
        if let realPassword = self.password {
            if let realUser = self.email {
                self.loginButtonOutlet.addSubview(spiningIndicatorOutlet)
                self.loginButtonOutlet.setTitle("", for: .normal)
                spiningIndicatorOutlet.startAnimating()
                auth.login(user: realUser, passowrd: realPassword).then {
                    result in
                    let storyboard = UIStoryboard(name: "Home", bundle: nil)
                    let view = storyboard.instantiateInitialViewController()
                    if let realView = view {
                        self.present(realView, animated: true, completion: nil)
                    }
                }.catch { error in
                    spiningIndicatorOutlet.stopAnimating()
                    self.loginButtonOutlet.setTitle("Login", for: .normal)
                    self.view.makeToast("Oups ! There were an error ! Error: \(error)")
                }
            }
        } else {
            self.view.makeToast("You need to put your username or email and your password !")
        }

    }
}
