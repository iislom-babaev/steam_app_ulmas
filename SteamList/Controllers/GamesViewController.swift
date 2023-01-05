//
//  GamesViewController.swift
//  SteamList
//
//  Created by Macbook on 27/12/2022.
//

import UIKit

class GamesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    

        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        configureTableView()
    }
    
    
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: GameTableViewCell.cellId, bundle: nil), forCellReuseIdentifier: GameTableViewCell.cellId)
    }
}

extension GamesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MockData.games.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GameTableViewCell.cellId, for:  indexPath) as! GameTableViewCell
        let game = MockData.games[indexPath.row]
        cell.cellTitle.text = "\(game.title)"
        if game.isFavorite {
            cell.cellIcon.imageView?.image = UIImage(systemName: "star.fill")
        } else {
            cell.cellIcon.imageView?.image = UIImage(systemName: "star")
        }
        
        return cell
    }
    
    
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         navigate(tableView, indexPath)
    }
    
    func navigate(_ tableView: UITableView,  _ indexPath: IndexPath) {
         var gameObj = MockData.games[indexPath.row]
             let cell = tableView.cellForRow(at: indexPath)  as! GameTableViewCell
             if cell.cellIcon.imageView?.image == UIImage(systemName: "star") {
                 gameObj.isFavorite = false
             } else {
                 gameObj.isFavorite = true
             }
         guard let gameDetailsViewController = self.storyboard?.instantiateViewController(identifier: "GameDetailsViewController",
        creator: {coder -> GameDetailsViewController? in
              GameDetailsViewController(coder: coder, game: gameObj)
         }) else {return}
        self.navigationController?.pushViewController(gameDetailsViewController, animated: true)
    }
    
}

extension GamesViewController: UITableViewDelegate {
}
