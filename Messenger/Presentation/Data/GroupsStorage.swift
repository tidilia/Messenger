//
//  GroupsStorage.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 20.02.2022.
//

import Foundation

class GroupsStorage{
    let groups: [GroupModel]
    let allGroups:[GroupModel]
    
    init(){
        groups = [
            GroupModel(name: "Retsepty",
                       numberOfParticipants: 1489,
                       mainPhoto: "photo6")
        ]
        allGroups = [
            GroupModel(name: "Fashion",
                       numberOfParticipants: 28956,
                       mainPhoto: "photo7"),
            GroupModel(name: "Retsepty",
                       numberOfParticipants: 1489,
                       mainPhoto: "photo6")
        ]
    }
}
