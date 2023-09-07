//
//  Presentable.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController
}

extension UIViewController: Presentable {
    func toPresent() -> UIViewController {
        return self
    }
}
