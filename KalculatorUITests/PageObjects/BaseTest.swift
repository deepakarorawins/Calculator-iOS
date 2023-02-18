//
//  BaseTest.swift
//  KalculatorUITests
//
//  Created by Deepak Arora on 2/18/23.
//  Copyright © 2023 Jogendra Singh. All rights reserved.
//

import XCTest

class Logger {
    
    func log(_ mlog: String){
        NSLog(mlog)
    }
}
    
    public class BaseTest {
        
        typealias Completion = (()->Void)?
        let app = XCUIApplication()
        let log = Logger().log
        
        required init(timeout: TimeInterval = 10, completion: Completion=nil){
            log("Waiting \(timeout)s for \(String(describing: self)) existence")
            XCTAssert(rootElement.waitForExistence(timeout: timeout),
                      "Page \(String(describing:self)) waited, but not loaded")
            completion?()
            
        }
        
        var rootElement: XCUIElement{
            fatalError("subclass should override rootElement")
        }
        
        //Button
        func button(_ name: String)->XCUIElement{
            return app.buttons[name]
        }
        
        //Navigation Bar
        func navBar(_ name: String)->XCUIElement{
            return app.navigationBars[name]
        }
        
        //Secure Field
        func secureField(_ name: String)->XCUIElement{
            return app.secureTextFields[name]
        }
        
        //Text Field
        func textField(_ name: String)->XCUIElement{
            return app.textFields[name]
        }
        
        //Text View
        func textView(_ name: String)->XCUIElement{
            return app.textViews[name]
        }
        
        //Text View
        func text(_ name: String)->XCUIElement{
            return app.staticTexts[name]
        }
        
        
    
}
