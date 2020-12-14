//
//  GreatingViewControllerInitUI.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 02/12/2020.
//

import UIKit
import Pastel

extension GreatingViewController
{
    
    func initGetStartedButtonOutlet()
    {
        self.getStartedButtonOutlet.layer.cornerRadius = 10
        self.getStartedButtonOutlet.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.5992041582)
    }
    
    func initPastelView()
    {
        let pastelView = PastelView(frame: view.bounds)
        pastelView.startPastelPoint = .top
        pastelView.endPastelPoint = .bottom
        pastelView.animationDuration = 5.0
        pastelView.setColors([#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1), #colorLiteral(red: 0.5137254902, green: 0.5058823529, blue: 0.8235294118, alpha: 1), #colorLiteral(red: 0.6392156863, green: 0.9176470588, blue: 0.9647058824, alpha: 1)])
        pastelView.startAnimation()
        view.insertSubview(pastelView, at: 0)
    }
}
