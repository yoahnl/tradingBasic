//
//  StocksService.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 02/01/2021.
//

import Foundation
import Apollo
import Promises
import SwiftHTTP
import SwiftyJSON


class StocksService
{
    func getCurrentDate() -> Date {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateInString  = dateFormatter.string(from: date)
        let dateinDate = dateFormatter.date(from: dateInString)
        return dateinDate!
    }
    
    func getMarketStocks(symbol: String) -> Promise<[Stock]>
    {
        var dateFrom: Date = getCurrentDate()
        dateFrom = dateFrom - 15
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let dateString = dateFormatter.string(from: dateFrom)
        let endpoint =  "https://api.tiingo.com/tiingo/daily/\(symbol)/prices?startDate=\(dateString)&token=94b1c6376fafe738be467825ceef6af8b05182cc"
        return Promise<[Stock]>(on: .main) {
            fulfill, reject in
            var stocks: [Stock] = []
            HTTP.GET(endpoint) {
                response in
                let json = response.text!
                if let data = json.data(using: .utf8) {
                    if let json = try? JSON(data: data) {
                        
                        for item in json.arrayValue {
                            let dateFormatter = DateFormatter()

                            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"

                            let updatedAtStr = item["date"].stringValue
                            let updatedAt = dateFormatter.date(from: updatedAtStr)
                            let stock: Stock = Stock(date: updatedAt!, close: Double(item["close"].stringValue)!)
                            stocks.append(stock)
                        }
                        fulfill(stocks)
                    }
                }

            }
        }
    }
    
    func getUsersStocks(id: String) -> Promise<[UserStocks]>
    {
        let promise = Promise<[UserStocks]>(on: .main)
        {
            fulfill, reject in
            apollo.fetch(query: GetUsersStocksQuery(input: id), cachePolicy: .fetchIgnoringCacheCompletely) {
                result in
                switch result {
                
                case .success(let graphQLResult):
                    var userStocks: [UserStocks] = []
                    graphQLResult.data?.stocks?.forEach({ stock in
                        
                        let user: UserStocks = UserStocks(stock_id: stock!.id, id: (stock?.company!.id)!, number_stocks: (stock?.numberStocks)!, company_name: (stock?.company?.name!)!, company_logo: (stock?.company?.logo)!, price: (stock?.company?.price)!, symbol: (stock?.company?.symbol)!, firstPrice: (stock?.company?.firstPrice)!)
                        userStocks.append(user)
                    })
                    fulfill(userStocks)
                case .failure(let error):
                    print(error.localizedDescription)
                    reject(error)
                }
            }
        }
        return promise
    }
    
    func getAllStocks() ->Promise<[Company]>
    {
        let promise = Promise<[Company]>(on: .main)
        {
            fulfill, reject in
            apollo.fetch(query: GetCompanyQuery(), cachePolicy: .fetchIgnoringCacheCompletely) {
                result in
                switch result {
                
                case .success(let graphQLResult):
                    var companies: [Company] = []
                    graphQLResult.data?.companies!.forEach({ company in
                        let company: Company = Company(id: Int(company!.id)!, Name: (company?.name)! , logo: (company?.logo)!, price: (company?.price)!, symbol: (company?.symbol)!)
                        companies.append(company)
                    })
                    fulfill(companies)
                case .failure(let error):
                    print(error.localizedDescription)
                    reject(error)
                }
            }
        }
        return promise
    }
    
    func updateCompanyPrice(price: Double, id: Int, firstPrice: Double)
    {
        let input: updateCompanyInput = updateCompanyInput(where: InputID(id: String(id)), data: editCompanyInput(price: price, firstPrice: firstPrice))
        apollo.perform(mutation: UpdateCompayPriceMutation(input: input)) {_ in
            
        }
    }
    
    func updateUserStocks(id: String, companyID: String, stockID: String, stockNumber: Int) -> Promise<Any>
    {
        let stockInput: editStockInput = editStockInput(numberStocks: stockNumber, company: companyID, usersPermissionsUser: id)
        let input: updateStockInput = updateStockInput(where: InputID(id: stockID), data: stockInput)
        return Promise<Any>(on: .main) { fulfill, reject in
            apollo.perform(mutation: UpdateUserStocksMutation(input: input)) {
                stock in
                fulfill(companyID)
            }
        }
    }
    
    func createUserStocks(id: String, companyID: String)
    {
        let stockInput = StockInput(numberStocks: 1, company: companyID, usersPermissionsUser: id, publishedAt: "2007-12-03T10:15:30Z")
        let input = createStockInput(data: stockInput)
        apollo.perform(mutation: CreateUserStocksMutation(input: input))
    }
}
