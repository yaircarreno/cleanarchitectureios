//
//  AuthFirebaseCoordinator.swift
//  MainApp
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import DependencyInjectionResolver
import PlatformFirebase

class AuthFirebaseCoordinator: FirebaseCoordinator {
    
    var context: Context?
    var dependencyInjection: DependencyInjectionPort!
    
    init(context: Context, dependencyInjection: DependencyInjectionPort) {
        self.context = context
        self.dependencyInjection = dependencyInjection
    }
    
    func gotoLogin() {
        let viewController = dependencyInjection.makeLoginViewController()
        context?.push(viewController: viewController)
        
    }
    
    func gotoDashboard() {
        let viewController = dependencyInjection.makeDashboardViewController()
        context?.push(viewController: viewController)
    }
    
    func showAlertLogin() {
        let viewController = dependencyInjection.makeLoginViewController()
        viewController.alert()
    }
}
