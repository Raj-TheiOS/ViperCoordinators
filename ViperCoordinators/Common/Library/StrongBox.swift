//
//  StrongBox.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

protocol StrongBox: AnyObject {
    var strongBoxHolder: [String : AnyObject] { set get }
}

extension StrongBox {
    func strongBox<T>(_ configure: () -> T) -> T {
        let key = ObjectKey(T.self).key
        if let object = self.strongBoxHolder[key] {
            return object as! T
        }
        let object = configure()
        strongBoxHolder[key] = object as AnyObject
        return object
    }
}
