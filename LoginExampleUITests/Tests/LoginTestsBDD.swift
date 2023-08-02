//
//  LoginFeature.swift
//  LoginExampleUITests
//
//  Created by Dernival Liandro on 01/08/23.
//  Copyright © 2023 Gary Tokman. All rights reserved.
//

import XCTest

class LoginFeature: HooksTests, login {
    
    func testLoginSucessfully() {
        givenThatImInTheLoginPage()
        whenIFillAllRequiredFields()
        andIClickOnContinueButton()
        thenIShouldSeeTheLoginText()
    }
    
}
