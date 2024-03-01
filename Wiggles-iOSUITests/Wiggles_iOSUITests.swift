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
        //Check elements of dog list screen
        let dogListScreen = DogList(app: app)
        XCTAssertTrue(dogListScreen.greetingName.exists)
        XCTAssertTrue(dogListScreen.greetingMessage.exists)
        XCTAssertTrue(dogListScreen.firstDog.exists)
        XCTAssertTrue(dogListScreen.secondDog.exists)
        let firstdogName = dogListScreen.firstDog.label
        //tap to select a dog
        dogListScreen.clickFirstDogImage()
        
        //Check details of selected exist
        let detailScreen = DogDetail(app: app)
        XCTAssertTrue(detailScreen.dogName.exists)
        // check its the same dog
        XCTAssertEqual(detailScreen.dogName.label, firstdogName)
        XCTAssertTrue(detailScreen.mystorytext.exists)
        
        detailScreen.favouriteButton.tap()
        // todo assert some sort of alert etc. on button clicks

        detailScreen.mystorytext.swipeRight()
        detailScreen.messageButton.tap()
        // todo assert some sort of alert etc. on button clicks
        
        detailScreen.mystorytext.swipeUp()
        detailScreen.adoptMeButton.tap()
        // todo assert some sort of alert etc. on button clicks
        
        detailScreen.mystorytext.swipeDown()
        detailScreen.clickBackButton()
        
        //navigate back to home page
        XCTAssertTrue(dogListScreen.firstDog.exists)
        XCTAssertTrue(dogListScreen.secondDog.exists)
        
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // POM pattern, see https://medium.nextlevelswift.com/your-ultimate-xcuitest-ios-design-pattern-page-object-model-pom-bfb82b265bb0
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
