//
//  FriendsCollectionViewController.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 18.02.2022.
//

import UIKit

class FriendsPhotoViewController: UIViewController{
    

    @IBOutlet weak var photoCollectionView: UICollectionView!
    
    var photos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoCollectionView.delegate = self
        photoCollectionView.dataSource = self
    }

}
extension FriendsPhotoViewController: UICollectionViewDelegate{
    
}

extension FriendsPhotoViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = photoCollectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! FriendsPhotoCollectionCell
        let str = photos[indexPath.item]
        cell.configure(imageName: str)
        
        return cell
    }
    
}
