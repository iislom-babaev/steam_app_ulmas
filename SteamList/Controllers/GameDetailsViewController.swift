//
//  GameDetailsViewController.swift
//  SteamList
//
//  Created by Macbook on 24/01/2023.
//

import UIKit

final class GameDetailsViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
    }()
    
    private let gameInfoViewController: GameInfoViewController = {
        var viewController = GameInfoViewController()
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        return viewController
    }()
    
    private let gameDescriptionViewController: GameDescriptionViewController = {
        var viewController = GameDescriptionViewController()
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        return viewController
    }()
    
    
    private var constraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        add(gameInfoViewController)
        add(gameDescriptionViewController)
        constructHirarchy()
        self.title = "Games"
    }
    
    override func viewDidLayoutSubviews() {
        addScrollViewConstraints()
        addGameInfoVCConstraints()
        addGameDescriptionVCConstraints()
        NSLayoutConstraint.activate(constraints)
    }
}

extension GameDetailsViewController {
    
    func constructHirarchy() {
        view.addSubview(scrollView)
        scrollView.addSubview(gameInfoViewController.view)
        scrollView.addSubview(gameDescriptionViewController.view)
    }
    
    func addScrollViewConstraints() {
        constraints.append(scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(scrollView.topAnchor.constraint(equalTo: view.topAnchor))
        constraints.append(scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor))
    }
    
    func addGameInfoVCConstraints() {
        constraints.append(gameInfoViewController.view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor))
        constraints.append(gameInfoViewController.view.topAnchor.constraint(equalTo: scrollView.topAnchor))
        constraints.append(gameInfoViewController.view.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor))
        constraints.append(gameInfoViewController.view.widthAnchor.constraint(equalToConstant: view.frame.width))
    }
    
    func addGameDescriptionVCConstraints() {
        constraints.append(gameDescriptionViewController.view.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor))
        constraints.append(gameDescriptionViewController.view.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor))
        constraints.append(gameDescriptionViewController.view.topAnchor.constraint(equalTo: gameInfoViewController.view.bottomAnchor))
        constraints.append(gameDescriptionViewController.view.widthAnchor.constraint(equalToConstant: view.frame.width))
        constraints.append(gameDescriptionViewController.view.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -10))
    }
}
