//
//  DependencyConfiguration.swift
//  MainApp
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import DependencyInjectionResolver
import Authentication
import Resolver
import PlatformFirebase

class DependencyConfiguration {
    
    var dependencyInjection: DependencyInjectionPort!
    
    init(creator: Creator, context: Context) {
        dependencyInjection = creator.createDependenciesManager()
        configureContext(context: context)
        frameworkEnvironment()
        frameworkCoordinator()
        dependencyInjection.registerDependencies()
        viewCoordinator()
    }
    
    private func configureContext(context: Context) {
        Resolver.register { context as Context }
    }
    
     private func frameworkEnvironment() {
     Resolver.register { PlatformFirebase() as FirebaseEnvironment }
     }
    
    private func frameworkCoordinator() {
        Resolver.register { AuthFirebaseCoordinator(context: Resolver.resolve(), dependencyInjection: self.dependencyInjection) as FirebaseCoordinator }
    }
    
    private func viewCoordinator() {
        let loginViewController: LoginViewController = Resolver.resolve()
        Resolver.register { loginViewController }
            .resolveProperties { (resolver, model) in
                model.coordinator = resolver.optional()
        }
        Resolver.register { AuthenticationViewCoordinator(context: Resolver.resolve(), dependencyInjection: self.dependencyInjection) as AuthenticationCoordinator }
    }
    
    func makeAppCoordinator() -> AppCoordinator {
        return AppCoordinator(context: Resolver.resolve(), dependencyInjection: dependencyInjection!)
    }
    
    func makeLoginViewController() -> LoginViewController {
        return dependencyInjection.makeLoginViewController()
    }
    
    func makeRegisterViewController() -> RegisterViewController {
        return dependencyInjection.makeRegisterViewController()
    }
}

