//
//  LoginExampleUITests.swift
//  LoginExampleUITests
//
//  Created by Dernival Liandro on 29/07/23.
//  Copyright © 2023 Gary Tokman. All rights reserved.
//

import XCTest

final class LoginExampleUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        
    }

    func testLogin() throws {
        let app = XCUIApplication()
        app.launch()
        
        let textHome = app.staticTexts["Bem Vindo"]
        XCTAssert(textHome.exists)
        
        let fieldEmailAddress = app.textFields["login_username"]
        fieldEmailAddress.tap()
        fieldEmailAddress.typeText("liandro.sys@gmail.com")
        
        let fieldPassword = app.textFields["login_password"]
        fieldPassword.tap()
        fieldPassword.typeText("1234567")
        
        let btnContinue = app.buttons["login_button"]
        btnContinue.tap()
    }

}
