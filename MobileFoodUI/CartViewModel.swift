//
//  CartViewModel.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 08/02/24.
//

import Foundation


class MockRequestsReturn: ObservableObject {
    @Published var listRequests: [MockRequests] = [
        MockRequests(name: "Burger 00", description: "Burguer Bom Demais", quantity: 0),
        MockRequests( name: "Burger 01", description: "Burguer Bom Demais", quantity: 0),
        MockRequests(name: "Burger 02", description: "Burguer Bom Demais", quantity: 0),
    ]
    
    func updateUI() {
        objectWillChange.send()
    }
    
    func incrementValue(index: Int) {
        listRequests[index].quantity += 1
    }
    
    func decrementValue(index: Int) {
        listRequests[index].quantity = max(0, listRequests[index].quantity - 1)
    }

}
