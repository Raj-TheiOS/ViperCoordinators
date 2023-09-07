//
//  MainContracts.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

// Module Input
protocol MainModuleInput {
    func setUserInfo(userInfo: String)
}

// Module Output
protocol MainModuleOutput: ModuleOutput {
    
}

// View Input
protocol MainViewInput: BaseView {
    func set(title: String)
    func setUserMessage(message: String)
}

// View Output
protocol MainViewOutput: AnyObject {
    func viewDidLoad()
    func btnLoginClicked()
}

// Interactor
protocol MainInteractorInput {
    
}

// Router
protocol MainRouterProtocol {
    func goLoginPage()
}
