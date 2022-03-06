//
//  Barista.swift
//  Cafe
//
//  Created by Kai Kim on 2022/03/06.
//

import Foundation
import UIKit
struct Barista {
    
    private var recievedOrder : Order
    private var completedOrder : Order
    
    mutating func makeBeverage () -> Beverage {
        let targetBeverage = recievedOrder.popFirstBeverage()
        return targetBeverage
    }
    
    mutating func recieveOrder(order : Order) {
        self.recievedOrder = order
    }
    
    mutating func processOrder() -> Order {
        while !self.recievedOrder.isEmpty {
            let madeBeverage = makeBeverage()
            completedOrder.appendBeverage(beverage: madeBeverage)
        }
        return self.completedOrder
    }
}

struct Order {
    private var beverages : [Beverage]
    
    var isEmpty: Bool {
        self.beverages.isEmpty
    }
    
    
    mutating func popFirstBeverage() -> Beverage {
        return self.beverages.removeFirst()
    }
    
    mutating func appendBeverage(beverage: Beverage) {
        self.beverages.append(beverage)
    }
    
//    mutating func loopBeverages(event: (Beverage) -> Void) {
//        for beverage in beverages {
//            event(beverage)
//
//        }
//    }
}
