//
//  Stocks.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 02/01/2021.
//

import Foundation

struct UserStocks
{
    var stock_id        : String
    var id              : String
    var number_stocks   : Int
    var company_name    : String
    var company_logo    : String
    var price           : Double
    var symbol          : String
    var firstPrice      : Double
}

struct Company
{
    var id      : Int
    var Name    : String
    var logo    : String
    var price   : Double
    var symbol  : String
}

struct Stock
{
    let date    : Date
    let close   : Double
}
