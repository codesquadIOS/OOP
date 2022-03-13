//
//  MenuStateDelegate.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/13.
//

import Foundation

protocol MenuStateDelegate {
    func americanoCountDidPlus(count: Int)
    func americanoCountDidMinus(count: Int)
}
