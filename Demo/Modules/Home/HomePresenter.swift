//
//  HomePresenter.swift
//  Demo
//
//  Created by Daniel Diaz on 22/09/22.
//

import Foundation

class HomePresenter {
    var view: HomeViewController?
    
    func presentData(data: [User]) {
        view?.displayData(data: data)
    }
}

