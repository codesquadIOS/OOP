//
//  Menu.swift
//  Cafe
//
//  Created by 허태양 on 2022/03/06.
//

import Foundation

enum Menu {
    enum Coffee{
        case americano
        case caramel
        case capuccino
        case espresso
        var price: Int {
            switch(self) {
            case .americano :
                return 4000
            case .caramel :
                return 3500
            case .capuccino:
                return 4000
            case .espresso:
                return 5000
            }
        }
    }
}
