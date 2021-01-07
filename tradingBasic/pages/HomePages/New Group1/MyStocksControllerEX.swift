//
//  MyStocksControllerEX.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 05/01/2021.
//

import UIKit

extension MyStocksController
{
    @objc func getUserStock()
    {
        self.userStocks = []
        let stocks = StocksService()
        let authService: AuthService = AuthService()
        stocks.getUsersStocks(id: authService.getUserInfo().id).then {
            userStocks in
            for setStock in userStocks {
                if setStock.number_stocks > 0 {
                    self.userStocks.append(setStock)
                }
            }
            self.collectionView.reloadData()
            self.collectionView.stopShimmerAnimation()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.collectionView.refreshControl?.endRefreshing()
            }
        }
    }
}
