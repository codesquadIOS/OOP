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
    
    private func makeBeverage () -> Beverage {
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

/**
 주문서에 기재된 Beverage(캐셔사용)
 음료: 숫자
 
 실물 Beverage(바리스타)
 */
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
