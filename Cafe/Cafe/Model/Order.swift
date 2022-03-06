//
//  Order.swift
//  Cafe
//
//  Created by 허태양 on 2022/03/06.
//

import Foundation

struct Order {
    private(set) var customerOrder: Coffee
    private(set) var amount: Int
    
    init(customerOrder: Coffee, amount: Int) {
        self.customerOrder = customerOrder
        self.amount = amount
    }
}
