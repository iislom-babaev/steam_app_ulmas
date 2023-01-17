//
//  Game.swift
//  SteamList
//
//  Created by Macbook on 30/12/2022.
//

import Foundation

class Game {
    let title: String
    var isFavorite: Bool
    let price: Double
    let droppedPrice: Double
    
    init(title: String, isFavorite: Bool, price: Double, droppedPrice: Double) {
        self.title = title
        self.isFavorite = isFavorite
        self.price = price
        self.droppedPrice = droppedPrice
    }
}
