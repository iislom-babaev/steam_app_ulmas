//
//  MockData.swift
//  SteamList
//
//  Created by Macbook on 30/12/2022.
//

import Foundation

class MockData {
    static var games: [Game] = [
        Game(title: "Dota 2", isFavorite: false),
        Game(title: "League of Legends", isFavorite: false),
        Game(title: "GTA Vice City", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Counter Strkie 1.6", isFavorite: false),
        Game(title: "Need For Speed", isFavorite: false)
    ]
    
    static var favorites: [FavoriteModel] = [
        FavoriteModel(title: "CS: GO", price: 9.99, droppedPrice: 0),
        FavoriteModel(title: "Dota 2", price: 0, droppedPrice: 0),
        FavoriteModel(title: "Counter Strike 1.6", price: 0, droppedPrice: 0),
        FavoriteModel(title: "Need For Speed", price: 2.99, droppedPrice: 1.02)
    ]
}
