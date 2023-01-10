//
//  FavoriteModel.swift
//  SteamList
//
//  Created by Macbook on 05/01/2023.
//

import Foundation

class FavoriteModel {
    let title: String
    let price: Double
    let droppedPrice: Double
    
    init(title: String, price: Double, droppedPrice: Double) {
        self.title = title
        self.price = price
        self.droppedPrice = droppedPrice
    }
}
