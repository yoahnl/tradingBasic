//
//  StocksController.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 02/01/2021.
//

import UIKit

class StocksController: UIViewController, UICollectionViewDataSource
{
    
    @IBOutlet var collectionView: UICollectionView!
    var companies: [Company] = []
    let stocks = StocksService()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.initUI()
        self.getCompany()
    }
        
    
    func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return self.companies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: StocksCell.identifier, for: indexPath) as! StocksCell
        cell.waiting.startAnimating()
        if !self.companies.isEmpty
        {
            cell.name.text = self.companies[indexPath.row].Name
            cell.symbol.text = self.companies[indexPath.row].symbol
            cell.logo.url(self.companies[indexPath.row].logo)
            cell.id = self.companies[indexPath.row].id
            cell.initGraph(symbol: self.companies[indexPath.row].symbol)
        }
        return cell
    }
    
}

