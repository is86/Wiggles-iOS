import Foundation
import XCTest

class DogList {
    
    let app: XCUIApplication
    
    let greetingName: XCUIElement
    let greetingMessage: XCUIElement
    let firstDog: XCUIElement
    let secondDog: XCUIElement
    //initialise idetinfiers and assign so that we can use it in our tests
    init(app: XCUIApplication) {
        self.app = app
        greetingName = app.staticTexts["GreetingName"]
        greetingMessage = app.staticTexts["GreetingMessage"]
        firstDog = app.staticTexts["Dog-Parkinson"]
        secondDog = app.staticTexts["Dog-MiloMan"]
    }
    //click the dog image to view detail
    func clickFirstDogImage() {
        app.images.firstMatch.tap()
    }
}
