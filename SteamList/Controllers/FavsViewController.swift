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
        configureLeftBarButton()
        configureRightBarButton()
    }
    
    
    private func configureRightBarButton() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem?.tintColor = .white
    }
    
    private func configureLeftBarButton() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sort", style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem?.tintColor = .white
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
        return MockData.favorites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoritesTableViewCell.cellId, for: indexPath) as! FavoritesTableViewCell
        let favorite = MockData.favorites[indexPath.row]
        cell.title.text = favorite.title
        cell.price.text = favorite.price == 0 ? "Free" : "$\(favorite.price)"
        
        if favorite.droppedPrice != 0 {
            cell.price.textColor = .green
            cell.price.text!  +=  " (-$\(favorite.droppedPrice))"
        }
        return cell
    }
    
    
}
