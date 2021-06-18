//
//  FirebaseEnvironment.swift
//  PlatformFirebase
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation

public protocol FirebaseEnvironment {
    var rootURL: String { get }
    var apiKey: String { get }
}
