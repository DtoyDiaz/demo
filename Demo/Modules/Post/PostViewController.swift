//
//  PostViewController.swift
//  Demo
//
//  Created by Daniel Diaz on 26/09/22.
//

import UIKit

class PostViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var interactor: PostInteractor?
    var postUsers: [PostUser] = []
    
    // MARK: -  IBOutlet -
    @IBOutlet weak var postTable: UITableView!
    
    // MARK: -  Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        postTable.register(UINib(nibName: "PostTableViewCell", bundle: nil), forCellReuseIdentifier: "PostTableViewCell")
        postTable.dataSource = self
        postTable.delegate = self
        interactor?.fetchData()
    }
    
    func displayData(data: [PostUser]) {
        self.postUsers = data
        postTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = postTable.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as! PostTableViewCell
        let postUser = postUsers[indexPath.row]
        cell.configuratePostUser(postUserToShow: postUser)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}
