//
//  MystocksCell.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 04/01/2021.
//

import UIKit

class MystocksCell: UICollectionViewCell
{
    static let identifier = "myStockCell"
    @IBOutlet var logo          : UIImageView!
    @IBOutlet var name          : UILabel!
    @IBOutlet var symbol        : UILabel!
    @IBOutlet var price         : UILabel!
    @IBOutlet var buyButton     : UIButton!
    @IBOutlet var sellButton    : UIButton!
    @IBOutlet var total         : UILabel!
    @IBOutlet var count         : UILabel!
    @IBOutlet var trend         : UILabel!
    @IBOutlet var trendImage    : UIImageView!
    @IBOutlet var trendView     : UIView!
    var stockID                 : String!
    var id                      : String!
    var companyID               : String!
    var stockNumber             : Int!
    var totalDouble             : Double!
    var parent                  : MyStocksController!
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        self.contentView.layer.cornerRadius = 10
        self.contentView.backgroundColor = #colorLiteral(red: 0.662745098, green: 0.662745098, blue: 0.662745098, alpha: 1)
        self.trendView.layer.cornerRadius = 5
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        self.contentView.backgroundColor = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 0.5)
        self.initButton()
    }
    
    func initButton()
    {
        self.buyButton.addTarget(self, action: #selector(self.buyStock), for: .touchDown)
        self.sellButton.addTarget(self, action: #selector(self.sellStock), for: .touchDown)
        
        self.buyButton.backgroundColor = #colorLiteral(red: 0.5425858498, green: 0.7886169553, blue: 0.8360401988, alpha: 1)
        self.buyButton.layer.cornerRadius = 5
        self.buyButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.buyButton.titleLabel?.text = "Buy"
        
        self.sellButton.backgroundColor = #colorLiteral(red: 0.4039215686, green: 0.3764705882, blue: 0.537254902, alpha: 1)
        self.sellButton.layer.cornerRadius = 5
        self.sellButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.sellButton.titleLabel?.text = "Buy"

        
    }
    
    @objc func buyStock()
    {
        let stockService: StocksService = StocksService()
        let authService : AuthService   = AuthService()
        self.stockNumber += 1
        stockService.updateUserStocks(id: authService.getUserInfo().id, companyID: self.companyID, stockID: self.stockID, stockNumber: self.stockNumber!).then { _ in
            self.count.text = "number of share: \(String(self.stockNumber))"
            self.totalDouble = self.totalDouble * Double(self.stockNumber)
            self.total.text = "Total: \(String(self.totalDouble.binade))"
        }
    }
    
    @objc func sellStock()
    {
        let abort = NSLocalizedString("ABORT", comment: "ABORT")
        let nothave = NSLocalizedString("WONTHAVE", comment: "WONTHAVE")
        let stockService: StocksService = StocksService()
        let authService : AuthService   = AuthService()
        self.stockNumber -= 1
        if self.stockNumber > 0 {
            stockService.updateUserStocks(id: authService.getUserInfo().id, companyID: self.companyID, stockID: self.stockID, stockNumber: self.stockNumber!).then { _ in
                self.count.text = "number of share: \(String(self.stockNumber))"
                self.totalDouble = self.totalDouble * Double(self.stockNumber)
                self.total.text = "Total: \(String(self.totalDouble.binade))"
            }
        }
        else if self.stockNumber == 0 {
            let alert = UIAlertController(title: "Attention !", message: nothave + self.name.text!, preferredStyle: .alert)
            let sell = UIAlertAction(title: "Ok !", style: .default) { _ in
                stockService.updateUserStocks(id: authService.getUserInfo().id, companyID: self.companyID, stockID: self.stockID, stockNumber: self.stockNumber!).then { _ in
                    self.parent.getUserStock()
                }
            }
            let cancel = UIAlertAction(title: abort, style: .cancel, handler: .none)
            alert.addAction(sell)
            alert.addAction(cancel)
            self.parent.present(alert, animated: true, completion: .none)

        }
    }
}
