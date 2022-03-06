//
//  Cashier.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/06.
//

import Foundation

class Cashier {
    
    func returnChange(menu: Menu, amount: Int) -> Int{
        return amount - menu.price
    }
    
    // func 커피반환
}
