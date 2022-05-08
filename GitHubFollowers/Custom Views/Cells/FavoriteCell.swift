//
//  FavoriteCell.swift
//  GitHubFollowers
//
//  Created by evpes on 08.05.2022.
//

import UIKit

class FavoriteCell: UITableViewCell {
    
    static let reuseID = "FavoriteCell"
    let avatarImage = GFAvatarImageView(frame: .zero)
    let userNameLabel = GFTitleLabel(textAlignment: .left, fontSize: 26)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(favorite: Follower) {
        userNameLabel.text = favorite.login
        avatarImage.downloadImage(from: favorite.avatarUrl)
    }
    
    
    private func configure() {
        addSubview(avatarImage)
        addSubview(userNameLabel)
        
        accessoryType = .disclosureIndicator
        let padding: CGFloat = 12
        
        NSLayoutConstraint.activate([
            avatarImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            avatarImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            avatarImage.heightAnchor.constraint(equalToConstant: 18),
            avatarImage.widthAnchor.constraint(equalToConstant: 18),
            
            userNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            userNameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 24),
            userNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            userNameLabel.heightAnchor.constraint(equalToConstant: 40)
            
        ])
    }

}
