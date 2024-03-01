import Foundation
import XCTest

class DetailScreen {
    
    let app: XCUIApplication
    let dogName: XCUIElement
    let mystorytext: XCUIElement

    let favouriteButton: XCUIElement
    let messageButton: XCUIElement
    let adoptMeButton: XCUIElement
    let backButton: XCUIElement

    init(app: XCUIApplication) {
        self.app = app
        dogName = app.staticTexts["DogNameDetail"]
        mystorytext = app.staticTexts["MyStoryText"]
        
        //buttons
        favouriteButton = app.buttons["FavouriteButton"]
        messageButton = app.buttons["MessageButton"]
        adoptMeButton = app.buttons["Adopt me"]
        backButton = app.buttons["BackButton"]
    }
    
    func clickFirstDogImage() {
        app.images.firstMatch.tap()
    }
    // to navigate back
    func clickBackButton() {
        backButton.tap()
    }
    
}
