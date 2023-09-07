//
//  Module.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

protocol ModuleOutput {
    
}

struct Module<Input, Output>: Presentable {
    var view: UIViewController
    var input: Input
    var output: Output
    
    func toPresent() -> UIViewController {
        return view
    }
}
