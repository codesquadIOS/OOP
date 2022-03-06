//
//  Cafe.swift
//  Cafe
//
//  Created by seongha shin on 2022/03/06.
//

import Foundation

class Cafe {
    private var orders: [Coffee] = []
    private let cashier = Cashier()
    private var baristas = [Barista]()
    
    func add(barista: Barista) {
        baristas.append(barista)
    }
    
    func add(coffee: Coffee) {
        orders.append(coffee)
    }
    
    func order() {
        cashier.working(orders: orders)
        
        orders.forEach {
            if let barista = baristas.sorted(by: { $0.delayTime < $1.delayTime }).first {
                barista.add(coffee: $0)
            }
        }
        
        var complateCoffee = [Coffee]()
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            self.baristas.forEach {
                if let coffee = $0.working() {
                    complateCoffee.append(coffee)
                }
            }
            
            if complateCoffee.count == self.orders.count {
                print("주문완료: \(complateCoffee)")
                timer.invalidate()
            }
        }
    }
}
