//
//  AuthenticationDataFramework.swift
//  PlatformFirebase
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import Resolver
import Firebase
import Authentication
import Domain

public class AuthenticationDataFramework: AuthenticationDataFrameworkPort {
    
    var coordinator: FirebaseCoordinator = Resolver.resolve()
    var environment: FirebaseEnvironment = Resolver.resolve()
    
    init() {
        if FirebaseApp.app() == nil {
            FirebaseApp.configure()
        }
    }
    
    public func verifySession() {
        if Auth.auth().currentUser != nil {
            coordinator.gotoDashboard()
        }
    }
    
    public func loginUser(user: Domain.User) {
        print(environment.apiKey)
        Auth.auth().signIn(withEmail: user.email, password: user.password) { (user, error) in
            if error == nil {
                self.coordinator.gotoDashboard()
            }
            else{
                self.coordinator.showAlertLogin()
            }
        }
    }
    
    public func registerUser(user: Domain.User) {
        Auth.auth().createUser(withEmail: user.email, password: user.password) { authResult, error in
            if error != nil {
                print(error!._code)
                return
            }
            self.coordinator.gotoDashboard()
        }
    }
    
    public func logoutUser() {
        try! Auth.auth().signOut()
        coordinator.gotoLogin()
    }
}
