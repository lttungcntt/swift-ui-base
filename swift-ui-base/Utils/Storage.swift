//
//  Storage.swift
//  swift-ui-base
//
//  Created by Tyler Le on 11/10/24.
//  Copyright © 2024 Rootstrap. All rights reserved.
//


import Foundation

class Storage {
    static func set<T>(key: AppKeys, value: T) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    static func get<T>(key: AppKeys) -> T? {
        return UserDefaults.standard.value(forKey: key.rawValue) as? T
    }
}


enum AppKeys: String {
    case
    isLogin
}
