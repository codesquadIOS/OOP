//
//  ViewController.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import UIKit

class ViewController: UIViewController {
    
    let menuStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let totalPrice: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "주문금액: 0"
        return label
    }()
    
    private let cafe = Cafe()
    private var menu: [Menu.Item: MenuItemView] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        layout()
        
        cafe.makeMenu()
    }

    private func bind() {
        cafe.delegate = self
    }
    
    private func layout() {
        self.view.addSubview(menuStackView)
        self.view.addSubview(totalPrice)
        
        let safeAreaGuide = self.view.safeAreaLayoutGuide
        menuStackView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor).isActive = true
        menuStackView.leftAnchor.constraint(equalTo: safeAreaGuide.leftAnchor, constant: 5).isActive = true
        menuStackView.rightAnchor.constraint(equalTo: safeAreaGuide.rightAnchor, constant: -5).isActive = true
        menuStackView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        totalPrice.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor).isActive = true
        totalPrice.leftAnchor.constraint(equalTo: safeAreaGuide.leftAnchor).isActive = true
        totalPrice.rightAnchor.constraint(equalTo: safeAreaGuide.rightAnchor).isActive = true
        totalPrice.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

extension ViewController: CafeDelegate {
    func update(totalPrice: Int) {
        self.totalPrice.text = "주문금액: \(totalPrice)"
    }
    
    func update(item: Menu.Item, count: Int) {
        self.menu[item]?.update(count: count)
    }
    
    func didMakeMenus(menu: [Menu]) {
        menu.forEach { menu in
            let menuItemView = MenuItemView()
            menuStackView.addArrangedSubview(menuItemView)
            menuItemView.translatesAutoresizingMaskIntoConstraints = false
            menuItemView.layer.borderColor = UIColor.black.cgColor
            menuItemView.layer.borderWidth = 1
            menuItemView.layer.cornerRadius = 5
            menuItemView.backgroundColor = .systemGray2
            menuItemView.bind { addValue in
                self.cafe.addMenuCount(item: menu.item, value: addValue)
            }
            menuItemView.update(menu: menu)
            self.menu[menu.item] = menuItemView
        }
    }
}
