//
//  Presenters+Injection.swift
//  Category
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver
import Domain

extension Resolver {

    public static func registerPresentersCategory() {
        let authentication: AuthenticationUseCase = Resolver.resolve()
        register { DashboardView(authenticationUseCase: authentication) as DashboardView }
    }
}
