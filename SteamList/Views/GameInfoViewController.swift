//
//  GameInfoSection.swift
//  SteamList
//
//  Created by Macbook on 25/01/2023.
//

import UIKit

final class GameInfoViewController: UIViewController {
    
    private let topImage: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "jugger")
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
    
    private var constraints = [NSLayoutConstraint]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        constructViewHierarchy()
    }
    
    override func viewDidLayoutSubviews() {
        addTopImageConstraints()
        addTitleConstraints()
        addStarIconConstraints()
        addGenresConstraints()
        addDateConstraints()
        addPriceConstraints()
        addOSConstraints()
        NSLayoutConstraint.activate(constraints)
    }
    
    func constructViewHierarchy() {
        view.addSubview(topImage)
        view.addSubview(titleLabel)
        view.addSubview(starIcon)
        view.addSubview(genresStackView)
        genresStackView.addArrangedSubview(firstGenre)
        genresStackView.addArrangedSubview(secondGenre)
        genresStackView.addArrangedSubview(thirdGenre)
        view.addSubview(dateLabel)
        view.addSubview(priceLabel)
        view.addSubview(osStackView)
        osStackView.addArrangedSubview(appleImage)
        osStackView.addArrangedSubview(linuxImage)
        osStackView.addArrangedSubview(windowsImage)
    }
    
    func addTopImageConstraints()  {
        constraints.append(topImage.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(topImage.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(topImage.topAnchor.constraint(equalTo: view.topAnchor))
        constraints.append(topImage.heightAnchor.constraint(equalToConstant: 200))
        constraints.append(topImage.widthAnchor.constraint(equalToConstant: view.frame.width))
    }
    
    func addTitleConstraints() {
        constraints.append(titleLabel.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: 12))
        constraints.append(titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor))
    }
    
    func addStarIconConstraints() {
        constraints.append(starIcon.topAnchor.constraint(equalTo: topImage.bottomAnchor, constant: 12))
        constraints.append(starIcon.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10))
        constraints.append(starIcon.widthAnchor.constraint(equalToConstant: 35))
        constraints.append(starIcon.heightAnchor.constraint(equalToConstant: 35))
    }
    
    func addGenresConstraints() {
        constraints.append(genresStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 24))
        constraints.append(genresStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(genresStackView.heightAnchor.constraint(equalToConstant: 20))
    }
    
    func addDateConstraints() {
        constraints.append(dateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10))
        constraints.append(dateLabel.centerYAnchor.constraint(equalTo: priceLabel.centerYAnchor))
        constraints.append(dateLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor))
    }
    
    func addPriceConstraints() {
        constraints.append(priceLabel.topAnchor.constraint(equalTo: genresStackView.bottomAnchor, constant: 30))
        constraints.append(priceLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor))
    }
    
    func addOSConstraints() {
        constraints.append(osStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10))
        constraints.append(osStackView.centerYAnchor.constraint(equalTo: priceLabel.centerYAnchor))
        constraints.append(appleImage.heightAnchor.constraint(equalToConstant: 24))
        constraints.append(appleImage.widthAnchor.constraint(equalToConstant: 24))
        constraints.append(linuxImage.heightAnchor.constraint(equalToConstant: 24))
        constraints.append(linuxImage.widthAnchor.constraint(equalToConstant: 24))
        constraints.append(windowsImage.heightAnchor.constraint(equalToConstant: 24))
        constraints.append(windowsImage.widthAnchor.constraint(equalToConstant: 24))
    }
}
