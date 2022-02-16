//
//  GroupTableViewController.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 16.02.2022.
//

import Foundation
import UIKit
class GroupTableViewController: UITableViewController {
    
    let groupList = Group.getList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 65
        self.title = "Groups"
    }
    

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groupList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath)
        let group = groupList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = group.name
        
        cell.contentConfiguration = content
        
        return cell
    }

  

}
