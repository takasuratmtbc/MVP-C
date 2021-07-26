//
//  LoginPresenter.swift
//  CoordinatorPattern
//
//  Created by Takasur Azeem on 7/26/21.
//

import UIKit

class LoginPresenter {
    
    private weak var delegate: LoginViewControllerDelegate?
    private weak var navigationController: UINavigationController?
    
    init(presenter: LoginViewControllerDelegate, navigationController: UINavigationController?) {
        self.delegate = presenter
        self.navigationController = navigationController
    }
    
    func login() {
        delegate?.didLoginSuccessfully()
    }
    
    func moveToDashboard() {
        guard let navigationController = navigationController else { return }
        let dashboardCoordinator = DashboardCoordinator(navigationController: navigationController)
        dashboardCoordinator.start()
    }
}
