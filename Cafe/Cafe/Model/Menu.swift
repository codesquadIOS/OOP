//
//  File.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/13.
//

import Foundation

struct Menu: Hashable {
    let item: Item
    let price: UInt
}

extension Menu {
    enum Item {
        case americano, cafeLatte, frappuccino
        
        var name: String {
            switch self {
            case .americano:
                return "아메리카노"
            case .cafeLatte:
                return "카페라데"
            case .frappuccino:
                return "프라프치노"
            }
        }
    }
}
