//
//  MockData.swift
//  SteamList
//
//  Created by Macbook on 18/01/2023.
//

import Foundation

struct MockData {
    static let games = [
        Game(title: "Dota 2", isFavorite: true, price: 9.99, discount: 0),
        Game(title: "Counter Strike 1.6", isFavorite: false, price: 3.32, discount: 0),
        Game(title: "CS: GO", isFavorite: false, price: 2.32, discount: 0),
        Game(title: "Civilization 2", isFavorite: false, price: 2.62, discount: 0),
        Game(title: "Dota 1", isFavorite: true, price: 0, discount: 0),
        Game(title: "Need For Speed", isFavorite: true, price: 5.32, discount: 20),
        Game(title: "GTA Vice City", isFavorite: false, price: 3.33, discount: 0),
        Game(title: "GTA Vice City", isFavorite: false, price: 4.20, discount: 0),
        Game(title: "GTA Vice City", isFavorite: false, price: 4.20, discount: 0),
        Game(title: "GTA Vice City", isFavorite: false, price: 3.69, discount: 0),
        Game(title: "GTA Vice City", isFavorite: true, price: 2.32, discount: 10),
        Game(title: "GTA Vice City", isFavorite: false, price: 4.32, discount: 0),
        Game(title: "GTA Vice City", isFavorite: false, price: 8.32, discount: 0),
        Game(title: "GTA Vice City", isFavorite: false, price: 9.89, discount: 0),
        Game(title: "GTA Vice City", isFavorite: false, price: 5.32, discount: 0),
        Game(title: "GTA Vice City", isFavorite: false, price: 8.32, discount: 0)
    ]
    
    static func favoriteGames() -> [Game] {
        return self.games.filter({game in game.isFavorite})
    }
}
