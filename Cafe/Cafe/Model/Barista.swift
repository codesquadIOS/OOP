//
//  Barista.swift
//  Cafe
//
//  Created by Kai Kim on 2022/03/06.
//

import Foundation
struct Barista {
    
    private var recievedOrder : Order?
    private var completedOrder : Order?
    
    mutating func makeBeverage () -> Beverage {
        if let targetBeverage = recievedOrder?.popFirstBeverage() {
            self.completedOrder?.appendBeverage(beverage: targetBeverage)
        }
    }
    
    mutating func recieveOrder(order : Order) {
        self.recievedOrder = order
    }
    
    
    
}

struct Order {
    var beverages : [Beverage]
    
    mutating func popFirstBeverage() -> Beverage {
        return self.beverages.removeFirst()
    }
    
    mutating func appendBeverage(beverage: Beverage) {
        self.beverages.append(beverage)
    }
    
}
