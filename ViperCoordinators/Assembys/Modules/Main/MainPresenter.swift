//
//  MainPresenter.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

class MainPresenter: BasePresenter<MainInteractorInput, MainRouterProtocol>, MainModuleOutput {
    // MARK: - Weak properties
    weak var view: MainViewInput?
    var userInfo: String?
    
    func goLogin() {
        router.goLoginPage()
    }
}

// MARK: Private
extension MainPresenter {
    
}

// MARK: Module Input
extension MainPresenter: MainModuleInput {
    func setUserInfo(userInfo: String) {
        self.userInfo = userInfo
    }
    
    
}

// MARK: View Output
extension MainPresenter: MainViewOutput {
    func btnLoginClicked() {
        self.goLogin()
    }
    
    func viewDidLoad() {
        view?.set(title: "Main")
        view?.setUserMessage(message: "Welcome Mr.\(userInfo ?? "")")
    }
}
