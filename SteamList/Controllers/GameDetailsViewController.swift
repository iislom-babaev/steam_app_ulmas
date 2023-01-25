//
//  GameDetailsViewController.swift
//  SteamList
//
//  Created by Macbook on 24/01/2023.
//

import UIKit

class GameDetailsViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        var scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        return scrollView
    }()
    
    private let topImage: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "jugger")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 29)
        label.textColor = .white
        label.text = "Dota 2"
        
        return label
    }()
    
    private let starIcon: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "star")
        imageView.tintColor = .systemOrange
        
        return imageView
    }()
    
    private let genresStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        
        return stackView
    }()
    
    private let firstGenre: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Action"
        label.textColor = .white
        
        return label
    }()
    
    private let secondGenre: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Free to Play"
        label.textColor = .white
        
        return label
    }()
    
    private let thirdGenre: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Strategy"
        label.textColor = .white
        
        return label
    }()
    
    private let dateLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "9 Jul, 2013"
        label.font = .systemFont(ofSize: 20)
        label.textColor = .white
        
        return label
    }()
    
    private let priceLabel: UILabel = {
        var label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Free to Play"
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .systemGreen
        
        return label
    }()
    
    private let osStackView: UIStackView = {
        var view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.spacing = 6
        
        return view
    }()
    
    private let appleImage: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: "apple")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let linuxImage: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "linux")
        
        return imageView
    }()
    
    private let windowsImage: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "windows")
        
        return imageView
    }()
    
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
    var constraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constructHirarchy()
        self.title = "Games"
    }
    
    override func viewDidLayoutSubviews() {
        addConstraints()
    }
    
    func addConstraints() {
        addScrollViewConstraints()
        addTopImageConstraints()
        addTitleConstraints()
        addStarIconConstraints()
        addGenresConstraints()
        addDateConstraints()
        addPriceConstraints()
        addOSConstraints()
        addDividerBarConstriants()
        addDescriptionConstraints()
        addBottomImageConstraints()
        NSLayoutConstraint.activate(constraints)
    }
    
}

extension GameDetailsViewController {
    
    func constructHirarchy() {
        view.addSubview(scrollView)
        scrollView.addSubview(topImage)
        scrollView.addSubview(titleLabel)
        scrollView.addSubview(starIcon)
        scrollView.addSubview(genresStackView)
        genresStackView.addArrangedSubview(firstGenre)
        genresStackView.addArrangedSubview(secondGenre)
        genresStackView.addArrangedSubview(thirdGenre)
        scrollView.addSubview(dateLabel)
        scrollView.addSubview(priceLabel)
        scrollView.addSubview(osStackView)
        osStackView.addArrangedSubview(appleImage)
        osStackView.addArrangedSubview(linuxImage)
        osStackView.addArrangedSubview(windowsImage)
        scrollView.addSubview(dividerBar)
        scrollView.addSubview(descriptionLabel)
        scrollView.addSubview(bottomImage)
    }
    
    func addScrollViewConstraints() {
        constraints.append(scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(scrollView.topAnchor.constraint(equalTo: view.topAnchor))
        constraints.append(scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor))
    }
    
    func addTopImageConstraints() {
        constraints.append(topImage.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor))
        constraints.append(topImage.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor))
        constraints.append(topImage.topAnchor.constraint(equalTo: scrollView.topAnchor))
        constraints.append(topImage.heightAnchor.constraint(equalToConstant: 200))
        constraints.append(topImage.widthAnchor.constraint(equalToConstant: view.bounds.width))
    }
    
    func addTitleConstraints() {
        constraints.append(titleLabel.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: 12))
        constraints.append(titleLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor))
    }
    
    func addStarIconConstraints() {
        constraints.append(starIcon.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: 12))
        constraints.append(starIcon.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10))
        constraints.append(starIcon.widthAnchor.constraint(equalToConstant: 35))
        constraints.append(starIcon.heightAnchor.constraint(equalToConstant: 35))
    }
    
    func addGenresConstraints() {
        constraints.append(genresStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24))
        constraints.append(genresStackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor))
        constraints.append(genresStackView.heightAnchor.constraint(equalToConstant: 20))
    }
    
    func addDateConstraints() {
        constraints.append(dateLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10))
        constraints.append(dateLabel.centerYAnchor.constraint(equalTo: priceLabel.centerYAnchor))
    }
    
    func addPriceConstraints() {
        constraints.append(priceLabel.topAnchor.constraint(equalTo: genresStackView.bottomAnchor, constant: 30))
        constraints.append(priceLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor))
    }
    
    func addOSConstraints() {
        constraints.append(osStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10))
        constraints.append(osStackView.centerYAnchor.constraint(equalTo: priceLabel.centerYAnchor))
        constraints.append(appleImage.heightAnchor.constraint(equalToConstant: 24))
        constraints.append(appleImage.widthAnchor.constraint(equalToConstant: 24))
        constraints.append(linuxImage.heightAnchor.constraint(equalToConstant: 24))
        constraints.append(linuxImage.widthAnchor.constraint(equalToConstant: 24))
        constraints.append(windowsImage.heightAnchor.constraint(equalToConstant: 24))
        constraints.append(windowsImage.widthAnchor.constraint(equalToConstant: 24))
    }
    
    func addDividerBarConstriants() {
        constraints.append(dividerBar.heightAnchor.constraint(equalToConstant: 1))
        constraints.append(dividerBar.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 20))
        constraints.append(dividerBar.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10))
        constraints.append(dividerBar.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10))
    }
    
    func addDescriptionConstraints() {
        constraints.append(descriptionLabel.topAnchor.constraint(equalTo: dividerBar.bottomAnchor, constant: 20))
        constraints.append(descriptionLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 10))
        constraints.append(descriptionLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -10))
    }
    
    func addBottomImageConstraints() {
        constraints.append(bottomImage.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor))
        constraints.append(bottomImage.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor))
        constraints.append(bottomImage.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20))
        constraints.append(bottomImage.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -10))
        constraints.append(bottomImage.heightAnchor.constraint(equalToConstant: 200))
    }
    
}
