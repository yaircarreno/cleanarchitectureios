//
//  UI+Injection.swift
//  Category
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver

extension Resolver {
    
    public static func registerViewControllersCategory() {
        
        register { DashboardViewController() }
            .resolveProperties { (resolver, model) in
                model.viewModel = resolver.optional()
        }
    }
}

