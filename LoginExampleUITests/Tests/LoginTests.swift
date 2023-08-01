//
//  LoginTests.swift
//  LoginExampleUITests
//
//  Created by Dernival Liandro on 31/07/23.
//  Copyright © 2023 Gary Tokman. All rights reserved.
//

import Foundation

class LoginTests: HooksTests {
    
    let loginPage = LoginPageObject()

    func testLoginSucessfully() {
        loginPage.checkTextHomeIsDisplayed()
        loginPage.fillFieldEmailAddress(email: "liandro.sys@gmail.com")
        loginPage.fillFieldPassword(password: "1234567")
        loginPage.clickOnContinueButton()
    }

}
