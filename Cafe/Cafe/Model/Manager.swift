//
//  Manager.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/06.
//

import Foundation

class Manager {
    private var barista: Barista
    
    func receiveCoffee(type: Coffee) {
        self.menu.append(menu)
    }
    
    func 바리스타에게메뉴전달() {
        let beverage = menu.removeFirst()
        self.barista.receiveMenu(menu: beverage)
    }
}
