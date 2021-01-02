//
//  ProfilePageController.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 14/12/2020.
//

import UIKit

class ProfilePageController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func logOut(_ sender: Any)
    {
        let auth: AuthService = AuthService()
        auth.logOut()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateInitialViewController()
        if let realView = view {
            realView.modalPresentationStyle = .fullScreen
            self.present(realView, animated: true, completion: nil)
        }
    }
    
}
