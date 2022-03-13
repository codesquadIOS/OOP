//
//  Barista.swift
//  Cafe
//
//  Created by Kai Kim on 2022/03/06.
//

import Foundation
import UIKit
class Barista {
        
    private func makeBeverage (id : Int) -> Beverage? {
        
        switch id {
        case 1 :
            return Beverage.americano
        case 2 :
            return Beverage.cafeLatte
        case 3 :
            return Beverage.frappuccino
        default :
            return nil
        }
        
    }
    
    
    func processOrder(order : [Int]) -> [Beverage] {
        var recievedOrder = order
        var completedOrder : [Beverage] = []
        while !recievedOrder.isEmpty {
            let order = recievedOrder.removeFirst()
            if let madeBeverage = makeBeverage(id: order) {
                completedOrder.append(madeBeverage)
            }
        }
        return completedOrder
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
