//
//  DashboardViewModel.swift
//  Category
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Domain

public class DashboardView {
    
    private var authenticationUseCase: AuthenticationUseCasePort
    
    public init(authenticationUseCase: AuthenticationUseCasePort) {
        self.authenticationUseCase = authenticationUseCase
    }
    
    func signout() {
        authenticationUseCase.logout()
    }
}
