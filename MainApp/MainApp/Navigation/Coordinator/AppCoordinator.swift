//
//  AppCoordinator.swift
//  MainApp
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import DependencyInjectionResolver

class AppCoordinator: Coordinator {
    
    var context: Context?
    var dependencyInjection: DependencyInjectionPort!
    
    init(context: Context, dependencyInjection: DependencyInjectionPort) {
        self.context = context
        self.dependencyInjection = dependencyInjection
    }
    
    func gotoLogin() {
        let viewController = dependencyInjection.makeLoginViewController()
        context?.navigationController.navigationBar.isHidden = true;
        context?.push(viewController: viewController)
    }
}
