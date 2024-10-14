//
//  Logger.swift
//  swift-ui-base
//
//  Created by Tyler Le on 11/10/24.
//  Copyright © 2024 Rootstrap. All rights reserved.
//

import Foundation
import Logging
import SwiftLogConsoleColors

let spinner = "=================================================="
let running = "========= App is running success... ✅ ==========="
let initSpace = "======= "
let debugP = "🔵"
let infoP = "🟢"
let errorP = "🔴"
let warningP = "🟡"
let doneP = "✅"

class Log {
    
    static func config() {
        iApp()
    }
    
    static func iApp() {
        d(running)
        d(spinner) // init
        i("APP ENVIRONMENT: " + AppEnv.current.rawValue)
        i("API URL: " + AppEnv.apiUrl)
        d(spinner) // end
    }
    
    enum LogType {
        case DEBUG, INFO, ERROR, WARNING, DONE
        var icon: String {
            switch self {
            case .DEBUG: return debugP
            case .INFO: return infoP
            case .ERROR: return errorP
            case .WARNING: return warningP
            case .DONE: return doneP
            }
        }
    }
    
    static private func sMsg(_ message: String, type: LogType) {
        let appName = AppEnv.appName
        let icon = type.icon
        let message = "\(icon): \(message)"
        print(message)
    }
    
    /// Log a message passing with the ``DEBUG`` Type.
    static func d(_ message: String) { sMsg(message, type: .DEBUG) }
    
    /// Log a message passing with the ``INFO`` Type.
    static func i(_ message: String) { sMsg(message, type: .INFO) }
    
    // ERROR
    static func e(_ message: String) { sMsg(message, type: .ERROR) }
    
    // WARNING
    static func w(_ message: String) { sMsg(message, type: .WARNING) }
    
    // DONE
    static func dn(_ message: String) { sMsg(message, type: .DONE) }
}
