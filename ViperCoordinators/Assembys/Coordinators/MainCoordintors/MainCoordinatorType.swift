//
//  MainCoordinatorType.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

protocol MainCoordinatorType: CoordinatorType {
    func goLoginModul()
    func goMainModul(user: String)
}
