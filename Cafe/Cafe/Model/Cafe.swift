import Foundation

class Cafe {
    private let rosa = Cashier()
    private let kai = Barista()
    private var completedOrder : [Beverage] = []
    
    func receiveMenu(id: Int) {
        rosa.receiveMenu(id: id)
    }
    
    func receiveOrder() {
        let order = rosa.deliverOrder()
        self.completedOrder = kai.processOrder(order: order)
    }
}
