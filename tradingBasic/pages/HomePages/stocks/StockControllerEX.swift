//
//  StockControllerEX.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 02/01/2021.
//

import UIKit

extension StocksController
{
    
    func getCompany()
    {
        let stocks = StocksService()
        stocks.getAllStocks().then
        {
            allCompanies in
            allCompanies.forEach
            {
                company in
                self.companies.append(company)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.collectionView.reloadData()
                self.collectionView.stopShimmerAnimation()
            }
        }
    }
    
    @objc func updateCompany()
    {
        let stocks = StocksService()
        self.companies = []
        stocks.getAllStocks().then
        {
            allCompanies in
            allCompanies.forEach
            {
                company in
                self.companies.append(company)
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1)
            {
                self.collectionView.reloadData()
                self.collectionView.refreshControl?.endRefreshing()
            }
        }
    }
    
}
