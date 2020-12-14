//
//  HomePageController.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 14/12/2020.
//

import UIKit

class HomePageController: UIViewController
{
    var header: UIView?
    var profilePicture: UIImageView?
    var welcomeMessage: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initUI()
        let auth: AuthService = AuthService()
        let test = auth.getUserInfo()
    }
    
    
}
