//
//  MyStocksController.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 02/01/2021.
//

import UIKit

class MyStocksController: UIViewController, UICollectionViewDataSource
{

    @IBOutlet var collectionView: UICollectionView!
    
    var userStocks: [UserStocks] = []
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.initUI()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        self.getUserStock()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return self.userStocks.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "myStockCell", for: indexPath) as! MystocksCell
        
        if !userStocks.isEmpty
        {
            let price           = self.userStocks[indexPath.row].price
            let trend           = ((self.userStocks[indexPath.row].price / self.userStocks[indexPath.row].firstPrice) - 1) * 100
            let numberStock     = self.userStocks[indexPath.row].number_stocks
            let total           = price * Double(numberStock)
            cell.totalDouble    = total
            cell.name.text      = self.userStocks[indexPath.row].company_name
            cell.symbol.text    = self.userStocks[indexPath.row].symbol
            cell.total.text     = "Total: \(String(total.binade))"
            cell.count.text     = "number of share: \(String(numberStock))"
            cell.stockNumber    = numberStock
            cell.trend.text     = "\(String(trend.binade)) %"
            cell.price.text     = "Price: \(String(price))"
            cell.stockID        = self.userStocks[indexPath.row].stock_id
            cell.companyID      = self.userStocks[indexPath.row].id
            cell.parent         = self
            cell.logo.url(self.userStocks[indexPath.row].company_logo)
            if trend < 0 {
                cell.trendImage.image = #imageLiteral(resourceName: "down")
            }
            else
            {
                cell.trendImage.image = #imageLiteral(resourceName: "up")
            }
        }
        return cell
    }
}
