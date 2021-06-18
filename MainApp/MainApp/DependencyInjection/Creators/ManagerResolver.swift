//
//  ManagerResolver.swift
//  MainApp
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import DependencyInjectionResolver

class ManagerResolver: Creator {
    
    func createDependenciesManager() -> DependencyInjectionPort {
        return DependencyInjectionResolver()
    }
}
