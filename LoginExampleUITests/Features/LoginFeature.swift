//
//  LoginFeature.swift
//  LoginExampleUITests
//
//  Created by Dernival Liandro on 01/08/23.
//  Copyright © 2023 Gary Tokman. All rights reserved.
//

import XCTest

protocol login {
    func testLoginSucessfully()
}

extension HooksTests {
    
    func givenThatImInTheLoginPage() {
        XCTContext.runActivity(named: "Given That Im In The Login Page") { XCTActivity in
            loginPage.checkTextHomeIsDisplayed()
        }
    }
    
    func whenIFillAllRequiredFields() {
        XCTContext.runActivity(named: "When I Fill All Required Fields") { XCTActivity in
            loginPage.fillFieldEmailAddress(email: "liandro.sys@gmail.com")
            loginPage.fillFieldPassword(password: "1234567")
        }
    }

    func andIClickOnContinueButton() {
        XCTContext.runActivity(named: "And I Click On Continue Button") { XCTActivity in
            loginPage.clickOnContinueButton()
        }
    }
    
    func thenIShouldSeeTheLoginText() {
        XCTContext.runActivity(named: "Then I Should See The Login Text") { XCTActivity in
            loginPage.checkTextHomeIsDisplayed()
        }
    }
    
}
