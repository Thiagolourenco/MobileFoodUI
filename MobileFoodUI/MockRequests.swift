//
//  MockRequests.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 08/02/24.
//

import Foundation

struct MockRequests: Identifiable, Encodable {
    var id = UUID()
    var name: String
    var description: String
    var quantity: Int
    
    init(name: String, description: String, quantity: Int) {
           self.id = UUID()
           self.name = name
           self.description = description
           self.quantity = quantity
       }
}
