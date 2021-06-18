//
//  UI+Injection.swift
//  Authentication
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver

extension Resolver {
    
    public static func registerViewControllers() {
        
        register { LoginViewController() }
            .resolveProperties { (resolver, model) in
                model.viewModel = resolver.optional()
        }
        register { RegisterViewController() }
            .resolveProperties { (resolver, model) in
                model.viewModel = resolver.optional()
        }
    }
}
