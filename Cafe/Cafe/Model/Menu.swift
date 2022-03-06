//
//  Menu.swift
//  Cafe
//
//  Created by 허태양 on 2022/03/06.
//

import Foundation

class Menu {
    private(set) var name: String
    private(set) var price: Int

    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}
