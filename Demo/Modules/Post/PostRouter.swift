//
//  PostRouter.swift
//  Demo
//
//  Created by Daniel Diaz on 26/09/22.
//

import Foundation

class PostRouter {
    
    static func assembleModule() -> PostViewController {
        let viewController: PostViewController = PostViewController(
            nibName: "PostViewController",
            bundle: nil
        )
        let presenter: PostPresenter = PostPresenter()
        let interactor: PostInteractor = PostInteractor()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.view = viewController
        viewController.modalPresentationStyle = .fullScreen
        return viewController
    }
}
