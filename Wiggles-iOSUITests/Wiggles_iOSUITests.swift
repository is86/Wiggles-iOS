//
//  Wiggles_iOSUITests.swift
//  Wiggles-iOSUITests
//
//  Created by Isha Soni on 01/03/2024.
//

import XCTest

final class Wiggles_iOSUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSmokeViewPuppiesListAndDetail() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        //access to the scrollable content of the page
        let scrollViewsQuery = app.scrollViews
        //get the elements in scroll view
        let elementsQuery = scrollViewsQuery.otherElements
        // get the components
        let greetingName = app.staticTexts["GreetingName"]
        //Check teh greeting name exists
        XCTAssertTrue(greetingName.exists)
        
        let greetingMessage = app.staticTexts["GreetingMessage"]
        XCTAssertTrue(greetingMessage.exists)

        let dog1 = elementsQuery.staticTexts["Dog-Parkinson"]
        XCTAssertTrue(dog1.exists)
        
        let dog2 = elementsQuery.staticTexts["Dog-MiloMan"]
        XCTAssertTrue(dog2.exists)
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
