import Foundation

struct Cafe {
    private let rosa = Cashier()
    private let kai = Barista()
    
    func receiveMenu(id: Int) {
        rosa.receiveMenu(id: id)
    }
    
    func receiveOrder() {
        rosa.deliverOrder()
    }
}
