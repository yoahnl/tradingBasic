//
//  StocksCell.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 02/01/2021.
//

import UIKit
import ScrollableGraphView
import Toast_Swift

class StocksCell: UICollectionViewCell
{
    static let identifier = "companyCell"
    @IBOutlet var logo      : UIImageView!
    @IBOutlet var name      : UILabel!
    @IBOutlet var symbol    : UILabel!
    @IBOutlet var price     : UILabel!
    @IBOutlet var graphView : UIView!
    @IBOutlet var waiting   : UIActivityIndicatorView!
    @IBOutlet var buyButton : UIButton!
    var id                  : Int!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        self.contentView.layer.cornerRadius = 10
        self.contentView.backgroundColor = #colorLiteral(red: 0.662745098, green: 0.662745098, blue: 0.662745098, alpha: 1)
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
        self.contentView.backgroundColor = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 0.5)
        self.initButton()

    }
    
    func initGraph(symbol: String)
    {
        let priceStr = NSLocalizedString("PRICE", comment: "PRICE")
        let rect: CGRect = CGRect(x: 0, y: 0, width: self.graphView.frame.width, height: self.graphView.frame.height)
        let stock: StocksService = StocksService()
        stock.getMarketStocks(symbol: symbol).then {
            stocks in
            let graph = Graph(frame: rect)
            graph.stocks = stocks
            self.graphView.addSubview(graph)
            self.waiting.stopAnimating()
            
            let price: String = String(describing: stocks.last!.close)
            self.updatePrice(price: stocks.last!.close, firstPrice: stocks.first!.close)
            self.price.text = "\(priceStr): \(price.lowercased())$"
            self.waiting.isHidden = true
        }
    }
    
    func updatePrice(price: Double, firstPrice: Double)
    {
        let stocks: StocksService = StocksService()
        stocks.updateCompanyPrice(price: price, id: self.id, firstPrice: firstPrice)
    }
    
    func initButton()
    {
        self.buyButton.backgroundColor = #colorLiteral(red: 0.5137254902, green: 0.5058823529, blue: 0.8235294118, alpha: 1)
        self.buyButton.layer.cornerRadius = 5
        self.buyButton.titleLabel?.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.buyButton.addTarget(self, action: #selector(self.buyStock), for: .touchDown)
    }
    
    @objc func buyStock()
    {
        let authService: AuthService = AuthService()
        let stockService: StocksService = StocksService()
        let userID = authService.getUserInfo().id
        let companyName = self.name.text!
        var stockID: String!
        var stockNumber: Int!
        
        self.buyButton.backgroundColor = #colorLiteral(red: 0.5137254902, green: 0.5058823529, blue: 0.8235294118, alpha: 0.5)
        self.buyButton.isEnabled = false

        stockService.getUsersStocks(id: userID).then {
            stocks in
            var stockExistForUser: Bool = false
            for stock in stocks
            {
                if String(self.id) == stock.id
                {
                    stockID = stock.stock_id
                    stockNumber = stock.number_stocks
                }
                if companyName == stock.company_name
                {
                    stockExistForUser = true
                }
            }
            if stockExistForUser
            {
                self.updateUserStock(userID: userID, stockID: stockID!, stockNumber: stockNumber)
            }
            else if !stockExistForUser
            {
                self.createUserStock(userID: userID)
            }
        }
        
    }
    
    func updateUserStock(userID: String, stockID: String, stockNumber: Int)
    {
        let newShare = NSLocalizedString("NEW", comment: "new")
        let stockService: StocksService = StocksService()
        let newStockNumber = stockNumber + 1
        stockService.updateUserStocks(id: userID, companyID: String(self.id), stockID: stockID, stockNumber: newStockNumber).then { _ in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.buyButton.isEnabled = true
                self.buyButton.backgroundColor = #colorLiteral(red: 0.5137254902, green: 0.5058823529, blue: 0.8235294118, alpha: 1)
                self.makeToast(newShare, duration: 1, position: .center)
            }
        }
    }
    
    func createUserStock(userID: String)
    {
        let stockService: StocksService = StocksService()
        stockService.createUserStocks(id: userID, companyID: String(self.id))
        self.buyButton.backgroundColor = #colorLiteral(red: 0.5137254902, green: 0.5058823529, blue: 0.8235294118, alpha: 1)
        self.buyButton.isEnabled = true
        self.buyButton.titleLabel?.text = "Buy"
    }
}

class Graph: UIView, ScrollableGraphViewDataSource
{
    var stocks: [Stock] = []
    var linePlotData: [Double] = []
    var graphView: ScrollableGraphView!
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        self.initGraphView(frame: frame)
        self.addSubview(self.graphView)
    }
        
    required init?(coder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }
    
    func value(forPlot plot: Plot, atIndex pointIndex: Int) -> Double
    {
        switch(plot.identifier)
        {
        case "line":
            return stocks[pointIndex].close
        default:
            return 0
        }
    }
    
    func label(atIndex pointIndex: Int) -> String
    {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d"
        return formatter.string(from: stocks[pointIndex].date)
    }
    
    func numberOfPoints() -> Int
    {
        return stocks.count
    }
    
    func initGraphView(frame: CGRect)
    {
        self.graphView = ScrollableGraphView(frame: frame, dataSource: self)
        let linePlot = LinePlot(identifier: "line")
        linePlot.lineStyle = .smooth
        linePlot.lineColor = #colorLiteral(red: 0.7873383164, green: 0.7909833789, blue: 0.7998883128, alpha: 1)
        linePlot.fillGradientEndColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        linePlot.fillGradientEndColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        linePlot.lineWidth += 3
        linePlot.adaptAnimationType = .elastic
        let referenceLines = ReferenceLines()
        self.graphView.addPlot(plot: linePlot)
        self.graphView.addReferenceLines(referenceLines: referenceLines)
        self.graphView.shouldAdaptRange = true
        self.graphView.shouldAnimateOnAdapt = true
        self.graphView.shouldAnimateOnAdapt = true
        self.graphView.backgroundColor = #colorLiteral(red: 0.1543319225, green: 0.1688843369, blue: 0.1816985011, alpha: 1)
        self.graphView.backgroundFillColor = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)
    }

}
