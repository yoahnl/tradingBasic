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
        self.initTableView()
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
            make.centerY.equalToSuperview().offset(10)
        })
        
        
    }

    func initTableView()
    {
        self.refreshController = UIRefreshControl()
        self.tableView.refreshControl = self.refreshController
        self.tableView.refreshControl?.addTarget(self, action:
                                                    #selector(self.refreshNews),
                                           for: .valueChanged)
        self.tableView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.tableView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(115)
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        self.tableView.startShimmerAnimation(withIdentifier: "articleCell")
        ShimmerOptions.instance.animationType = .classic
        ShimmerOptions.instance.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        ShimmerOptions.instance.gradientColor = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)
    }
}
