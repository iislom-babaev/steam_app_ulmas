//
//  FavsViewController.swift
//  SteamList
//
//  Created by Macbook on 27/12/2022.
//

import UIKit

class FavsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: FavoritesTableViewCell.cellId, bundle: nil), forCellReuseIdentifier: FavoritesTableViewCell.cellId)
    }

}

extension FavsViewController: UITableViewDelegate {
    
}

extension FavsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoritesTableViewCell.cellId, for: indexPath)
        return cell
    }
    
    
}
