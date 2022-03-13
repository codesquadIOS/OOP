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
    
    var americanoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "아메리카노"
        return label
    }()
    var cafeLatteLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "카페라떼"
        return label
    }()
    var frappuccinoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "프라푸치노"
        return label
    }()
    var americanoCountLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1"
        return label
    }()
    
    var cafeLatteCountLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1"
        return label
    }()
    
    var frappuccinoCountLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1"
        return label
    }()
    
    var resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "asdfasefasfse"
        return label
    }()
    
    private let model = Cafe()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
        americanoButton.addTarget(self, action: #selector(touchMenusButton), for: .touchUpInside)
        cafeLatteButton.addTarget(self, action: #selector(touchMenusButton), for: .touchUpInside)
        frappuccinoButton.addTarget(self, action: #selector(touchMenusButton), for: .touchUpInside)
        orderButton.addTarget(self, action: #selector(touchOrderButton), for: .touchUpInside)
        model.delegate = self
    }

    func layout() {
        let safeAreaGuide = self.view.safeAreaLayoutGuide
        self.view.addSubview(guestView)
        self.view.addSubview(orderButton)
        self.guestView.addSubview(guestName)
        self.guestView.addSubview(buyStackView)
        self.guestView.addSubview(buyStackView)
        
        
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
        let informationStack = makeStackView([coffeListStack,orderButton, resultLabel], axis: .vertical)
        view.addSubview(informationStack)
        NSLayoutConstraint.activate([
        ])
        informationStack.leftAnchor.constraint(equalTo: safeAreaGuide.leftAnchor, constant: 30).isActive = true
        informationStack.rightAnchor.constraint(equalTo: safeAreaGuide.rightAnchor, constant: -30).isActive = true
        informationStack.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor, constant: -50).isActive=true

    }
    
    @objc func touchMenusButton(_ sender: UIButton) {
        model.receiveMenu(id:sender.tag)
    }
    
    @objc func touchOrderButton() {
        model.processOrder()
    }
    
    
    private func makeStackView(_ views: [UIView], axis: NSLayoutConstraint.Axis = .horizontal) -> UIStackView {
        let stack = UIStackView(arrangedSubviews: views)
        stack.axis = axis
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }
}

extension CafeViewController: CafeDelegate {
    func cafe(didProcess order: [Beverage]) {
        let americanoCount = order.filter{$0 == .americano}.count
        let cafelatteCount = order.filter{$0 == .cafeLatte}.count
        let frappuccinoCount = order.filter{$0 == .frappuccino}.count
        var americano : String = "아메리카노 \(americanoCount)잔"
        var cafeLatte : String = "카페라떼 \(cafelatteCount)잔"
        var frappuccino : String = "프라푸치노 \(frappuccinoCount)잔"
        self.resultLabel.text = americano + cafeLatte + frappuccino
    }
}
