//
//  BaseView.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation
import UIKit

protocol BaseView: AnyObject {
    func showProgressHUD()
    func hideProgressHUD()
}


extension BaseView {
    func showProgressHUD() {
        debugPrint("showProgressHUD")
    }
    
    func hideProgressHUD() {
        debugPrint("hideProgressHUD")
    }
}
