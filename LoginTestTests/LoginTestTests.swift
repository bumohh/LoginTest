//
//  LoginTestTests.swift
//  LoginTestTests
//
//  Created by Bruno Gomez on 2/10/22.
//

import XCTest
@testable import LoginTest

class LoginTestTests: XCTestCase {

    var vm : ViewModel?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        vm = ViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        vm = nil
    }
    
    func testValidateUsername() {
        guard let result = vm?.validateUsername("false") else { return }
        XCTAssertFalse(result)
        guard let result1 = vm?.validateUsername("thisusernameistoolongforittobevalid") else { return }
        XCTAssertFalse(result1)
        guard let result2 = vm?.validateUsername("validusername") else { return }
        XCTAssertTrue(result2)
    }
    
    func testValidPassword() {
        guard let result = vm?.validatePassword("false") else { return }
        XCTAssertFalse(result)
        guard let result1 = vm?.validatePassword("invalid password because it is too long ") else { return }
        XCTAssertFalse(result1)
        guard let result2 = vm?.validatePassword("validpassword") else { return }
        XCTAssertTrue(result2)
    

}

}
