//
//  Coffee.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import Foundation

struct Coffee: CustomStringConvertible {
    let name: String
    let price: Int
    let makingTime: Float
    
    var description: String {
        "\(name)"
    }
}
