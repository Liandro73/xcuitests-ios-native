//
//  LoginExampleUITestsLaunchTests.swift
//  LoginExampleUITests
//
//  Created by Dernival Liandro on 29/07/23.
//  Copyright © 2023 Gary Tokman. All rights reserved.
//

import XCTest

class HooksTests: XCTestCase {

    let app = XCUIApplication()
    let loginPage = LoginPageObject()

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
    }

}
