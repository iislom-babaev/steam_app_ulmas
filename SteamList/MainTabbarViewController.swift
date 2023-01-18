//
//  ViewController.swift
//  SteamList
//
//  Created by Macbook on 27/12/2022.
//

import UIKit

final class MainTabbarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabbar()
        applyBackgroundGradient()
    }
    
    func configureTabbar() {
        let gamesNavController = UINavigationController(rootViewController: GamesViewController())
        let favoritesNavController = UINavigationController(rootViewController: FavoritesViewController())
        let newsNavController = UINavigationController(rootViewController: NewsViewController())
        
        gamesNavController.tabBarItem.image = UIImage(systemName: "list.star")
        favoritesNavController.tabBarItem.image = UIImage(systemName: "star.fill")
        newsNavController.tabBarItem.image = UIImage(systemName: "book.fill")
        
        gamesNavController.title = "Games"
        favoritesNavController.title = "Favs"
        newsNavController.title = "News"
        
        tabBar.backgroundColor = .systemGray4
        
        setViewControllers([gamesNavController, favoritesNavController, newsNavController], animated: true)
    }
    
}

