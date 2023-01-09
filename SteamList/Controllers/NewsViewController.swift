//
//  NewsViewController.swift
//  SteamList
//
//  Created by Macbook on 27/12/2022.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let newsList = MockData.news
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: NewsTableViewCell.cellId, bundle: nil), forCellReuseIdentifier: NewsTableViewCell.cellId)
    }
}

extension NewsViewController: UITableViewDelegate {
    
}

extension NewsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsTableViewCell.cellId, for: indexPath) as! NewsTableViewCell
        let news = newsList[indexPath.row]
        cell.configCell(with: news)
        return cell
    }
}
