//
//  MenuState.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/13.
//

import Foundation

class MenuState {
    var delegate?: MenuStateDelegate
    
    private var americanoState: AmericanoState = AmericanoState()
    private var cafelatteState: CafelatteState = CafelatteState()
    
    init(americanoState: AmericanoState, cafelatteState: CafelatteState) {
        self.americanoState = americanoState
        self.cafelatteState = cafelatteState
    }
    
    func plusAmericanoCount() {
        americanoState.plusCount()
        delegate.americanoCountDidPlus()
    }
    
    func minusAmericanoCount() {
        americanoState.minusCount()
    }
    
}

