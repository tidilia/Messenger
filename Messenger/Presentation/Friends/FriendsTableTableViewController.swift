//
//  FriendsTableTableViewController.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 15.02.2022.
//

import UIKit

class FriendTableViewController: UITableViewController {
    
    let friendList = Friend.getList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 65
        self.title = "Friends"
    }
    

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friendList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath)
        let friend = friendList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = friend.name
        content.secondaryText = "Photos: " + String(friend.numberOfPhotos)
        
        cell.contentConfiguration = content
        
        return cell
    }

  

}
