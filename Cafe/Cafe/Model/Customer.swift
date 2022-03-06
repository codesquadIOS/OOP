//
//  Customer.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/06.
//

import Foundation

class Customer {
    
    private var menuList: [Menu]
    
    init(menuList: [Menu]) {
        self.menuList = menuList
    }
    
    func makeOrder() -> [Menu] {
        return self.menuList
    }
    
    func 캐셔에게전달(menuList: [Menu], to cashier: Cashier) {
        
    }
     
}
