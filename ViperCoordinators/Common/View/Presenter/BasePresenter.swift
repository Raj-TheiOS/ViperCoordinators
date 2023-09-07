//
//  BasePresenter.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

class BasePresenter<I, R> {
    let interactor: I
    let router: R
    
    init(interactor: I, router: R) {
        self.interactor = interactor
        self.router = router
    }
}
