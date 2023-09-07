//
//  MainViewController.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

class MainViewController: UIViewController {
    var output: MainViewOutput!
    
    @IBOutlet weak var lbl_userLoginMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
    
}

// MARK: - Configure
extension MainViewController {
    
}

// MARK: View Input
extension MainViewController: MainViewInput {
    func setUserMessage(message: String) {
        lbl_userLoginMessage.text = message
    }
    
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension MainViewController {
    
}
