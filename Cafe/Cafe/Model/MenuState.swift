//
//  MenuState.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/13.
//

import Foundation

struct MenuState {
    
    //내 심부름꾼 = delegate
    var delegate: MenuStateDelegate?
    //내 심부름꾼이 할 수 있어야 하는 일은
    //MenuStateDelegate에 적혀있다.
    
    private var americanoState: AmericanoState = AmericanoState()
    private var cafelatteState: CafelatteState = CafelatteState()
    
    mutating func plusAmericanoCount() {
        americanoState.plusCount() //+1
        delegate?.americanoCountDidChange(count: americanoState.count)
    }
    
    mutating func minusAmericanoCount() {
        americanoState.minusCount()
        delegate?.americanoCountDidChange(count: americanoState.count)
    }
    
    mutating func plusCafelatteCount() {
        cafelatteState.plusCount()
//        delegate?.cafelatteCountDidPlus(count: cafelatteState.count)
        delegate?.cafelatteCountDidChange(count: cafelatteState.count)
    }
    
    mutating func minusCafelatteCount() {
        cafelatteState.minusCount()
//        delegate?.cafelatteCountDidMinus(count: cafelatteState.count)
        delegate?.cafelatteCountDidChange(count: cafelatteState.count)
    }
    
    mutating func calculateAmount() {
        
    }
    
}

