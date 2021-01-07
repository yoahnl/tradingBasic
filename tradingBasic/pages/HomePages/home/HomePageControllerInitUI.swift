//
//  HomePageControllerInitUI.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 14/12/2020.
//

import UIKit
import SnapKit
import Pastel

extension HomePageController {

    func initUI()
    {
        self.initHeader()
        self.initProfilePicture()
        self.initWelcomeMessage()
        self.initTableView()
        self.initPastelView()
    }
    
    func initHeader()
    {
        self.header = UIView()
        self.header?.backgroundColor = #colorLiteral(red: 0.5137254902, green: 0.5058823529, blue: 0.8235294118, alpha: 0.5)
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
        let welcome = NSLocalizedString("WELCOME", comment: "Welcome")
        let auth: AuthService = AuthService()
        let username = auth.getUserInfo().username
        self.welcomeMessage = UILabel()
        self.welcomeMessage?.text = "\(welcome) \(username)"
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
//        self.tableView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.tableView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(115)
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        self.tableView.startShimmerAnimation(withIdentifier: "articleCell")
        ShimmerOptions.instance.animationType = .classic
        ShimmerOptions.instance.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        ShimmerOptions.instance.gradientColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
    func initPastelView()
    {
        let pastelView = PastelView(frame: view.bounds)
        pastelView.startPastelPoint = .top
        pastelView.endPastelPoint = .bottom
        pastelView.animationDuration = 3.0
        pastelView.setColors([#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), #colorLiteral(red: 0.5137254902, green: 0.5058823529, blue: 0.8235294118, alpha: 1), #colorLiteral(red: 0.4684632421, green: 0.6670153737, blue: 0.7072713971, alpha: 1)])
        pastelView.startAnimation()
        view.insertSubview(pastelView, at: 0)
    }

}
