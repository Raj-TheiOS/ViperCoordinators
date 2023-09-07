//
//  LoginInteractor.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

class LoginInteractor: LoginInteractorInput {
    
    func userLogin(userName: String, userPassword: String, completion: @escaping (Bool, String?) -> Void) {
        completion(true, "Rajeshwar")
    }
    
}

// MARK: Private
extension LoginInteractor {
    
}
