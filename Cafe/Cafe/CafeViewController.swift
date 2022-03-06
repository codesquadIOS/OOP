//
//  ViewController.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import UIKit

class CafeViewController: UIViewController {

    let buyStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.backgroundColor = .clear
        stackView.spacing = 5
        return stackView
    }()
    
    let americanoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" 아메리카노 ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray3
        return button
    }()
    
    let cafeLatteButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" 카페라떼 ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray3
        return button
    }()
    
    let FrappuccinoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" 프라프치노 ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray3
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }

    func layout() {
        let safeAreaGuide = self.view.safeAreaLayoutGuide
        self.view.addSubview(buyStackView)
        buyStackView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor, constant: 10).isActive = true
        buyStackView.leftAnchor.constraint(equalTo: safeAreaGuide.leftAnchor, constant: 10).isActive = true
        buyStackView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        buyStackView.addArrangedSubview(americanoButton)
        buyStackView.addArrangedSubview(cafeLatteButton)
        buyStackView.addArrangedSubview(FrappuccinoButton)
    }

}

