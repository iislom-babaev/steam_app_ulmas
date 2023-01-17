//
//  GamesViewController.swift
//  SteamList
//
//  Created by Macbook on 27/12/2022.
//

import UIKit

class GamesViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    private let games = MockData.games
    var searchController: UISearchController!
    var filteredData = [Game]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        configureTableView()
        configureSearchController()
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: GameTableViewCell.cellId, bundle: nil), forCellReuseIdentifier: GameTableViewCell.cellId)
    }
    
    private func configureSearchController() {
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.searchBar.sizeToFit()
        definesPresentationContext = true
        navigationItem.searchController = searchController
    }
}

extension GamesViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filteredData.removeAll()
        if let searchText = searchController.searchBar.text {
            for game in games {
                if game.title.lowercased().contains(searchText.lowercased()) {
                    filteredData.append(game)
                }
            }
            tableView.reloadData()
        }
    }
}

extension GamesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.isEmpty ? games.count : filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GameTableViewCell.cellId, for:  indexPath) as! GameTableViewCell
        let game = filteredData.isEmpty ? games[indexPath.row] : filteredData[indexPath.row]
        cell.configureCell(with: game)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let game = adjustIsFavorite(tableView, indexPath)
        navigateToGameDetails(tableView, indexPath, game)
    }
    
    func adjustIsFavorite(_ tableView: UITableView,_ indexPath: IndexPath) -> Game {
        let cell = tableView.cellForRow(at: indexPath)  as! GameTableViewCell
        var gameObj = games[indexPath.row]
        if cell.cellIcon.imageView?.image == UIImage(systemName: "star") {
            gameObj.isFavorite = false
        } else {
            gameObj.isFavorite = true
        }
        
        return gameObj
    }
    
    func navigateToGameDetails(_ tableView: UITableView,  _ indexPath: IndexPath,_ game: Game) {
        let storyboard = UIStoryboard(name: "GameDetails", bundle: nil)
        guard let gameDetailsViewController = storyboard.instantiateViewController(withIdentifier: "GameDetailsViewController") as? GameDetailsViewController else {
            assertionFailure("View controller with `GameDetailsViewController` identifier could not be instantiated from storyboard")
            return
        }
        gameDetailsViewController.game = game
        navigationController?.pushViewController(gameDetailsViewController, animated: true)
    }
}

extension GamesViewController: UITableViewDelegate {
}
