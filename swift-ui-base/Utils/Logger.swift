//
//  Logger.swift
//  swift-ui-base
//
//  Created by Tyler Le on 11/10/24.
//  Copyright © 2024 Rootstrap. All rights reserved.
//

import Foundation
import Rainbow

let spinner = "=================================================="
let running = "============= App is running... =================="
let initSpace = "======= "

class Logger {

    static func iApp() {
        d(running)
        d(spinner) // init
        i("APP ENVIRONMENT: " + AppEnv.current.rawValue)
        i("API URL: " + AppEnv.apiUrl)
        d(spinner) // end
    }
    
    static func d(_ message: String) { print(message.blue) }
    
    static func i(_ message: String) { print(initSpace + message.blue) }
    
    static func e(_ message: String) { print(message.red) }
    
    static func w(_ message: String) { print(message.yellow) }
}
