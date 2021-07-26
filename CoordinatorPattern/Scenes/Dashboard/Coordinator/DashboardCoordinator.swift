//
//  DashboardCoordinator.swift
//  CoordinatorPattern
//
//  Created by Takasur Azeem on 7/26/21.
//

import UIKit

class DashboardCoordinator: Coordinator {
    
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let dashboard = DashboardViewController.instantiate(sbName: .main)
        navigationController.pushViewController(dashboard, animated: true)
    }
        
}
