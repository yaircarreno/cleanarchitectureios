//
//  RegisterViewModel.swift
//  Authentication
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Domain

public class RegisterViewModel {
    
    private var authenticationUseCase: AuthenticationUseCasePort
    
    public init(authenticationUseCase: AuthenticationUseCasePort) {
        self.authenticationUseCase = authenticationUseCase
    }
    
    func register(email: String, password: String) {
        authenticationUseCase.registerUser(user: User(email: email, password: password))
    }
}
