//
//  ViewController+Extension.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

extension UIViewController {
    
    private class func instantiateControllerInStoryboard<T: UIViewController>(_ storyboard: UIStoryboard, identifier: String) -> T {
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
    
    class func controllerInStoryboard(_ storyboard: UIStoryboard, identifier: String) -> Self {
        return instantiateControllerInStoryboard(storyboard, identifier: identifier)
    }
    
    class func controllerFromStoryboard(_ storyboard: Storyboards) -> Self {
        return controllerInStoryboard(UIStoryboard(name: storyboard.rawValue, bundle: nil), identifier: nameOfClass)
    }

}


enum Storyboards: String {
    case main = "Main"
    case login = "Login"
}

enum Constants {
    enum App {
        
    }
    
    enum Network {
        
    }
}

extension NSObject {
    class var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
