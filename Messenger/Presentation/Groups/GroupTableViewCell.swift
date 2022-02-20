//
//  GroupTableViewCell.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 18.02.2022.
//

import UIKit
class GroupTableViewCell: UITableViewCell{
    
    @IBOutlet weak var groupNumbersLabel: UILabel!
    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var groupIconImage: UIImageView!
    
    static let reusedIndentifier = "GroupTableViewCell"
    
    func configure(group: GroupModel){
        groupNumbersLabel.text = "Number of participants: \(group.numberOfParticipants)"
        groupNameLabel.text = group.name
        groupIconImage.image = UIImage(named: group.mainPhoto)
    }
}
