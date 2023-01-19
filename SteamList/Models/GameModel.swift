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
    
    init(title: String, isFavorite: Bool) {
        self.title = title
        self.isFavorite = isFavorite
    }
}
