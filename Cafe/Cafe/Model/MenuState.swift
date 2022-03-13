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
        calculateAmount()
    }
    
    mutating func minusAmericanoCount() {
        americanoState.minusCount()
        delegate?.americanoCountDidChange(count: americanoState.count)
        calculateAmount()
    }
    
    mutating func plusCafelatteCount() {
        cafelatteState.plusCount()
        delegate?.cafelatteCountDidChange(count: cafelatteState.count)
        calculateAmount()
    }
    
    mutating func minusCafelatteCount() {
        cafelatteState.minusCount()
        delegate?.cafelatteCountDidChange(count: cafelatteState.count)
        calculateAmount()
    }
    
    mutating func calculateAmount() {
        let americanoAmount = americanoState.count * americanoState.price
        let cafelattemAmount = cafelatteState.count * cafelatteState.price
        let totalPrice = americanoAmount + cafelattemAmount
        delegate?.totalPriceDidCalculate(amount: totalPrice)
    }
}

