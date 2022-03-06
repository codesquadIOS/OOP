//
//  CafeTests.swift
//  CafeTests
//
//  Created by seongha shin on 2022/03/06.
//

import XCTest

class CafeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test() {
        let cafe = Cafe()
        
        let barista1 = Barista()
        let barista2 = Barista()
        let barista3 = Barista()
        
        let coffee1 = Coffee(name: "아메리카노", price: 1000, makingTime: 3)
        let coffee2 = Coffee(name: "카페라떼", price: 2000, makingTime: 5)
        let coffee3 = Coffee(name: "프라프치노", price: 3000, makingTime: 7)
        
        cafe.add(barista: barista1)
        cafe.add(barista: barista2)
        cafe.add(barista: barista3)
        
        cafe.add(coffee: coffee1)
        cafe.add(coffee: coffee2)
        cafe.add(coffee: coffee3)
        
        cafe.order()
    }
}
