//
//  AppCoordinatorAssembly.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

class AppCoordinatorAssembly: Assembly {
    func build() -> AppCoordinatorType {
        let navigationController = UINavigationController(rootViewController: UIViewController())
        let router = Router(navigationController: navigationController)
        let coordinator = AppCoordinator(container: container, router: router)
        return coordinator
    }
}
