//
//  MockData.swift
//  SteamList
//
//  Created by Macbook on 18/01/2023.
//

import Foundation

struct MockData {
    static let games = [
    Game(title: "Dota 2", isFavorite: true),
    Game(title: "Counter Strike 1.6", isFavorite: false),
    Game(title: "CS: GO", isFavorite: false),
    Game(title: "Civilization 2", isFavorite: false),
    Game(title: "Dota 1", isFavorite: true),
    Game(title: "Need For Speed", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false)
    ]
    
    static let news: [News] = [
        News(title: "Best PC Games of 2022", gameName: "Dota 2", developer: "Valve", date: "1 Nov, 2022"),
        News(title: "Tournament Winner!", gameName: "CS: GO", developer: "Gearbox Crew", date: "12 March, 2022"),
        News(title: "New Antimage Strategy", gameName: "Dota 2", developer: "Valve", date: "1 Dec, 2022"),
        News(title: "Don't Miss Our Halloween Sale!", gameName: "Civilization 4", developer: "Software Publishers", date: "29 Oct, 2020"),
    ]
}
