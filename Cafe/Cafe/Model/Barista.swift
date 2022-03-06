//
//  Barista.swift
//  Cafe
//
//  Created by Kai Kim on 2022/03/06.
//

import Foundation
import UIKit
struct Barista {
    
    private var recievedOrder : Order?
    private var completedOrder : Order?
    
    mutating func makeBeverage () -> Beverage {
        if let targetBeverage = recievedOrder?.popFirstBeverage() {
            self.completedOrder?.appendBeverage(beverage: targetBeverage)
        }
        self.recievedOrder?.loopBeverages(event: { Beverage in
            <#code#>
        })
    }
    
    mutating func recieveOrder(order : Order) {
        self.recievedOrder = order
    }
    
    
    
}

struct Order {
    private var beverages : [Beverage]
    
    mutating func popFirstBeverage() -> Beverage {
        return self.beverages.removeFirst()
    }
    
    mutating func appendBeverage(beverage: Beverage) {
        self.beverages.append(beverage)
    }
    
    mutating func loopBeverages(event: (Beverage) -> Void) {
        for beverage in beverages {
            event(beverage)
            
        }
    }
}
