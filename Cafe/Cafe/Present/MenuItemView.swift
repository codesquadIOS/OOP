//
//  MenuItemView.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/13.
//

import Foundation
import UIKit

class MenuItemView: UIView {
    let name: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let price: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let bottomStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    let plusButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+", for: .normal)
        return button
    }()
    
    let minusButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("-", for: .normal)
        return button
    }()
    
    let count: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layout()
    }
    
    private func layout() {
        self.addSubview(name)
        self.addSubview(bottomStackView)
        self.addSubview(price)
        
        bottomStackView.addArrangedSubview(minusButton)
        bottomStackView.addArrangedSubview(count)
        bottomStackView.addArrangedSubview(plusButton)
        
        name.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        name.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        name.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        name.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        price.topAnchor.constraint(equalTo: name.bottomAnchor).isActive = true
        price.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        price.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        price.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        bottomStackView.topAnchor.constraint(equalTo: price.bottomAnchor).isActive = true
        bottomStackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        bottomStackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        minusButton.widthAnchor.constraint(equalToConstant: 45).isActive = true
        plusButton.widthAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    func bind(handler: @escaping (Int) -> Void) {
        plusButton.addAction(UIAction{ _ in
            handler(1)
        }, for: .touchUpInside)
        
        minusButton.addAction(UIAction{ _ in
            handler(-1)
        }, for: .touchUpInside)
    }
    
    func update(menu: Menu) {
        name.text = menu.item.name
        price.text = "\(menu.price)"
    }
    
    func update(count: Int) {
        self.count.text = "\(count)"
    }
}
