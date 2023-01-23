//
//  GameModel.swift
//  SteamList
//
//  Created by Macbook on 18/01/2023.
//

import UIKit

struct Game {
    let title: String
    let isFavorite: Bool
    let price: Double
    let discount: Int
    
    init(title: String, isFavorite: Bool, price: Double, discount: Int) {
        self.title = title
        self.isFavorite = isFavorite
        self.price = price
        self.discount = discount
    }
}
