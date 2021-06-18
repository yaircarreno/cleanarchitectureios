//
//  Presenters+Injection.swift
//  Authentication
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver
import Domain

extension Resolver {

    public static func registerPresenters() {
        let authenticationUseCase: AuthenticationUseCase = Resolver.resolve()
        register { LoginViewModel(authenticationUseCase: authenticationUseCase) as LoginViewModel }
        register { RegisterViewModel(authenticationUseCase: authenticationUseCase) as RegisterViewModel }
    }
}
