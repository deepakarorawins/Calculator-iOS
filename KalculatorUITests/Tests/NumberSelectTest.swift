//
//  NumberSelectTest.swift
//  KalculatorUITests
//
//  Created by Deepak Arora on 2/18/23.
//  Copyright © 2023 Jogendra Singh. All rights reserved.
//

import XCTest

class NumberSelectTest: XCTestCase {

    override func setUp(){
        super.setUp()
        continueAfterFailure=false
        XCUIApplication().launch()
    }
    
    override func tearDown(){
        //
    }
    
    func testSelectAllButtons(){
        CalculatorPage().tapOne()
    }
    
    func testSelectMultipleButtons(){
        CalculatorPage()
            .tapOne()
            .tapTwo()
            .tapThree()
            .tapFour()
            .tapFive()
    }
    
    func testSelectOneButtonAccessibilityIdentifier(){
        CalculatorPage().tapOneByAI()
    }
    
}
