//
//  VelcomeScreen.Interactor.swift
//  ProductsList
//
//  Created by kira on 04.05.2018.
//  Copyright (c) 2018 Dmitry. All rights reserved.
//

import Foundation

protocol VelcomeScreenInteracting: class {

    func doSomething()
}

protocol VelcomeScreenInteractorOutput: class {

    func handleSomethingFromInteractor()
}

extension VelcomeScreen {

    final class Interactor {

        weak var output: VelcomeScreenInteractorOutput!
    }
}

extension VelcomeScreen.Interactor: VelcomeScreenInteracting {

    // MARK: - Business logic

    func doSomething() {
        // NOTE: Do some work

        output.handleSomethingFromInteractor()
    }
}
