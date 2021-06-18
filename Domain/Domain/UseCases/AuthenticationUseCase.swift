//
//  AuthenticationUseCase.swift
//  Domain
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation

public class AuthenticationUseCase: AuthenticationUseCasePort {
    
    public var authenticationRepository: AuthenticationRepositoryPort!
    
    public func verifySession() {
        authenticationRepository.verifySession()
    }
    
    public func loginUser(user: User) {
        authenticationRepository.loginUser(user: user)
    }
    
    public func registerUser(user: User) {
        authenticationRepository.registerUser(user: user)
    }
    
    public func logout() {
        authenticationRepository.logoutUser()
    }
}
