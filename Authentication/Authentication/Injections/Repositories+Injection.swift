//
//  Repositories+Injection.swift
//  Authentication
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver
import Domain

extension Resolver {

    public static func registerRepositories() {
        let authenticationUseCase: AuthenticationUseCase = Resolver.resolve()
        register { authenticationUseCase }
        .resolveProperties { (resolver, model) in
            model.authenticationRepository = resolver.optional()
        }
        register { resolve() as AuthenticationRepository as AuthenticationRepositoryPort }
        register { AuthenticationRepository() }
    }
}
