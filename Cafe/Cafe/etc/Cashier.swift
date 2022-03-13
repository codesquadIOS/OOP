//
//  Cashier.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/06.
//

import Foundation

class Cashier {
    private func calculateAmountSum(orders: [Order]) -> Int {
        var sum = 0
        for order in orders {
            sum += order.amount
        }
        return sum
    }
    
    func returnChange(orders: [Order], customerInput amount: Int) -> Int {
        return calculateAmountSum(orders: orders) - amount
    }
}
