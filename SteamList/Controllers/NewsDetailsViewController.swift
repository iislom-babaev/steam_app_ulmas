//
//  NewsDetailsViewController.swift
//  SteamList
//
//  Created by Macbook on 10/01/2023.
//

import UIKit

class NewsDetailsViewController: UIViewController {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var gameName: UILabel!
    @IBOutlet weak var developer: UILabel!
    @IBOutlet weak var newsTitle: UILabel!
    var news: News!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureOutlets(with: news)
    }
    
    func configureOutlets(with news: News) {
        title = news.title
        date.text = news.date
        gameName.text = news.gameName
        developer.text = news.developer
        newsTitle.text = news.title
    }
}

extension NewsDetailsViewController {
    static let identifier = "NewsDetailsViewController"
}
