//
//  LoginPresenter.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

class LoginPresenter: BasePresenter<LoginInteractorInput, LoginRouterProtocol>, LoginModuleOutput {
    
    // MARK: - Weak properties
    weak var view: LoginViewInput?
}

// MARK: Private
extension LoginPresenter {
    
}

// MARK: Module Input
extension LoginPresenter: LoginModuleInput {  
    func setUserInfo(userInfo: String) {
        print(userInfo)
    }
    
    
}

// MARK: View Output
extension LoginPresenter: LoginViewOutput {
    func loginUser(userName: String, userPassword: String) {
            view?.showProgressHUD()
            interactor.userLogin(userName: userName, userPassword: userPassword) { [weak self](isSucess, response) in
                guard let self = self else { return }
                guard isSucess else {
                    return
                }
                self.view?.hideProgressHUD()
                self.router.goMainPage(user: response!)
                
            }
    }
    
    func viewDidLoad() {
        view?.set(title: "Login")
    }
}
