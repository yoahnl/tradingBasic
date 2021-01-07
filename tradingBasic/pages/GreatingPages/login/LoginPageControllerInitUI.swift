//
//  LoginPageControllerInitUI.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 11/12/2020.
//

import UIKit
import Pastel

extension LoginPageController
{
    func initPastelView()
    {
        let pastelView = PastelView(frame: view.bounds)
        pastelView.startPastelPoint = .top
        pastelView.endPastelPoint = .bottom
        pastelView.animationDuration = 5.0
        pastelView.setColors([#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), #colorLiteral(red: 0.5137254902, green: 0.5058823529, blue: 0.8235294118, alpha: 1), #colorLiteral(red: 0.4684632421, green: 0.6670153737, blue: 0.7072713971, alpha: 1)])
        pastelView.startAnimation()
        view.insertSubview(pastelView, at: 0)
    }
    
    func initLoginButtonOutlet()
    {
        self.loginButtonOutlet.layer.cornerRadius = 10
        self.loginButtonOutlet.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.6019909587)
    }
    
}
