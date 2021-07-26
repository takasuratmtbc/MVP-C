//
//  DashboardPresenter.swift
//  CoordinatorPattern
//
//  Created by Takasur Azeem on 7/26/21.
//

import Foundation

class DashboardPresenter {
    
    private weak var presenter: DashboardViewControllerDelegate?
    
    init(presenter: DashboardViewControllerDelegate) {
        self.presenter = presenter
    }
    
    
}
