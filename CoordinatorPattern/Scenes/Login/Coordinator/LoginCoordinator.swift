//
//  LoginCoordinator.swift
//  CoordinatorPattern
//
//  Created by Takasur Azeem on 7/26/21.
//

import UIKit

class LoginCoordinator: Coordinator {
    
    private let navigationController: UINavigationController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginVC = LoginViewController.instantiate(sbName: .main)
        navigationController.pushViewController(loginVC, animated: true)
    }
    
}

