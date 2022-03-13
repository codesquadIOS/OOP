//
//  ViewController.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import UIKit

class CafeViewController: UIViewController {

    let guestView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray6
        return view
    }()
    
    let guestName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.text = "손님"
        return label
    }()
    
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
        button.tag = 1
        return button
    }()
    
    let cafeLatteButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" 카페라떼 ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray3
        button.tag = 2
        return button
    }()
    
    let frappuccinoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" 프라프치노 ", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemGray3
        button.tag = 3
        return button
    }()
    
    let orderButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(" 주문하기 ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    var americanoLabel: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "아메리카노"
        return label
    }
    var cafeLatteLabel: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "카페라떼"
        return label
    }
    var frappuccinoLabel: UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "프라푸치노"
        return label
    }
    var americanoCountLabel : UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        return label
    }
    
    var cafeLatteCountLabel : UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        return label
    }
    
    var frappuccinoCountLabel : UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        return label
    }
    
    private let model = Cafe()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        americanoButton.addTarget(self, action: #selector(touchMenusButton), for: .touchUpInside)
        cafeLatteButton.addTarget(self, action: #selector(touchMenusButton), for: .touchUpInside)
        frappuccinoButton.addTarget(self, action: #selector(touchMenusButton), for: .touchUpInside)
    }

    func layout() {
        let safeAreaGuide = self.view.safeAreaLayoutGuide
        self.view.addSubview(guestView)
        self.view.addSubview(orderButton)
        self.guestView.addSubview(guestName)
        self.guestView.addSubview(buyStackView)
        self.guestView.addSubview(buyStackView)
        self.view.addSubview(americanoLabel)
        self.view.addSubview(americanoCountLabel)
        self.view.addSubview(cafeLatteLabel)
        self.view.addSubview(cafeLatteCountLabel)
        self.view.addSubview(frappuccinoLabel)
        self.view.addSubview(frappuccinoCountLabel)
        
        
        guestView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor, constant: 10).isActive = true
        guestView.leftAnchor.constraint(equalTo: safeAreaGuide.leftAnchor, constant: 10).isActive = true
        guestView.rightAnchor.constraint(equalTo: buyStackView.rightAnchor, constant: 10).isActive = true
        guestView.bottomAnchor.constraint(equalTo: buyStackView.bottomAnchor, constant: 10).isActive = true
        
        guestName.topAnchor.constraint(equalTo: guestView.topAnchor, constant: 10).isActive = true
        guestName.leftAnchor.constraint(equalTo: guestView.leftAnchor, constant: 10).isActive = true
        
        buyStackView.topAnchor.constraint(equalTo: guestName.bottomAnchor, constant: 10).isActive = true
        buyStackView.leftAnchor.constraint(equalTo: guestView.leftAnchor, constant: 10).isActive = true
        buyStackView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        buyStackView.addArrangedSubview(americanoButton)
        buyStackView.addArrangedSubview(cafeLatteButton)
        buyStackView.addArrangedSubview(frappuccinoButton)
        
        //
        let americanoStack = makeStackView([americanoLabel, americanoCountLabel])
        let cafeLatteStack = makeStackView([cafeLatteLabel, cafeLatteCountLabel])
        let frappuccinoLabelStack = makeStackView([frappuccinoLabel, frappuccinoCountLabel])
        let coffeListStack = makeStackView([americanoStack, cafeLatteStack, frappuccinoLabelStack], axis: .vertical)
        let informationStack = makeStackView([coffeListStack,orderButton], axis: .vertical)
        view.addSubview(informationStack)
        NSLayoutConstraint.activate([
        ])
        
        
        orderButton.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor, constant: 10).isActive = true
//        orderButton.leftAnchor.constraint(equalTo: safeAreaGuide.leftAnchor, constant: 20).isActive = true
//        orderButton.rightAnchor.constraint(equalTo: safeAreaGuide.rightAnchor, constant: -20).isActive = true
//
//        americanoLabel.topAnchor.constraint(equalTo: guestView.bottomAnchor, constant: 10).isActive = true
//        americanoLabel.leftAnchor.constraint(equalTo: guestView.leftAnchor).isActive = true
//        americanoLabel.rightAnchor.constraint(equalTo: guestView.rightAnchor).isActive = true
//        cafeLatteLabel.topAnchor.constraint(equalTo: americanoLabel.bottomAnchor, constant: 10).isActive = true
//        cafeLatteLabel.leftAnchor.constraint(equalTo: americanoLabel.leftAnchor).isActive = true
//        cafeLatteLabel.rightAnchor.constraint(equalTo: americanoLabel.rightAnchor).isActive = true
//        frappuccinoLabel.topAnchor.constraint(equalTo: cafeLatteLabel.bottomAnchor, constant: 10).isActive = true
//        frappuccinoLabel.leftAnchor.constraint(equalTo: cafeLatteLabel.leftAnchor).isActive = true
//        frappuccinoLabel.rightAnchor.constraint(equalTo: cafeLatteLabel.rightAnchor).isActive = true
    }
    
    @objc func touchMenusButton(_ sender: UIButton) {
        model.receiveMenu(id:sender.tag)
    }
    
    private func makeStackView(_ views: [UIView], axis: NSLayoutConstraint.Axis = .horizontal) -> UIStackView {
        let stack = UIStackView(arrangedSubviews: views)
        stack.axis = axis
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }
}

