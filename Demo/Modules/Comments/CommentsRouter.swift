//
//  CommentsRouter.swift
//  Demo
//
//  Created by Daniel Diaz on 28/09/22.
//

import Foundation

class CommentsRouter {
    
    static func assembleModule() -> CommentsViewController {
        let viewController: CommentsViewController = CommentsViewController(
            nibName: "CommentsViewController",
            bundle: nil
        )
        let presenter: CommentsPresenter = CommentsPresenter()
        let interactor: CommentsInteractor = CommentsInteractor()
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.view = viewController
        viewController.modalPresentationStyle = .fullScreen
        return viewController
    }
}
