//
//  Date.swift
//  tradingBasic
//
//  Created by Yoahn Linard on 03/01/2021.
//

import Foundation

extension Date {
    mutating func changeDays(by days: Int) {
        self = Calendar.current.date(byAdding: .day, value: days, to: self)!
    }
}

extension Date {
    
    static func -(lhs: Date, rhs: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: -rhs, to: lhs)!
    }
}
