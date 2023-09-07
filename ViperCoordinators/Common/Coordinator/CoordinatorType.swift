//
//  CoordinatorType.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

protocol CoordinatorType: AnyObject, Presentable {
    var container: Container {get}
    var router: RouterType {get}
    var completion: (() -> Void)? {get set}
    
    func start()
    func start(with option: DeepLinkOption?)
}
