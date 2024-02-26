//
//  Tab.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 22/02/24.
//

import Foundation

enum Tab: String, CaseIterable {
    case house = "House"
    case cart = "Cart"
    case gear = "Settings"
    case person = "Person"
    
    var symbol: String {
        switch self {
        case .house:
            "house"
        case .cart:
            "cart"
        case .gear:
            "gearshape"
        case .person:
            "person"
        }
    }
}
