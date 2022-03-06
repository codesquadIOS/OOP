//
//  Cashier.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/06.
//

import Foundation

class Cashier {
    private var manager: Manager
    
    func returnChange(menu: Menu, amount: Int) -> Int{
        return amount - menu.Coffe
    }
    
    func 메뉴전달(menu: Menu, to manager: Manager) {
        self.manager.receiveMenu(menu: menu)
    }
}
