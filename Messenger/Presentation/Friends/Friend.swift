//
//  Friend.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 16.02.2022.
//

struct Friend {
    
    var name: String
    var numberOfPhotos: Int
    
}

extension Friend {
    static func getList() -> [Friend] {
        [
            Friend(name: "Ivan Ivanov", numberOfPhotos: 5),
            Friend(name: "Kate Petrova", numberOfPhotos: 3)
        ]
    }
}


