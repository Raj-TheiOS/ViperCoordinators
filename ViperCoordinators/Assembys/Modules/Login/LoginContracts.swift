//
//  LoginContracts.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

// Module Input
protocol LoginModuleInput {
}

// Module Output
protocol LoginModuleOutput {
    
}

// View Input
protocol LoginViewInput: BaseView {
    func set(title: String)
}

// View Output
protocol LoginViewOutput: AnyObject {
    func viewDidLoad()
    func loginUser(userName: String, userPassword: String)
}

// Interactor
protocol LoginInteractorInput {
    func userLogin(userName: String, userPassword: String, completion: @escaping (Bool, String?) -> Void)
}

// Router
protocol LoginRouterProtocol {
    func goMainPage(user: String)
}
