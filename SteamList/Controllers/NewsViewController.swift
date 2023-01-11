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
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let news = newsList[indexPath.row]
        navigateToNewsDetails(with: news)
    }
    
    func navigateToNewsDetails(with news: News) {
        guard let controller = storyboard?.instantiateViewController(withIdentifier: NewsDetailsViewController.identifier) as? NewsDetailsViewController else {
            assertionFailure("\(NewsDetailsViewController.identifier) cannot be instantiated")
            return
        }
        controller.news = news
        navigationController?.pushViewController(controller, animated: true)
    }
}
