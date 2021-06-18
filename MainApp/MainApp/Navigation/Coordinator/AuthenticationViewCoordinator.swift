//
//  AuthenticationViewCoordinator.swift
//  MainApp
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import DependencyInjectionResolver
import Authentication

class AuthenticationViewCoordinator: AuthenticationCoordinator {
    
    var context: Context?
    var dependencyInjection: DependencyInjectionPort!
    
    init(context: Context, dependencyInjection: DependencyInjectionPort) {
        self.context = context
        self.dependencyInjection = dependencyInjection
    }
    
    func gotoRegister() {
        let viewController = dependencyInjection.makeRegisterViewController()
        context?.push(viewController: viewController)
    }
}
