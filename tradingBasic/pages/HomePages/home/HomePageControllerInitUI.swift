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
    }
    
    func initHeader()
    {
        self.header = UIView()
        self.header?.backgroundColor = .systemRed
        self.view.addSubview(self.header!)
        self.header?.snp.makeConstraints({ (make) in
            make.top.equalToSuperview()
            make.height.equalTo(130)
            make.width.equalToSuperview()
        })
    }
    
    func initProfilePicture()
    {
        self.profilePicture = UIImageView()
        self.profilePicture?.url("https://pfpmaker.com/img/profile-3-1.3e702c5b.png")
//        self.profilePicture?.image = self.profilePicture?.image!.cropToBounds(image: (self.profilePicture?.image)!, width: 30, height: 30)
        self.header?.addSubview(self.profilePicture!)
        self.profilePicture?.snp.makeConstraints({ (make) in
            make.left.equalTo(10)
            make.height.equalTo(85)
            make.width.equalTo(85)
            make.top.equalTo(40)
        })
        self.profilePicture?.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.toProfileInfo))
        self.profilePicture?.addGestureRecognizer(tap)

    }
    

}
