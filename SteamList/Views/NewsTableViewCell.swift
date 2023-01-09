//
//  NewsTableViewCell.swift
//  SteamList
//
//  Created by Macbook on 06/01/2023.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var developer: UILabel!
    @IBOutlet weak var gameName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}

extension NewsTableViewCell {
    static let cellId = "NewsTableViewCell"
}
