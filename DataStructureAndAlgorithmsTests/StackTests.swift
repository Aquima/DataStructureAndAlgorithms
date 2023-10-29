//
//  StackTests.swift
//  DataStructureAndAlgorithmsTests
//
//  Created by Raul Quispe  on 26/10/23.
//

import XCTest
@testable import DataStructureAndAlgorithms

final class StackTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testStackPush() throws {
        let sut = makeSUT()
        XCTAssertEqual(sut.description, "A B C D E")
    }
    
    func testStackPop() {
        var sut = makeSUT()
        XCTAssertEqual(sut.pop(), "E")
    }

    func testStackPeek() throws {
        let sut = makeSUT()
        XCTAssertEqual(sut.peek(), "E")
    }

    func testStackIsEmpty() throws {
        let sut = makeSUT()
        XCTAssertFalse(sut.isEmpty)
    }
    
    func testStackInitWithArray() {
        let array = [1,2,3,4]
        let stack = Stack(array)
        XCTAssertEqual(stack.description, "1 2 3 4")
    }
    
    func testStackInitWithArrayEquatable() {
        let array = ["A","B","C","D","E"]
        let stack = Stack(array)
        XCTAssertEqual(stack, makeSUT())
    }
    
    func testStackLiteralArray() {
        let stack: Stack = [1,2,3]
        XCTAssertEqual(stack, [1,2,3])
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    
    //MARK: - Helpers
    
    func makeSUT() -> Stack<String> {
        var stack = Stack<String>()
        stack.push("A")
        stack.push("B")
        stack.push("C")
        stack.push("D")
        stack.push("E")
        return stack
    }
    
}
