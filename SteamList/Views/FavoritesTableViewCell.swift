//
//  FavoritesTableViewCell.swift
//  SteamList
//
//  Created by Macbook on 05/01/2023.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(with favGame: Game) {
        self.title.text = favGame.title
        self.price.text = favGame.price == 0 ? "Free" : "$\(favGame.price)"
        if favGame.droppedPrice != 0 {
            self.price.textColor = .green
            self.price.text!  +=  " (-$\(favGame.droppedPrice))"
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension FavoritesTableViewCell {
    static let cellId = "FavoritesTableViewCell"
}
