//
//  HomePageControllerEX.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 14/12/2020.
//

import UIKit

extension HomePageController
{
    
    @objc func toProfileInfo()
    {
        self.performSegue(withIdentifier: "profile", sender: self)
    }
    
    @objc func refreshNews()
    {
        self.getNews()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.refreshController?.endRefreshing()
        }
    }
    
    func getNews()
    {
        self.news.getNews().then { (allArticles : [Article])  in
            self.articles = allArticles
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.tableView.reloadData()
                self.tableView.stopShimmerAnimation()

            }
        }
    }
     
    func checkIfUserIsLoaded()
    {
        let auth: AuthService = AuthService()
        if auth.getUserInfo().username.isEmpty
        {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let view = storyboard.instantiateInitialViewController()
            if let realView = view {
                realView.modalPresentationStyle = .fullScreen
                self.present(realView, animated: true, completion: nil)
            }
        }
    }
}

 
