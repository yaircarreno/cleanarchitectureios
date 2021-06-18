//
//  DependencyInjectionPort.swift
//  DependencyInjectionResolver
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Authentication
import Category

public protocol DependencyInjectionPort {
    
    func registerDependencies()
    
    func makeLoginViewController() -> LoginViewController
    
    func makeRegisterViewController() -> RegisterViewController
    
    func makeDashboardViewController() -> DashboardViewController
}
