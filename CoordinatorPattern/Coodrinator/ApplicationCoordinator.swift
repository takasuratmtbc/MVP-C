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
    }
    
    func start() {
        window.rootViewController = rootNavigationController
        loginCoordinator.start()
        window.makeKeyAndVisible()
    }
    
}


protocol Storyboarded {
    static func instantiate(sbName: StoryBoardNames) -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate(sbName: StoryBoardNames) -> Self {
        // this pulls out "MyApp.MyViewController"
        let fullName = NSStringFromClass(self)

        // this splits by the dot and uses everything after, giving "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]

        // load our storyboard
        let storyboard = UIStoryboard(name: sbName.rawValue, bundle: Bundle.main)

        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}

enum StoryBoardNames: String {
    case main = "Main"
    
}
