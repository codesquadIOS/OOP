//
//  Cafe.swift
//  Cafe
//
//  Created by 김상혁 on 2022/03/06.
//

import Foundation

class Cafe {
    
    private var customer: Customer
    private var customerList: [Customer]
    
    private var cashier: Cashier
    private var manager: Manager
    private var barista: Barista
    
    init(customer :Customer) {
        self.customer = customer
        self.cashier = Cashier()
        self.manager = Manager()
        self.barista = Barista()
    }
    
    
    
    
    
    
    
}
