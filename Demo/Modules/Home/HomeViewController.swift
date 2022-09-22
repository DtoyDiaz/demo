//
//  HomeViewController.swift
//  Demo
//
//  Created by Daniel Diaz on 22/09/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var interactor: HomeInteractor?
    
    @IBOutlet weak var emailTable: UITableView!
    
    let usersTemporal = ["fanny@gmail.com","lili@gmail.com",
                         "yess@gmail.com","martina@gmail.com",
                         "jazmin@gmail.com","xiomi@gmail.com",
                         "cris@gmail.com","vero@gmail.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTable.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfrows = usersTemporal.count
        return numberOfrows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        return cell
        
    }
    
}
