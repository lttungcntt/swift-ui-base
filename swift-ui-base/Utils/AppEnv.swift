//
//  Environment.swift
//  swift-ui-base
//
//  Created by Tyler Le on 11/10/24.
//  Copyright © 2024 Rootstrap. All rights reserved.
//

import Foundation

private enum ConfigKey: String {
    case
    ENVIRONMENT,
    API_URL
}

enum AppEnv: String, Codable, CaseIterable {
    case
    DEV,
    UAT,
    PRG,
    PRD
    
    private static subscript(key: ConfigKey) -> String {
        guard let result = Bundle.main.object(forInfoDictionaryKey: key.rawValue) as? String else {
            assert(false, "Can not find \(key) config, please check config in *.xcconfig")
            return ""
        }
        return result
    }
    
    static var current: AppEnv {
        get {
            return AppEnv(rawValue: AppEnv[.ENVIRONMENT]) ?? .DEV
        }
    }
    
    static var apiUrl: String {
        get {
            return AppEnv[.API_URL]
        }
    }
}
