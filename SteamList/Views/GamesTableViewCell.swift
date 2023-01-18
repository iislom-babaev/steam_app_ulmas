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
        label.text = "Game ?"
        
        return label
    }()
    
    private let favoriteIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star")
        imageView.tintColor = .systemOrange
        
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleLabel)
        contentView.addSubview(favoriteIcon)
        backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let cellHeight = contentView.frame.height
        let cellWidth = contentView.frame.width
        let iconSize = cellHeight - 8
        
        titleLabel.frame = CGRect(x: 12, y: 0, width: cellWidth - iconSize - 36, height: cellHeight)
        favoriteIcon.frame = CGRect(x: titleLabel.frame.size.width + 24, y: 4, width: iconSize, height: iconSize)
    }
}
