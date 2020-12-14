//
//  HomePageControllerInitUI.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 14/12/2020.
//

import UIKit
import SnapKit

extension HomePageController {

    func initUI()
    {
        self.initHeader()
        self.initProfilePicture()
        self.initWelcomeMessage()
    }
    
    func initHeader()
    {
        self.header = UIView()
        self.header?.backgroundColor = .systemRed
        self.view.addSubview(self.header!)
        self.header?.snp.makeConstraints({ (make) in
            make.top.equalToSuperview()
            make.height.equalTo(110)
            make.width.equalToSuperview()
        })
    }
    
    func initProfilePicture()
    {
        let auth: AuthService = AuthService()
        self.profilePicture = UIImageView()
        self.profilePicture?.url(auth.getuserProfilePicture())
        self.header?.addSubview(self.profilePicture!)
        self.profilePicture?.snp.makeConstraints({ (make) in
            make.right.equalToSuperview().inset(10)
            make.height.equalTo(65)
            make.width.equalTo(65)
            make.top.equalTo(35)
        })
        self.profilePicture?.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.toProfileInfo))
        self.profilePicture?.addGestureRecognizer(tap)
    }
    
    func initWelcomeMessage()
    {
        let auth: AuthService = AuthService()
        let username = auth.getUserInfo().username
        self.welcomeMessage = UILabel()
        self.welcomeMessage?.text = "Welcome \(username)"
        self.welcomeMessage?.textColor = .white
        self.welcomeMessage?.font = self.welcomeMessage?.font.withSize(30)
        
        self.header?.addSubview(self.welcomeMessage!)
        self.welcomeMessage?.snp.makeConstraints({ (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(15)
        })
        
        
    }

}
