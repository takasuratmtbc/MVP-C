//
//  LoginPresenter.swift
//  CoordinatorPattern
//
//  Created by Takasur Azeem on 7/26/21.
//

import Foundation

class LoginPresenter {
    
    private weak var delegate: LoginViewControllerDelegate?
    
    init(presenter: LoginViewControllerDelegate) {
        self.delegate = presenter
    }
    
    func login() {
        delegate?.didLoginSuccessfully()
    }
}
