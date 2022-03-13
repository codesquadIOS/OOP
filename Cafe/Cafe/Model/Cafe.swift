//
//  Cafe.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/13.
//

import Foundation

protocol CafeDelegate {
    func didMakeMenus(menu: [Menu])
    func update(id: Int, count: Int)
    func update(totalPrice: Int)
}

class Cafe {
    var delegate: CafeDelegate?
    
    private let menu: [Menu]
    private var order: [Int: Int] = [:]
    
    init() {
        menu = [
            Menu(id: 0, name: "아메리카노", price: 1000),
            Menu(id: 1, name: "카메라떼", price: 2000),
            Menu(id: 2, name: "프라프치노", price: 3000)
        ]
    }
    
    func makeMenu() {
        self.delegate?.didMakeMenus(menu: self.menu )
    }
    
    func addMenuCount(id: Int, addCount: Int) {
        var count = (order[id] ?? 0) + addCount
        count = count < 0 ? 0 : count
        order[id] = count
        self.delegate?.update(id: id, count: Int(count))
        totalPrice()
    }
    
    private func totalPrice() {
        var totalPrice = 0
        order.forEach { id, count in
            guard let menu = menu.filter({ $0.id == id}).first else {
                return
            }
            
            totalPrice += Int(menu.price) * count
        }
        self.delegate?.update(totalPrice: totalPrice)
    }
}
