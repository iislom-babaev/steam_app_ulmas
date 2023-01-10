//
//  FavsViewController.swift
//  SteamList
//
//  Created by Macbook on 27/12/2022.
//

import UIKit

final class FavoritesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private let games = MockData.games
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureLeftBarButton()
        configureRightBarButton()
    }
    
    private func configureRightBarButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
    
    private func configureLeftBarButton() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sort", style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem?.tintColor = .white
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: FavoritesTableViewCell.cellId, bundle: nil), forCellReuseIdentifier: FavoritesTableViewCell.cellId)
    }
}

extension FavoritesViewController: UITableViewDelegate {
}

extension FavoritesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.filter {game in game.isFavorite}.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoritesTableViewCell.cellId, for: indexPath) as! FavoritesTableViewCell
        let favorite = games.filter{game in game.isFavorite}[indexPath.row]
        cell.configureCell(with: favorite)
        
        return cell
    }
}