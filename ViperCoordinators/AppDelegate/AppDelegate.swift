//
//  AppDelegate.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

@UIApplicationMain
class AppDelegate: AppDelegateManager {
    var window: UIWindow?
    
    lazy var container: DependencyContainer = {
        let factory = AssemblyFactory()
        let container = DependencyContainer(assemblyFactory: factory)
        
        // Setup Coordinators
        container.apply(AppCoordinatorAssembly.self)
        container.apply(MainCoordinatorAssembly.self)
        
        // Setup Modules
        container.apply(MainAssembly.self)
        container.apply(LoginAssembly.self)
        
        return container
    }()
    
    override var services: [AppDelegateService] {
        return [
            ApplicationService(container: container, window: window)
        ]
    }
}
