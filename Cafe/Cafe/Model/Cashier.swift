import Foundation

class Cashier {
    var receivedOrder: Order = Order()
    
    func receiveOrder(beverage: Beverage) -> Order {
        self.receivedOrder.appendBeverage(beverage: beverage)
        
        return receivedOrder
    }
    
    func receiveCompletedBeverage(beverages: Order) -> [Beverage] {
        return [Beverage.coffee]
    }
}
