//
//  App.swift
//  swift-ui-base
//
//  Created by Tyler iOS on 4/1/20.
//  Copyright © 2020 Rootstrap. All rights reserved.
//

import Foundation

struct App {
    static let domain = Bundle.main.bundleIdentifier ?? ""
    
    static func error(
        domain: ErrorDomain = .generic,
        code: Int? = nil,
        localizedDescription: String = ""
    ) -> NSError {
        return NSError(domain: App.domain + "." + domain.rawValue,
                       code: code ?? 0,
                       userInfo: [NSLocalizedDescriptionKey: localizedDescription])
    }
}

enum ErrorDomain: String {
    case generic = "GenericError"
    case parsing = "ParsingError"
}
