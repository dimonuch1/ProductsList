//
//  VelcomeScreen.Presenter.swift
//  ProductsList
//
//  Created by kira on 04.05.2018.
//  Copyright (c) 2018 Dmitry. All rights reserved.
//

import UIKit

protocol VelcomeScreenPresenting: class {

    func presentSomething()
}

extension VelcomeScreen {

    final class Presenter {

        weak var view: VelcomeScreenView!
        var router: VelcomeScreenRouting!
        var interactor: VelcomeScreenInteracting!
    }
}

extension VelcomeScreen.Presenter: VelcomeScreenPresenting {

    // MARK: - Presentation logic

    func presentSomething() {

        // TODO: Present something in view or call some method on interactor

        // router.navigateToSomewhere()
    }
}

extension VelcomeScreen.Presenter: VelcomeScreenInteractorOutput {

    func handleSomethingFromInteractor() {

        // TODO: Format the response from the Interactor and pass the result back to the view

        // let viewModel = VelcomeScreen.Entity.ViewModel()
        // view.displaySomething(viewModel: viewModel)
    }
}
