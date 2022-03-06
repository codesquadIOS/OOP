//
//  Order.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import Foundation

class Order: CustomStringConvertible {
    
    let orderId: Int
    private(set) var coffees: [Coffee] = []
    private var complateCoffee: [Coffee] = []
    
    
    var description: String {
        "orderId: \(orderId), coffees: \(coffees)"
    }
    
    var hasCoffee: Bool {
        coffees.count != 0
    }
    
    var isComplate: Bool {
        coffees.count == complateCoffee.count
    }
    
    init(orderId: Int) {
        self.orderId = orderId
    }
    
    ///주문커피
    func add(orderCoffee coffee: Coffee) {
        coffees.append(coffee)
    }
    
    //완료커피
    func add(complateCoffee coffee: Coffee) {
        complateCoffee.append(coffee)
    }
}
