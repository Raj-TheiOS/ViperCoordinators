//
//  LoginViewController.swift
//  ViperCoordinators
//
//  Created by K Rajeshwar on 06/09/23.
//

import UIKit

class LoginViewController: UIViewController, LoginViewInput {
    var output: LoginViewOutput!
    @IBOutlet weak var tf_userName: UITextField!
    @IBOutlet weak var tf_userPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewDidLoad()
    }
    
}

// MARK: - Configure
extension LoginViewController {
    
}

// MARK: View Input
extension LoginViewController {
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension LoginViewController {
    @IBAction func onClick_btnLogin(_ sender: Any) {
        output.loginUser(userName: tf_userName.text ?? "", userPassword: tf_userPassword.text ?? "")
    }
}
