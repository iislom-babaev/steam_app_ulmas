//
//  FavoritesTableViewCell.swift
//  SteamList
//
//  Created by Macbook on 19/01/2023.
//

import UIKit

final class FavoritesTableViewCell: UITableViewCell {
    
    static let identifier = "GamesTableViewCell"
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .systemFont(ofSize: 17, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleLabel)
        contentView.addSubview(priceLabel)
        backgroundColor = .clear
        selectionStyle = .none
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addConstraints() {
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12))
        constraints.append(titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12))
        constraints.append(titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12))
        constraints.append(priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12))
        constraints.append(priceLabel.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func configure(with game: Game) {
        titleLabel.text = game.title
        if (game.price == 0.0) {
            priceLabel.text = "Free"
        } else {
            var discountText = ""
            if (game.discount != 0) {
                discountText = "(-\(game.discount)%)"
                priceLabel.textColor = .green
            }
            priceLabel.text = "$\(game.price) \(discountText)"
        }
    }
}
