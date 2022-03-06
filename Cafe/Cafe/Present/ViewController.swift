//
//  ViewController.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import UIKit

class ViewController: UIViewController {

    let button: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private var cafe: Cafe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barista1 = Barista()
        let barista2 = Barista()
        let barista3 = Barista()
        let cashier = Cashier()
        self.cafe = Cafe(cashier: cashier, baristas: [barista1, barista2, barista3])
                
        let coffee1 = Coffee(name: "아메리카노", price: 1000, makingTime: 3)
        let coffee2 = Coffee(name: "카페라떼", price: 2000, makingTime: 5)
        let coffee3 = Coffee(name: "프라프치노", price: 3000, makingTime: 7)
        
        self.add(coffee: coffee1)
        self.add(coffee: coffee1)
        self.add(coffee: coffee1)
        self.add(coffee: coffee1)
        self.add(coffee: coffee1)
        
        self.startOrder()
        
        self.add(coffee: coffee2)
        self.add(coffee: coffee2)
        self.add(coffee: coffee2)
        self.add(coffee: coffee2)
        self.add(coffee: coffee2)
        
        self.startOrder()
    }
    
    func add(coffee: Coffee) {
        cafe?.add(coffee: coffee)
    }
    
    func startOrder() {
        cafe?.startOrder()
    }
}
