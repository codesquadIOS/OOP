import Foundation

protocol CafeDelegate {
    func cafe(didProcess order: [Beverage])
}

class Cafe {
    private let rosa = Cashier()
    private let kai = Barista()
    private var completedOrder : [Beverage] = []
    
    var delegate: CafeDelegate?
    
    func receiveMenu(id: Int) {
        rosa.receiveMenu(id: id)
    }
    
    func processOrder() {
        let order = rosa.deliverOrder()
        delegate?.cafe(didProcess: kai.processOrder(order: order))
    }
}
