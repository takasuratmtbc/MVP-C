//
//  LoginViewController.swift
//  CoordinatorPattern
//
//  Created by Takasur Azeem on 7/26/21.
//

import UIKit

protocol LoginViewControllerDelegate: AnyObject {
    func didLoginSuccessfully()
//    func loginFailed(message: String)
}

class LoginViewController: UIViewController, Storyboarded {
    
    private var loginPresenter: LoginPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginPresenter = LoginPresenter(presenter: self, navigationController: self.navigationController)
    }

    @IBAction func loginButtonWasTapped(_ sender: Any) {
        loginPresenter.login()
    }
    
}

extension LoginViewController: LoginViewControllerDelegate {
    
    func didLoginSuccessfully() {
        loginPresenter.moveToDashboard()
    }
    
}
