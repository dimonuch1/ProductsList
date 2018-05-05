//
//  VelcomeScreen.Module.swift
//  ProductsList
//
//  Created by kira on 04.05.2018.
//  Copyright (c) 2018 Dmitry. All rights reserved.
//

import UIKit

struct VelcomeScreen {}

extension VelcomeScreen {

    struct Module {

        func configure(viewController: VelcomeScreenViewController) {

            let router = Router()
            router.viewController = viewController

            let presenter = Presenter()
            presenter.view = viewController
            presenter.router = router

            let interactor = Interactor()
            interactor.output = presenter

            presenter.interactor = interactor

            viewController.presenter = presenter
        }
    }
}
