//
//  TableViewCell.swift
//  Demo
//
//  Created by Daniel Diaz on 22/09/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(userToShow: User){
        nameLabel.text = userToShow.name
        emailLabel.text = userToShow.email
        idLabel.text = "\(userToShow.id ?? 0)"
        genderLabel.text = userToShow.gender
        statusLabel.text = userToShow.status
    }
    
}
