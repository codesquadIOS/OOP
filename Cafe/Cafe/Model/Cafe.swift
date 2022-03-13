//
//  Cafe.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/13.
//

import Foundation

protocol CafeDelegate {
    func didMakeMenus(menu: [Menu])
    func update(item: Menu.Item, count: Int)
    func update(totalPrice: Int)
}

class Cafe {
    var delegate: CafeDelegate?
    
    private let menu: [Menu]
    private var order: [Menu.Item: Int] = [:]
    
    init() {
        menu = [
            Menu(item: .americano, price: 1000),
            Menu(item: .cafeLatte, price: 2000),
            Menu(item: .frappuccino, price: 3000)
        ]
    }
    
    func makeMenu() {
        self.delegate?.didMakeMenus(menu: self.menu )
    }
    
    func addMenuCount(item: Menu.Item, value: Int) {
        var count = (order[item] ?? 0) + value
        count = count < 0 ? 0 : count
        order[item] = count
        self.delegate?.update(item: item, count: Int(count))
        totalPrice()
    }
    
    private func totalPrice() {
        var totalPrice = 0
        order.forEach { item, count in
            guard let menu = menu.filter({ $0.item == item}).first else {
                return
            }
            
            totalPrice += Int(menu.price) * count
        }
        self.delegate?.update(totalPrice: totalPrice)
    }
}
