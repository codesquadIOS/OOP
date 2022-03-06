//
//  Barista.swift
//  Cafe
//
//  Created by Kai Kim on 2022/03/06.
//

import Foundation
import UIKit
class Barista {
    
    private var recievedOrder : Order = Order()
    private var completedOrder : Order = Order()
    
     func makeBeverage () -> Beverage {
        let targetBeverage = recievedOrder.popFirstBeverage()
        return targetBeverage
    }
    
     func recieveOrder(order : Order) {
        self.recievedOrder = order
    }
    
     func processOrder() -> Order {
        while !self.recievedOrder.isEmpty {
            let madeBeverage = makeBeverage()
            completedOrder.appendBeverage(beverage: madeBeverage)
        }
        return self.completedOrder
    }
}

class Order {
    private var beverages : [Beverage] = []
    
    var isEmpty: Bool {
        self.beverages.isEmpty
    }
    
  
    
     func popFirstBeverage() -> Beverage {
        return self.beverages.removeFirst()
    }
    
     func appendBeverage(beverage: Beverage) {
        self.beverages.append(beverage)
    }

}
