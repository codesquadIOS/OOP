import Foundation

class Cashier {
    var receivedOrder = [Int]()
    
    func receiveMenu(id: Int) {
        self.receivedOrder.append(id)
    }
    
    func deliverOrder() -> [Int] {
        return self.receivedOrder
    }
}
