//
//  Game.swift
//  SteamList
//
//  Created by Macbook on 30/12/2022.
//

import Foundation

struct Game {
    let title: String
    var isFavorite: Bool
    
    init(title: String, isFavorite: Bool) {
        self.title = title
        self.isFavorite = isFavorite
    }
}
