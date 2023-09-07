//
//  MainCoordinator.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

class MainCoordinator: BaseCoordinator, MainCoordinatorType {
    
    override func start() {
        let module = container.resolve(LoginAssembly.self).build(coordinator: self)
        router.setRootModule(module)
    }
    
    func goLoginModul() {
        let module = container.resolve(LoginAssembly.self).build(coordinator: self)
        router.push(module)
    }
    
    func goMainModul(user: String) {
        let module = container.resolve(MainAssembly.self).build(coordinator: self)
        module.input.setUserInfo(userInfo: user)
        router.push(module)
    }
    override func toPresent() -> UIViewController {
        return router.rootViewController!
    }
}
