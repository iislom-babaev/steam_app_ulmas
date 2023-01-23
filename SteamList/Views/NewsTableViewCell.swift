//
//  NewsTableViewCell.swift
//  SteamList
//
//  Created by Macbook on 20/01/2023.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    static let identifier = "NewsTableViewCell"
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .boldSystemFont(ofSize: 18)
        
        return label
    }()
    
    private let gameNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .systemFont(ofSize: 16, weight: .light)
        
        return label
    }()
    
    private let developerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .italicSystemFont(ofSize: 16)
        
        return label
    }()
    
    private let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = .systemFont(ofSize: 16, weight: .light)
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleLabel)
        contentView.addSubview(gameNameLabel)
        contentView.addSubview(dateLabel)
        contentView.addSubview(developerLabel)
        backgroundColor = .clear
        selectionStyle = .none
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(gameNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 12))
        constraints.append(gameNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6))
        
        constraints.append(developerLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 12))
        constraints.append(developerLabel.topAnchor.constraint(equalTo: gameNameLabel.bottomAnchor, constant: 10))
        
        constraints.append(titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 12))
        constraints.append(titleLabel.topAnchor.constraint(equalTo: developerLabel.bottomAnchor, constant: 12))
        constraints.append(titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12))
        
        constraints.append(dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -6))
        constraints.append(dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func configure(with news: News) {
        titleLabel.text = news.title
        gameNameLabel.text = news.gameName
        dateLabel.text = news.date
        developerLabel.text = "by \(news.developer)"
    }
}
