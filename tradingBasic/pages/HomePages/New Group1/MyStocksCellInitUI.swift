//
//  MyStocksCellInitUI.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 04/01/2021.
//

import UIKit
import Pastel

extension MyStocksController
{
    func initUI()
    {
        self.initCollectionView()
        self.initPastelView()
    }
    
    func initCollectionView()
    {
        let refresher: UIRefreshControl = UIRefreshControl()
        refresher.addTarget(self, action: #selector(self.getUserStock), for: .valueChanged)
        self.collectionView.refreshControl = refresher
        self.collectionView.dataSource = self
        self.collectionView.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        self.collectionView.startShimmerAnimation(withIdentifier: "myStockCell")
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
