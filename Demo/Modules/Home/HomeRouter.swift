//
//  Router.swift
//  Demo
//
//  Created by Daniel Diaz on 22/09/22.
//

import Foundation

class HomeRouter {
    
    static func assembleModule() -> HomeViewController {
        let viewController: HomeViewController = HomeViewController(
            nibName: "HomeViewController",
            bundle: nil
        )
        let presenter: HomePresenter = HomePresenter()
        let interactor: HomeInteractor = HomeInteractor()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.view = viewController
        viewController.modalPresentationStyle = .fullScreen
        return viewController
    }
}
