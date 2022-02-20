//
//  FriendsPhotoCollectionCell.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 19.02.2022.
//

import UIKit

class FriendsPhotoCollectionCell: UICollectionViewCell{
    
    

    @IBOutlet weak var imageView: UIImageView!
    
    
    static let identifier = "photoCell"
    
    func configure(imageName: String){
        imageView.image = UIImage(named: imageName)
    }
    
}
