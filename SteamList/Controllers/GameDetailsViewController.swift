//
//  GameDetailsViewController.swift
//  SteamList
//
//  Created by Macbook on 03/01/2023.
//

import UIKit

class GameDetailsViewController: UIViewController {
 
    var game: Game!
        
    @IBOutlet weak var favIcon: UIImageView!
    @IBOutlet weak var gameName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configOutlets()
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
