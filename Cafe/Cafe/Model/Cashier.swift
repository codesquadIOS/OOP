//
//  Cashier.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/06.
//

import Foundation

class Cashier {
    private var manager: Manager
    
    func returnChange(order: Order) -> Int {
        return order.amount - order.customerOrder.price
    }
    
    func 메뉴전달(order: Order) -> Coffee {
        return order.customerOrder
    }
}
