//
//  QueueTests.swift
//  DataStructureAndAlgorithmsTests
//
//  Created by Raul Quispe  on 28/10/23.
//

import XCTest
@testable import DataStructureAndAlgorithms

final class QueueTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testEnqueueAraay() {
        XCTAssertTrue(makeSUT().peek == "A")
    }
    func testDequeueArray() throws {
        var sut = makeSUT()
        sut.dequeue()//dequeue A
        sut.dequeue()//dequeue B
        XCTAssertTrue(sut.peek == "C")// Peek element is "C"
        sut.dequeue()//dequeue B
        XCTAssertTrue(sut.isEmpty)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    //MARK: - Helpers
    
    func makeSUT() -> QueueArray<String> {
        var stack = QueueArray<String>()
        stack.enqueue("A")
        stack.enqueue("B")
        stack.enqueue("C")
        return stack
    }
}
