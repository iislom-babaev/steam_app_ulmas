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
        selectionStyle = .none
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension FavoritesTableViewCell {
    static let cellId = "FavoritesTableViewCell"
}
