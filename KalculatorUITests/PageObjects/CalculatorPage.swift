//
//  CalculatorPage.swift
//  KalculatorUITests
//
//  Created by Deepak Arora on 2/18/23.
//  Copyright © 2023 Jogendra Singh. All rights reserved.
//

import XCTest

public class CalculatorPage: BaseTest {
    
    override var rootElement: XCUIElement {
        return app.staticTexts["1"]
    }
    
    // Page Elements
    lazy var oneButton = app.staticTexts["1"]
    lazy var twoButton = app.staticTexts["2"]
    lazy var threeButton = app.staticTexts["3"]
    lazy var fourButton = app.staticTexts["4"]
    lazy var fiveButton = app.staticTexts["5"]
    
    
    @discardableResult
    func tapOneByAI(completion: Completion = nil)-> Self {
        log("tap the One Button by accessibility identifier")
        app.buttons["TEST"].tap()
        return self
    }
    
    @discardableResult
    func tapOne(completion: Completion = nil)-> Self {
        log("tap the One Button")
        oneButton.tap()
        return self
    }
    
    @discardableResult
    func tapTwo(completion: Completion = nil)-> Self {
        log("tap the Two Button")
        twoButton.tap()
        return self
    }
    
    @discardableResult
    func tapThree(completion: Completion = nil)-> Self {
        log("tap the Three Button")
        threeButton.tap()
        return self
    }
    
    @discardableResult
    func tapFour(completion: Completion = nil)-> Self {
        log("tap the Four Button")
        fourButton.tap()
        return self
    }
    
    @discardableResult
    func tapFive(completion: Completion = nil)-> Self {
        log("tap the Five Button")
        fiveButton.tap()
        return self
    }
}
    
    

 
