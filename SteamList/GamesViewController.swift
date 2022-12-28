//
//  GamesViewController.swift
//  SteamList
//
//  Created by Macbook on 27/12/2022.
//

import UIKit

class GamesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private let numberOfGames = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    


}

extension GamesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfGames
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:  indexPath)
        cell.textLabel?.text = "Game \(indexPath.row)"
        cell.textLabel?.textColor = .white
        return cell
    }
    

    
    
    
}

extension GamesViewController: UITableViewDelegate {
    
}
