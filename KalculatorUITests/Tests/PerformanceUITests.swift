//
//  PerformanceUITests.swift
//  KalculatorUITests
//
//  Created by Deepak Arora on 2/18/23.
//  Copyright © 2023 Jogendra Singh. All rights reserved.
//

import XCTest

class PerformanceUITest: XCTestCase{

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        //
    }
    
    func testGeneralCalculatorPerformance(){
        measure {
            NumberSelectTest().testSelectAllButtons()
        }
    }
    
    func testCalculatorPerformanceMetricOptions(){
        let metrics: [XCTMetric] = [XCTMemoryMetric(), XCTStorageMetric(), XCTClockMetric()]
        
        let measureOptions = XCTMeasureOptions.default
        measureOptions.iterationCount = 3
        
        measure(metrics: metrics, options: measureOptions){
            
            NumberSelectTest().testSelectAllButtons()
        }
                
    }
    
}
