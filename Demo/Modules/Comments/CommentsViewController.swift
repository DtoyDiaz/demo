//
//  CommentsViewController.swift
//  Demo
//
//  Created by Daniel Diaz on 28/09/22.
//

import UIKit

class CommentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var interactor : CommentsInteractor?
    
    // MARK: -  IBOutlet -
    @IBOutlet weak var commentsTable: UITableView!
    
    // MARK: -  Lifecycle -
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}
