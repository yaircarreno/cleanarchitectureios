//
//  Context.swift
//  MainApp
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import UIKit

class Context {
    
    let navigationController: UINavigationController
    
    init(with navigationController:UINavigationController) {
        self.navigationController = navigationController
    }
    
    func push(viewController: UIViewController) {
        if !((navigationController.viewControllers.contains(viewController))){
            navigationController.pushViewController(viewController, animated: true)
        } else {
            viewController.removeFromParent()
            navigationController.setViewControllers([viewController], animated: true)
        }
    }
}
