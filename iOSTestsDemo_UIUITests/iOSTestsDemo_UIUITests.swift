//
//  iOSTestsDemo_UIUITests.swift
//  iOSTestsDemo_UIUITests
//
//  Created by Jorge de Carvalho on 28/12/21.
//

import XCTest

class iOSTestsDemo_UIUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        // Se possuirmos apenas um botão na tela, o element o acessará:
        // app.buttons.element

        // Se possuirmos mais de um botão na tela, o firstMatch acessará o primeiro botão disponível:
        // app.buttons.firstMatch
        // Acessa o botão com o nome definido no array:
        let loginButton = app.buttons["Login"]
        
        // Acessa um texto, uma label específica:
        // "Título" é o accessibilityIdentifier mas o texto é "Cadastrar"
        let label = app.staticTexts["Título"]
        XCTAssertEqual(label.label, "Cadastrar")
        
        // Verificando se o elemento existe na tela:
        XCTAssertTrue(label.exists)
        
        // Simulando um toque no botão:
        loginButton.tap()
        XCTAssertFalse(label.exists)
        
        loginButton.tap()
        XCTAssertTrue(label.exists)
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
