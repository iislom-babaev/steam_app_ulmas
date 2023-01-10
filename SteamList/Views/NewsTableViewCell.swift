//
//  NewsTableViewCell.swift
//  SteamList
//
//  Created by Macbook on 06/01/2023.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var gameName: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var developer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configCell(with news: News) {
        date.text = news.date
        title.text = news.title
        developer.text = news.developer
        gameName.text = news.gameName
    }
}

extension NewsTableViewCell {
    static let cellId = "NewsTableViewCell"
}
