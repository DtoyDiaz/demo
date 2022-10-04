//
//  PostPresenter.swift
//  Demo
//
//  Created by Daniel Diaz on 26/09/22.
//

import Foundation

class PostPresenter {
    
    var view: PostViewController?
    
    func presentData(data: [PostUser]) {
        view?.displayData(data: data)
    }
}
