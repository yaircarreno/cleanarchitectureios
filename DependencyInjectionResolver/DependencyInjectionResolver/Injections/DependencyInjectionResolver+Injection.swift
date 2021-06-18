//
//  DependencyInjectionResolver+Injection.swift
//  DependencyInjectionResolver
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver
import Domain
import Authentication
import Category
import PlatformFirebase

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        registerUseCases()
        registerRepositories()
        registerFirebaseDependencies()
        registerPresenters()
        registerPresentersCategory()
        registerViewControllers()
        registerViewControllersCategory()
    }
}
