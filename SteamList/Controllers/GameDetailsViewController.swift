//
//  GameDetailsViewController.swift
//  SteamList
//
//  Created by Macbook on 03/01/2023.
//

import UIKit

class GameDetailsViewController: UIViewController {
 
    private let game: Game
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    init?(coder: NSCoder, game: Game) {
        self.game = game
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
