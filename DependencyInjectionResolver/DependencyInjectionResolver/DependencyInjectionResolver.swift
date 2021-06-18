//
//  DependencyInjectionResolver.swift
//  DependencyInjectionResolver
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver
import Authentication
import Category

public class DependencyInjectionResolver: DependencyInjectionPort {
    
    public init() {}
    
    public func registerDependencies() {
        Resolver.registerAllServices()
    }
    
    public func makeLoginViewController() -> LoginViewController {
        let loginViewController: LoginViewController = Resolver.resolve()
        return loginViewController
    }
    
    public func makeRegisterViewController() -> RegisterViewController {
        let registerViewController: RegisterViewController = Resolver.resolve()
        return registerViewController
    }
    
    public func makeDashboardViewController() -> DashboardViewController {
        let dashboardViewController: DashboardViewController = Resolver.resolve()
        return dashboardViewController
    }
}
