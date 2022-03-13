import Foundation

class Cashier {
    var receivedOrder = [Int]()
    
    func receiveMenu(id: Int) {
        self.receivedOrder.append(id)
    }
    
    func receiveCompletedBeverage(beverages: Order) -> [Beverage] {
        return [Beverage.coffee]
    }
    
    func deliverOrder() -> [Int] {
        return self.receivedOrder
    }
}
