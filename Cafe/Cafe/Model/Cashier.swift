import Foundation

class Cashier {
    var receivedOrder: Order = Order()
    
    func receiveOrder(beverage: Beverage) {
        self.receivedOrder.appendBeverage(beverage: beverage)
    }
    
    func receiveCompletedBeverage(beverages: Order) -> Beverage {
        
    }
}
