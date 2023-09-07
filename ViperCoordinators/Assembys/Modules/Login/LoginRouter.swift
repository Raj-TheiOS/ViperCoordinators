//
//  LoginRouter.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

class LoginRouter: BaseModuleRouter, LoginRouterProtocol {
    func goMainPage(user: String) {
        container.resolve(MainCoordinatorAssembly.self).build(router: coordinator.router).goMainModul(user: user)
    }
}
