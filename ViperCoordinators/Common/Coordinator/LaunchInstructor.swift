//
//  LaunchInstructor.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import Foundation

enum LaunchInstructor {
    case login
    case main
    case auth
    case onboarding
    
    static func configure(tutorialWasShown: Bool, isAutorized: Bool) -> LaunchInstructor {
        switch (tutorialWasShown, isAutorized) {
        case (true, false), (false, false): return .login
        case (false, true): return .onboarding
        case (true, true): return .main
        }
    }
}
