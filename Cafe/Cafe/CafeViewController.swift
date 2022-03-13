//
//  ViewController.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import UIKit

class CafeViewController: UIViewController {
    var menuState = MenuState()
    
    @IBOutlet weak var americanoCountLabel: UILabel!
    
    @IBOutlet weak var cafelatteCountLabel: UILabel!
    
    @IBOutlet weak var amountSumLabel: UILabel!
    
    private var americanoCount: Int = 0
    private var cafelatteCount: Int = 0
    
    @IBAction func americanoPlusButtonTouched(_ sender: Any) {
        menuState.plusAmericanoCount()
    }

    @IBAction func americanoMinusButtonTouched(_ sender: Any) {
        menuState.minusAmericanoCount()
    }
    
    @IBAction func cafelattePlusButtonTouched(_ sender: Any) {
        menuState.plusCafelatteCount()
    }
    
    @IBAction func cafelateMinusButtonTouched(_ sender: Any) {
        menuState.minusCafelatteCount()
    }
    
    
    @IBAction func placeOrerButtonTouched(_ sender: Any) {
        menuState.calculateAmount()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuState.delegate = self //"menustate의 심부름꾼은 내가 할게"
    }
}

extension CafeViewController: MenuStateDelegate {
    func totalPriceDidCalculate(amount: Int) {
        amountSumLabel.text = "\(amount)"
    }
    
    func cafelatteCountDidChange(count: Int) {
        cafelatteCountLabel.text = "\(count)"
    }
    
    func americanoCountDidChange(count: Int) {
        americanoCountLabel.text = "\(count)"
    }
}
