//
//  MenuState.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/13.
//

import Foundation

struct MenuState {
    var delegate: MenuStateDelegate?
    
    private var americanoState: AmericanoState = AmericanoState()
    private var cafelatteState: CafelatteState = CafelatteState()
    
    mutating func plusAmericanoCount() {
        americanoState.plusCount()
        delegate?.americanoCountDidPlus(count: americanoState.count)
    }
    
    mutating func minusAmericanoCount() {
        americanoState.minusCount()
        delegate?.americanoCountDidMinus(count: americanoState.count)
    }
    
    mutating func plusCafelatteCount() {
        cafelatteState.plusCount()
//        delegate?.americanoCountDidPlus()
    }
    
    mutating func minusCafelatteCount() {
        cafelatteState.minusCount()
    }
}

