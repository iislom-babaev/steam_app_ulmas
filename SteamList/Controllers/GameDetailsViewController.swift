//
//  GameDetailsViewController.swift
//  SteamList
//
//  Created by Macbook on 03/01/2023.
//

import UIKit

class GameDetailsViewController: UIViewController {
 
    private let game: Game
    
    @IBOutlet weak var favIcon: UIImageView!
    @IBOutlet weak var gameName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configOutlets()
    }
    
    init?(coder: NSCoder, game: Game) {
        self.game = game
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func configOutlets() {
        self.title = game.title
        gameName.text = game.title
        if game.isFavorite {
            favIcon.image = UIImage(systemName: "star.fill")
        } else {
            favIcon.image = UIImage(systemName: "star")
        }
    }
}
