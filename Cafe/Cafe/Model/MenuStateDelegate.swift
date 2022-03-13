//
//  MenuStateDelegate.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/13.
//

import Foundation

protocol MenuStateDelegate { //내 심부름꾼이 할 수 있어야 하는 일
    //MenuState: "내 심부름꾼 역할을 할 사람은, 이 메소드를 수행할 수 있어야 한다"
    //"그 메소드가 어떻게 동작할지는 네 마음대로 해"
    
    
//    func americanoCountDidPlus(count: Int)
//    func americanoCountDidMinus(count: Int)
    func americanoCountDidChange(count: Int)
    
    
    
    
//    func cafelatteCountDidPlus(count: Int)
//    func cafelatteCountDidMinus(count: Int)
    func cafelatteCountDidChange(count: Int)
    
}
