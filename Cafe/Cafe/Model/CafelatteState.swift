//
//  CafelatteState.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/13.
//

import Foundation

struct CafelatteState {
    
    private(set) var count: Int = 0
    
    mutating func plusCount() {
        count += 1
    }
    
    mutating func minusCount() {
        count -= 1
    }
    
}
