//
//  Barista.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import Foundation

class Barista {
    private var orderCoffee = [OrderCoffee]()
    private var processTimer: Float = 0
    
    var delayTime: Float {
        orderCoffee.reduce(0){ $0 + $1.coffee.makingTime}
    }
    
    func add(coffee: OrderCoffee) {
        orderCoffee.append(coffee)
    }
    
    func working() -> OrderCoffee? {
        guard let makingCoffee = orderCoffee.first else {
            return nil
        }
        
        if processTimer >= makingCoffee.coffee.makingTime {
            processTimer = 0
            return orderCoffee.removeFirst()
        }
        processTimer += 1
        return nil
    }
}
