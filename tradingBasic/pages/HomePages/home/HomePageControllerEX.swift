//
//  HomePageControllerEX.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 14/12/2020.
//

import UIKit

extension HomePageController {
    
    @objc func toProfileInfo()
    {
        self.performSegue(withIdentifier: "profile", sender: self)
    }
}
