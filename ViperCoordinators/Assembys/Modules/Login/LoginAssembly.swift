//
//  LoginAssembly.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

typealias LoginModule = Module<LoginModuleInput, LoginModuleOutput>

class LoginAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> LoginModule {
        // View
        let view = LoginViewController.controllerFromStoryboard(.login)
        
        // Interactor
        let interactor = LoginInteractor()
        
        // Router
        let router = LoginRouter(coordinator: coordinator)
        
        // Presenter
        let presenter = LoginPresenter(interactor: interactor, router: router)
        
        // Dependency Setup
        presenter.view = view
        view.output = presenter
        
        return Module(view: view, input: presenter, output: presenter)
    }
}
