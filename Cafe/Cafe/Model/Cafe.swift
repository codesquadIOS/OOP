//
//  Cafe.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import Foundation

class Cafe {
    private static var orderId = 0
    private let cashier = Cashier()
    private var baristas = [Barista]()
    private var currentOrder: Order?
    private var totalOrder: [Int:Order] = [:]
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.processOrders()
        }
    }
    
    ///카페에서 일할 바리스타 추가
    func add(barista: Barista) {
        baristas.append(barista)
    }
    
    ///사용자가 주문 넣은 커피 추가
    func add(coffee: Coffee) {
        if currentOrder == nil {
            Self.orderId += 1
            currentOrder = Order(orderId: Self.orderId)
        }
        currentOrder?.add(orderCoffee: coffee)
    }
    
    ///사용자가 커피를 다 고른 후 주문처리
    func startOrder() {
        guard let order = self.currentOrder,
              order.hasCoffee else {
            return
        }
        
        //캐셔일함
        cashier.working(order: order)
        
        //주문들어온 커피 분배
        order.coffees.forEach {
            if let barista = baristas.sorted(by: { $0.delayTime < $1.delayTime }).first {
                barista.add(coffee: OrderCoffee(orderId: order.orderId, coffee: $0))
            }
        }
        
        //모든 주문에 추가
        totalOrder[order.orderId] = order
        
        //새로운 주문 받기위해 nil 처리
        currentOrder = nil
    }
    
    ///커피를 만들고, 주문이 완료되었는지 검사
    ///1초마다 반복한다
    private func processOrders() {
        self.baristas.forEach {
            //바리스타 일함
            if let coffee = $0.working() {
                //커피 다 만들었으면 오더에 넣어줌
                totalOrder[coffee.orderId]?.add(complateCoffee: coffee.coffee)
            }
        }
        
        //주문이 완료되었는지 검사
        totalOrder.forEach {
            //완료확인
            if $0.value.isComplate {
                print($0.value)
                totalOrder.removeValue(forKey: $0.key)
            }
        }
    }
}
