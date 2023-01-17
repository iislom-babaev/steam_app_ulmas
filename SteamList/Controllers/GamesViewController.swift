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
    var filteredData: [Game] = []
    
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
        navigationItem.searchController = searchController
        navigationController?.hideKeyboardWhenTappedAround()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height - 55, right: 0)
        }
    }
    
    @objc private func keyboardWillHide(notification: NSNotification) {
        tableView.contentInset = .zero
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
        let cell = tableView.cellForRow(at: indexPath)  as! GameTableViewCell
        var gameObj = games[indexPath.row]
        let isfav = cell.adjustIsFavorite()
        gameObj.isFavorite = isfav
        navigateToGameDetails(tableView, indexPath, gameObj)
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
