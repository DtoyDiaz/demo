//
//  PostUser.swift
//  Demo
//
//  Created by Daniel Diaz on 26/09/22.
//

import Foundation

struct PostUser: Decodable {
    var id: Int?
    var user_id: Int?
    var title: String?
    var body: String?
}
