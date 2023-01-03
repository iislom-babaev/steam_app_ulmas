//
//  GameTableViewCell.swift
//  SteamList
//
//  Created by Macbook on 29/12/2022.
//

import UIKit

class GameTableViewCell: UITableViewCell {

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    @IBOutlet weak var cellTitle: UILabel!
    
    
    @IBOutlet weak var cellIcon: UIButton!
    
    
    
    @IBAction func iconTapAction(_ sender: UIButton) {
             if sender.imageView?.image == UIImage(systemName: "star") {
        cellIcon.setImage(UIImage(systemName: "star.fill"), for: .normal)
                 cellTitle.font = .boldSystemFont(ofSize: 17)
             } else {
        cellIcon.setImage(UIImage(systemName: "star"), for: .normal)
                 cellTitle.font = .systemFont(ofSize: 17)
             }
    }
    
}

extension GameTableViewCell {
    static let cellId = "GameTableViewCell"
}

