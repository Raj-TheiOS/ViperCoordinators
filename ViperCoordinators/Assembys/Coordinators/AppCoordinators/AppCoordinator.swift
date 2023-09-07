//
//  AppCoordinator.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

class AppCoordinator: BaseCoordinator, AppCoordinatorType {
    
    private var instructor: LaunchInstructor {
        return LaunchInstructor.configure(tutorialWasShown: true, isAutorized: false)
    }
    
    override func start(with option: DeepLinkOption?) {
        if let option = option {
            switch option {
            case .home:
                startMainFlow()
            }
        } else {
            switch instructor {
            case .auth: startAuthFlow()
            case .onboarding: startOnboardingFlow()
            case .main: startMainFlow()
            case .login: startLoginFlow()
            }
        }
    }
}

// MARK: Main Flow
extension AppCoordinator {
    func startMainFlow() {
        let coordinator = container.resolve(MainCoordinatorAssembly.self).build(router: router)
        addChild(coordinator)
        coordinator.start()
        
        self.router.setRootModule(coordinator)
    }
}

// MARK: Auth Flow
extension AppCoordinator {
    func startAuthFlow() {
        
    }
}


// MARK: Auth Flow
extension AppCoordinator {
    func startLoginFlow() {
        let coordinator = container.resolve(MainCoordinatorAssembly.self).build(router: router)
        addChild(coordinator)
        coordinator.start()
        
        self.router.setRootModule(coordinator)
    }
}

// MARK: Onboarding Flow
extension AppCoordinator {
    func startOnboardingFlow() {
        
    }
}
