//
//  FriendsStorage.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 18.02.2022.
//

import Foundation

class FriendsStorage{
    let friends: [UserModel]
    
    init(){
        friends = [
            UserModel(
                name: "Elina Ikhsanova",
                numberOfPhotos: 2,
                mainPhoto: "photo1",
                photos: ["photo1", "photo2"]
            ),
            UserModel(name: "Roman Gaisin",
                      numberOfPhotos: 3,
                      mainPhoto: "photo5",
                      photos: ["photo3", "photo4", "photo5"])
        ]
    }
}
