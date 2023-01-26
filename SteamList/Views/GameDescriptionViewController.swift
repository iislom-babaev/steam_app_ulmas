//
//  GameDescriptionViewController.swift
//  SteamList
//
//  Created by Macbook on 26/01/2023.
//

import UIKit

final class GameDescriptionViewController: UIViewController {
   
    private let dividerBar: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        return view
    }()
    
    private let descriptionLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.lineBreakMode = .byClipping
        label.textAlignment = .justified
        label.text = "Every day, millions of players worldwide enter the battle as one of over a hundred Dota Heroes in a 5v5 team clash. Dota is the deepest multi-player action RTS game ever made and there's always a new strategy or tactic to discover. It's completely free to play and always will be – start defending your ancient now."
        label.textColor = .white
        
        return label
    }()
    
    private let bottomImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "ravage")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private var constraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constructViewHierarchy()
    }
    
    override func viewDidLayoutSubviews() {
        addDividerBarConstriants()
        addDescriptionConstraints()
        addBottomImageConstraints()
        NSLayoutConstraint.activate(constraints)
    }
    
    func constructViewHierarchy() {
        view.addSubview(dividerBar)
        view.addSubview(descriptionLabel)
        view.addSubview(bottomImage)
    }
    
    func addDividerBarConstriants() {
        constraints.append(dividerBar.heightAnchor.constraint(equalToConstant: 1))
        constraints.append(dividerBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 20))
        constraints.append(dividerBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10))
        constraints.append(dividerBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10))
    }
    
    func addDescriptionConstraints() {
        constraints.append(descriptionLabel.topAnchor.constraint(equalTo: dividerBar.bottomAnchor, constant: 20))
        constraints.append(descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10))
        constraints.append(descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10))
    }
    
    func addBottomImageConstraints() {
        constraints.append(bottomImage.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(bottomImage.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(bottomImage.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20))
        constraints.append(bottomImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10))
        constraints.append(bottomImage.heightAnchor.constraint(equalToConstant: 200))
    }
}
