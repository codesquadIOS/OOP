//
//  AmericacoState.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/13.
//

import Foundation

struct AmericanoState {
    
    private(set) var count: Int = 0
    let price = 3000
    
    mutating func plusCount() {
        count += 1
    }
    
    mutating func minusCount() {
        count -= 1
    }
}
