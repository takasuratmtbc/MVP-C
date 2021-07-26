//
//  DashboardViewController.swift
//  CoordinatorPattern
//
//  Created by Takasur Azeem on 7/26/21.
//

import UIKit

protocol DashboardViewControllerDelegate: AnyObject {
    
}

class DashboardViewController: UIViewController, Storyboarded {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension DashboardViewController: DashboardViewControllerDelegate {
    
}
