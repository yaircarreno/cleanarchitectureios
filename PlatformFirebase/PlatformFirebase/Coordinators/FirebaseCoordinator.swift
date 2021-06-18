//
//  FirebaseCoordinator.swift
//  PlatformFirebase
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation

public protocol FirebaseCoordinator: AnyObject {
    
    func gotoLogin()
    
    func gotoDashboard()
    
    func showAlertLogin()
}
