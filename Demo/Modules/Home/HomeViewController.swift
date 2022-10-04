//
//  HomeViewController.swift
//  Demo
//
//  Created by Daniel Diaz on 22/09/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var interactor: HomeInteractor?
    var usersTemporal: [User] = []
    
    // MARK: -  IBOutlet - 
    @IBOutlet weak var emailTable: UITableView!
    
    // MARK: - Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTable.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        emailTable.dataSource = self
        emailTable.delegate = self
        interactor?.fetchData()
    }
    
    func displayData(data: [User]) {
        self.usersTemporal = data
        emailTable.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersTemporal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = emailTable.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let userEmail = usersTemporal[indexPath.row]
        cell.configure(userToShow: userEmail)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
