//
//  LoginViewModel.swift
//  Authentication
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Domain

public class LoginViewModel {
    
    private var authenticationUseCase: AuthenticationUseCasePort
    
    public init(authenticationUseCase: AuthenticationUseCasePort) {
        self.authenticationUseCase = authenticationUseCase
    }
    
    func verifySession() {
        authenticationUseCase.verifySession()
    }
    
    func login(email: String, password: String) {
        authenticationUseCase.loginUser(user: User(email: email, password: password))
    }
}
