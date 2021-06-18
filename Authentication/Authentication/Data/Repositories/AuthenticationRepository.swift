//
//  AuthenticationRepository.swift
//  Authentication
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Domain

public class AuthenticationRepository: AuthenticationRepositoryPort {
    
    public var authenticationDataFramework: AuthenticationDataFrameworkPort!
    
    public func verifySession() {
        authenticationDataFramework.verifySession()
    }
    
    public func loginUser(user: User) {
        authenticationDataFramework.loginUser(user: user)
    }
    
    public func registerUser(user: User) {
        authenticationDataFramework.registerUser(user: user)
    }
    
    public func logoutUser() {
        authenticationDataFramework.logoutUser()
    }
}
