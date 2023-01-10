//
//  MockData.swift
//  SteamList
//
//  Created by Macbook on 30/12/2022.
//

import Foundation

class MockData {
    static var games: [Game] = [
        Game(title: "Dota 2", isFavorite: true, price: 9.99, droppedPrice: 0),
        Game(title: "League of Legends", isFavorite: true, price: 0, droppedPrice: 0),
        Game(title: "GTA Vice City", isFavorite: true, price: 0, droppedPrice: 0),
        Game(title: "Need For Speed", isFavorite: false, price: 9.99, droppedPrice: 0),
        Game(title: "Counter Strkie 1.6", isFavorite: true, price: 2.33, droppedPrice: 0.52),
        Game(title: "Counter Strkie 1.6", isFavorite: true, price: 9.99, droppedPrice: 0),
        Game(title: "Counter Strkie 1.6", isFavorite: false, price: 9.99, droppedPrice: 0),
        Game(title: "Counter Strkie 1.6", isFavorite: false, price: 9.99, droppedPrice: 0),
        Game(title: "Counter Strkie 1.6", isFavorite: false, price: 9.99, droppedPrice: 0),
        Game(title: "Counter Strkie 1.6", isFavorite: false, price: 9.99, droppedPrice: 0)
    ]
    
    static let news: [News] = [
    News(title: "Best PC Games of 2022", gameName: "Dota 2", developer: "Valve", date: "1 Nov, 2022"),
    News(title: "Tournament Winner!", gameName: "CS: GO", developer: "Gearbox Crew", date: "12 March, 2022"),
    News(title: "New Antimage Strategy", gameName: "Dota 2", developer: "Valve", date: "1 Dec, 2022"),
    News(title: "Don't Miss Our Halloween Sale!", gameName: "Civilization 4", developer: "Software Publishers", date: "29 Oct, 2020"),
    ]
}
