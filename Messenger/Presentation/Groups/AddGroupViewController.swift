//
//  AddGroupViewController.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 18.02.2022.
//

import UIKit

class AddGroupViewController: UIViewController{
    
    @IBOutlet weak var tableView: UITableView!
    
    var groups: [GroupModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groups = GroupsStorage().allGroups
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AddGroupViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: GroupTableViewCell.reusedIndentifier, for: indexPath) as? GroupTableViewCell
        else {
            return UITableViewCell()
        }
        let group = groups[indexPath.row]
        cell.configure(group: group)
        return cell
    }
    
    
}
