//
//  NewsModel.swift
//  SteamList
//
//  Created by Macbook on 09/01/2023.
//

import Foundation

struct News {
    let title: String
    let gameName: String
    let developer: String
    let date: String
    
    init(title: String, gameName: String, developer: String, date: String) {
        self.title = title
        self.gameName = gameName
        self.developer = developer
        self.date = date
    }
}
