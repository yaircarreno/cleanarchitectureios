//
//  PlatformFirebase+Injection.swift
//  PlatformFirebase
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver
import Authentication

extension Resolver {

    public static func registerFirebaseDependencies() {
        let authenticationRepository: AuthenticationRepository = Resolver.resolve()
        register { authenticationRepository }
        .resolveProperties { (resolver, model) in
            model.authenticationDataFramework = resolver.optional()
        }
        register { resolve() as AuthenticationDataFramework as AuthenticationDataFrameworkPort }
        register { AuthenticationDataFramework() }
    }
}
