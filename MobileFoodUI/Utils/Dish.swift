//
//  Dish.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 02/11/23.
//

import Foundation


struct Dish: Identifiable {
    var id = UUID()
    var name: String
    var value: String
    var type: String
    var image: String
    var stars: String
}
