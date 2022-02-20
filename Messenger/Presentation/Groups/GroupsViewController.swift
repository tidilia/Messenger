//
//  GroupsViewController.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 18.02.2022.
//

import UIKit

class GroupsViewContoller: UIViewController{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var groups: [GroupModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let store = GroupsStorage()
        groups = store.groups
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    @IBAction func addNewGroup(_ segue: UIStoryboardSegue) {
        guard
            segue.identifier == "addingNewGroupSegue",
            let sourceController = segue.source as? AddGroupViewController,
            let indexPath = sourceController.tableView.indexPathForSelectedRow
        else {
            return
        }
        let group = sourceController.groups[indexPath.row]

        if !groups.contains(where: { $0.name == group.name}) {
            groups.append(group)
            tableView.reloadData()
        }
    }
}

extension GroupsViewContoller: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: GroupTableViewCell.reusedIndentifier, for: indexPath) as? GroupTableViewCell
        else{
            return UITableViewCell()
        }
        
        let group = groups[indexPath.row]
        cell.configure(group: group)
        
        return cell
    }
    

    
}


