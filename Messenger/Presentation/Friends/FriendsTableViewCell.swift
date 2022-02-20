//
//  FriendsTableViewCell.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 18.02.2022.
//

import UIKit

final class FriendsTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var userImageImage: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var numberOfPhotosLabel: UILabel!
    static let reuseIdentifier = "FriendsTableViewCell"
    
    func configure(user: UserModel){
        userNameLabel.text = user.name
        numberOfPhotosLabel.text = String(user.numberOfPhotos)
        userImageImage.image = UIImage(named: user.mainPhoto)
    }
    
}
