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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cafe = Cafe()
        
        let barista1 = Barista()
        let barista2 = Barista()
        let barista3 = Barista()
        
        cafe.add(barista: barista1)
        cafe.add(barista: barista2)
        cafe.add(barista: barista3)
        
        let coffee1 = Coffee(name: "아메리카노", price: 1000, makingTime: 3)
        let coffee2 = Coffee(name: "카페라떼", price: 2000, makingTime: 5)
        let coffee3 = Coffee(name: "프라프치노", price: 3000, makingTime: 7)
        
        cafe.add(coffee: coffee1)
        cafe.add(coffee: coffee1)
        cafe.add(coffee: coffee1)
        
        cafe.startOrder()
        
        cafe.add(barista: barista1)
        cafe.add(barista: barista2)
        cafe.add(barista: barista3)
        
        cafe.add(coffee: coffee2)
        cafe.add(coffee: coffee2)
        cafe.add(coffee: coffee2)
        
        cafe.startOrder()
    }


}
