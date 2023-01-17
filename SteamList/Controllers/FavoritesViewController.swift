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
    var searchController: UISearchController!
    var filteredData: [Game] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configureLeftBarButton()
        configureRightBarButton()
        configureSearchController()
    }
    
    private func configureRightBarButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem?.tintColor = .white
    }
    
    private func configureSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        navigationController?.hideKeyboardWhenTappedAround()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
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
    
    @objc private func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height + tableView.rowHeight, right: 0)
        }
    }
    
    @objc private func keyboardWillHide(notification: NSNotification) {
        tableView.contentInset = .zero
    }
}

extension FavoritesViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filteredData.removeAll()
        if let searchText = searchController.searchBar.text {
            let favoriteGames = games.filter {game in game.isFavorite}
            for game in favoriteGames {
                if game.title.lowercased().contains(searchText.lowercased()) {
                    filteredData.append(game)
                }
            }
            tableView.reloadData()
        }
    }
}

extension FavoritesViewController: UITableViewDelegate {
}

extension FavoritesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.isEmpty ? games.filter {game in game.isFavorite}.count : filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoritesTableViewCell.cellId, for: indexPath) as! FavoritesTableViewCell
        let favorite = filteredData.isEmpty ? games.filter{game in game.isFavorite}[indexPath.row] : filteredData[indexPath.row]
        cell.configureCell(with: favorite)
        
        return cell
    }
}
