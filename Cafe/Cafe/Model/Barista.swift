//
//  Barista.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import Foundation

class Barista {
    private var orderCoffee = [Coffee]()
    private var processTimer: Float = 0
    
    var delayTime: Float {
        orderCoffee.reduce(0){ $0 + $1.makingTime}
    }
    
    func add(coffee: Coffee) {
        orderCoffee.append(coffee)
    }
    
    func working() -> Coffee? {
        guard let makingCoffee = orderCoffee.first else {
            return nil
        }
        
        if processTimer >= makingCoffee.makingTime {
            processTimer = 0
            return orderCoffee.removeFirst()
        }
        processTimer += 1
        return nil
    }
}
