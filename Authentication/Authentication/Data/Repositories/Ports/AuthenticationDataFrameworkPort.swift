//
//  AuthenticationDataFrameworkPort.swift
//  Authentication
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Domain

public protocol AuthenticationDataFrameworkPort {
    
    func verifySession()
    
    func loginUser(user: User)
    
    func registerUser(user: User)
    
    func logoutUser()
}
