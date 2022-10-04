//
//  PostTableViewCell.swift
//  Demo
//
//  Created by Daniel Diaz on 26/09/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configuratePostUser(postUserToShow: PostUser) {
        userLabel.text = "\(postUserToShow.user_id ?? 0)"
        idLabel.text = "\(postUserToShow.id ?? 0)"
        titleLabel.text = postUserToShow.title
        bodyLabel.text = postUserToShow.body
    }
}
