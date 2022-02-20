//
//  FriendsViewController.swift
//  Messenger
//
//  Created by Диана Хазгалиева on 18.02.2022.
//

import UIKit

class FriendsViewController: UIViewController{
    
    
    @IBOutlet weak var friendsTableView: UITableView!
    var friends: [UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let store = FriendsStorage()
        friends = store.friends
        
        friendsTableView.delegate = self
        friendsTableView.dataSource = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movingToPhotosSegue",
           let destinationController = segue.destination as? FriendsPhotoViewController,
           let indexPath = sender as? IndexPath
           {
            let friend = friends[indexPath.row]
            destinationController.photos = friend.photos
            destinationController.title = friend.name
        }
    }
    
}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.reuseIdentifier, for: indexPath) as? FriendsTableViewCell
        else{
            return UITableViewCell()
        }
        
        let friend = friends[indexPath.row]
        cell.configure(user: friend)
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "movingToPhotosSegue", sender: indexPath)
    }

}
