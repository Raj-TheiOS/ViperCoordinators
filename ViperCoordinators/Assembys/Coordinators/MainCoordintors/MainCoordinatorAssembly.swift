//
//  MainCoordinatorAssembly.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

class MainCoordinatorAssembly: Assembly {
    func build(router: RouterType) -> MainCoordinatorType {
        let coordinator = MainCoordinator(container: container, router: router)
        return coordinator
    }
}
