//
//  PageObjectHelper.swift
//  LoginExampleUITests
//
//  Created by Dernival Liandro on 31/07/23.
//  Copyright © 2023 Gary Tokman. All rights reserved.
//

import Foundation
import XCTest

class PageObjectHelper: XCTestCase {
    
    let app = XCUIApplication()
    let elementsQuery = XCUIApplication().scrollViews.otherElements
    let collectionView = XCUIApplication().collectionViews
    
    func waitElement(element: Any, timeout: TimeInterval = 100.0) {
        let exists = NSPredicate(format: "exists == 1")
        
        expectation(for: exists, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: timeout, handler: nil)
    }
    
    func waitMessage(message: String) {
        waitLoadingDisapper()
        let predicate = NSPredicate(format: "label CONTAINS[c] %@", message)
        let result = app.staticTexts.containing(predicate)
        let element = XCUIApplication().staticTexts[result.element.firstMatch.label]
        waitElement(element: element)
    }
    
    func waitLoadingDisapper() {
        sleep(2)
        let element = XCUIApplication().activityIndicators["Em andamento"]
        let exists = NSPredicate(format: "exists == 0")
        
        expectation(for: exists, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: 200.0, handler: nil)
    }
    
    func okButton() {
        let okButton = app.toolbars.buttons["OK"]
        okButton.tap()
    }
    
    func clickOnElementButtons(idn: String) {
        app.buttons[idn].tap()
    }
    
    func tapElementLabel(_ label: String) {
        app.textFields[label].tap()
    }
    
    func tapCellWithText(_ text: String) {
        waitLoadingDisapper()
        let searchedCell = app.cells.containing(NSPredicate(format: "label CONTAINS %@", text)).element
        searchedCell.firstMatch.tap()
        waitLoadingDisapper()
    }
    
    func tapStaticTexts(staticText: String) {
        waitElement(element: elementsQuery.staticTexts[staticText])
        elementsQuery.staticTexts[staticText].tap()
    }
    
    func tapCollectionStaticTexts(staticText: String) {
        waitElement(element: collectionView.staticTexts[staticText])
        collectionView.staticTexts[staticText].tap()
    }
    
    func sendKeysTextFields(name: String, value: String) {
        let element = elementsQuery.textFields[name]
        element.tap()
        element.typeText(value)
    }
    
    func sendKeysSecureTextFields(name: String, value: String) {
        let element = elementsQuery.secureTextFields[name]
        element.tap()
        element.typeText(value)
    }
    
    func clickAgreement(idn: String) {
        let agreementcheckboxElement = XCUIApplication().scrollViews.otherElements.otherElements[idn]
        agreementcheckboxElement.tap()
    }
    
    func sendKeysNameTextFields(name: String, value: String) {
        let documenttextfieldTextField = app.textFields[name]
        documenttextfieldTextField.tap()
        documenttextfieldTextField.typeText(value)
    }
    
    func skipScreen(_ page: String, btn: String) {
        if app.buttons[page].exists {
            waitLoadingDisapper()
            
            let alert = app.alerts.firstMatch
            if alert.exists {
                alert.buttons["Permitir"].tap()
            }
            waitLoadingDisapper()
            clickOnElementButtons(idn: btn)
        }
    }
    
    func swipeToBtn() {
        let scroll = app.scrollViews.element
        scroll.swipeDown()
    }
    
    func checkBtnExist(idn: String) {
        let button = app.buttons[idn]
        waitElement(element: button)
        XCTAssert(button.exists)
    }
    
    func checkTextExist(text: String) {
        let textElement = app.staticTexts[text]
        waitElement(element: textElement)
        XCTAssert(textElement.exists)
    }
    
}
