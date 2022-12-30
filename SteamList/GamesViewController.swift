//
//  GamesViewController.swift
//  SteamList
//
//  Created by Macbook on 27/12/2022.
//

import UIKit

class GamesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cellId = "GameTableViewCell"
    private var games: [Game] = [
    Game(title: "Dota 2", isFavorite: false),
    Game(title: "League of Legends", isFavorite: false),
    Game(title: "GTA Vice City", isFavorite: false),
    Game(title: "Counter Strkie 1.6", isFavorite: false),
    Game(title: "Need For Speed", isFavorite: false)
    ]
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: cellId, bundle: nil), forCellReuseIdentifier: cellId)
    }
    


}

extension GamesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for:  indexPath) as! GameTableViewCell
        let game = games[indexPath.row]
        cell.cellTitle.text = "\(game.title)"
        if game.isFavorite {
            cell.cellIcon.imageView?.image = UIImage(systemName: "star.fill")
        } else {
            cell.cellIcon.imageView?.image = UIImage(systemName: "star")
        }
        
        return cell
    }
    
    
}

extension GamesViewController: UITableViewDelegate {
    
}


struct Game {
    let title: String
    var isFavorite: Bool
    
    init(title: String, isFavorite: Bool) {
        self.title = title
        self.isFavorite = isFavorite
    }
}
