//
//  Cashier.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/06.
//

import Foundation

class Cashier {
    func returnChange(order: Order) -> Int {
        return order.amount - order.customerOrder.price
    }
    
    func placeOrder
}
