import Foundation

struct Cashier {
    var receivedOrder: Order
    
    mutating func receiveOrder(beverage: Beverage) {
        self.receivedOrder.appendBeverage(beverage: beverage)
    }
    
    func receiveCompletedBeverage(beverages: Order) -> Beverage {
        
    }
}
