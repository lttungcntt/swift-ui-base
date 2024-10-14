//
//  XCTestCaseExtension.swift
//  swift-ui-baseUITests
//
//  Created by Tyler iOS on 2/13/20.
//  Copyright © 2020 TopTier labs. All rights reserved.
//

import XCTest

extension XCTestCase {
  func waitFor(element: XCUIElement, timeOut: TimeInterval = 2) {
    let exists = NSPredicate(format: "exists == 1")
    
    expectation(for: exists, evaluatedWith: element, handler: nil)
    waitForExpectations(timeout: timeOut, handler: nil)
  }
}
