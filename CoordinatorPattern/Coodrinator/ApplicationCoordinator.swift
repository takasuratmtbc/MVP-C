//
//  ApplicationCoordinator.swift
//  CoordinatorPattern
//
//  Created by Takasur Azeem on 7/26/21.
//

import UIKit

class ApplicationCoordinator: Coordinator {
    
    private let window: UIWindow!
    private let rootNavigationController: UINavigationController!
    private let loginCoordinator: LoginCoordinator!
    
    init(window: UIWindow) {
        self.window = window
        self.rootNavigationController = UINavigationController()
        loginCoordinator = LoginCoordinator(navigationController: rootNavigationController)
        loginCoordinator.navigationController = rootNavigationController
    }
    
    func start() {
        window.rootViewController = rootNavigationController
        loginCoordinator.start()
        window.makeKeyAndVisible()
    }
    
}
