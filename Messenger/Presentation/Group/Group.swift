//
//  Group.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 16.02.2022.
//

import Foundation
struct Group {
    
    var name: String
    
}

extension Group {
    static func getList() -> [Group] {
        [
            Group(name: "Music"),
            Group(name: "GeekBrains"),
            Group(name: "FashionNews")
        ]
    }
}


