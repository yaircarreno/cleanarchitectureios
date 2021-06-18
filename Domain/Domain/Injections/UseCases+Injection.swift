//
//  UseCases+Injection.swift
//  Domain
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver

extension Resolver {

    public static func registerUseCases() {
        register { AuthenticationUseCase() as AuthenticationUseCase }
    }
}
