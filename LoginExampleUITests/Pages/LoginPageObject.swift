//
//  LoginExampleUITests.swift
//  LoginExampleUITests
//
//  Created by Dernival Liandro on 29/07/23.
//  Copyright © 2023 Gary Tokman. All rights reserved.
//

import Foundation
import XCTest

class LoginPageObject {
    
    let helper = PageObjectHelper()
    
    func checkTextHomeIsDisplayed() {
        helper.checkTextExist(text: "Bem Vindo")
    }
    
    func fillFieldEmailAddress(email: String) {
        helper.sendKeysNameTextFields(name: "login_username", value: email)
    }
    
    func fillFieldPassword(password: String) {
        helper.sendKeysNameTextFields(name: "login_password", value: password)
    }
    
    func clickOnContinueButton() {
        helper.clickOnElementButtons(idn: "login_button")
    }

}
