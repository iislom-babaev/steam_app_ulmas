//
//  GamesTableViewCell.swift
//  SteamList
//
//  Created by Macbook on 18/01/2023.
//

import UIKit

class GamesTableViewCell: UITableViewCell {
    static let identifier = "GamesTableViewCell"
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        
        return label
    }()
    
    private let favoriteIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .systemOrange
        
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleLabel)
        contentView.addSubview(favoriteIcon)
        backgroundColor = .clear
        selectionStyle = .none
        let favoriteGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(favoriteTapped))
        favoriteIcon.isUserInteractionEnabled = true
        favoriteIcon.addGestureRecognizer(favoriteGestureRecognizer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let cellHeight = contentView.frame.height
        let cellWidth = contentView.frame.width
        let iconSize = cellHeight - 40
        
        titleLabel.frame = CGRect(x: 12, y: 0, width: cellWidth - iconSize - 36, height: cellHeight)
        favoriteIcon.frame = CGRect(x: titleLabel.frame.size.width + 24, y: 20, width: iconSize, height: iconSize)
    }
    
    func configure(with game: Game) {
        titleLabel.text = game.title
        toggleFavorite(withCondition: game.isFavorite)
    }
    
    @objc func favoriteTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        toggleFavorite(withCondition: favoriteIcon.image == UIImage(systemName: "star"))
    }
    
    func toggleFavorite(withCondition condition: Bool) {
        if (condition) {
            favoriteIcon.image = UIImage(systemName: "star.fill")
            titleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        } else {
            favoriteIcon.image = UIImage(systemName: "star")
            titleLabel.font = .systemFont(ofSize: 18, weight: .regular)
        }
    }
    
}
