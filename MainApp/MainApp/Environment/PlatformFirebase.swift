//
//  PlatformFirebase.swift
//  MainApp
//
//  Created by Yair Carreno on 12/10/19.
//  Copyright © 2019 Yair Carreno. All rights reserved.
//

import Foundation
import PlatformFirebase

class PlatformFirebase: FirebaseEnvironment {
    
    var rootURL: String = Environment.rootURL.absoluteString
    var apiKey: String = Environment.apiKey
}
