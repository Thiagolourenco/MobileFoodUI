//
//  Utils.swift
//  MobileFoodUI
//
//  Created by Thiago Lourenço on 02/11/23.
//

import Foundation

struct Utils {

    struct RestaurantsFake {
        var restaurants: [Restaurant] = [
            Restaurant(name: "Acaiu", image: "RestaurantOne"),
            Restaurant(name: "Canto Verde", image: "RestaurantTwo"),
            Restaurant(name: "Pé de Serra", image: "RestaurantThree"),
            Restaurant(name: "Acaiu", image: "RestaurantFour"),
        ]
    }
    
    struct DishsFake {
        var dishs: [Dish] = [
            Dish(name: "Prato 01", value: "20.0", type: "Teste", image: "DishOne" ,stars: "4.0"),
            Dish(name: "Prato 02", value: "50.0", type: "Teste02", image: "DishTwo" ,stars: "4.0"),
            Dish(name: "Prato 03", value: "40.0", type: "Teste03", image: "DishThree" ,stars: "3.0"),
            Dish(name: "Prato 04", value: "70.0", type: "Teste03", image: "DishOne" ,stars: "4.0")

        ]
    }
    
    struct ListSettingsArray {
        var list: [ListSettings] = [
            ListSettings(name: "Edit Profile"),
            ListSettings(name: "Settings"),
            ListSettings(name: "Suporte"),
            ListSettings(name: "About the app")
        ]
    }
}

