//
//  BubleSortTests.swift
//  DataStructureAndAlgorithmsTests
//
//  Created by Raul quispe on 4/12/23.
//

import XCTest
@testable import DataStructureAndAlgorithms

final class BubbleSortTests: XCTestCase {
    
    func testSort() throws {
        var sut = sut()
        let bubbleSort = BubbleSort()
        XCTAssertTrue(bubbleSort.sort(&sut) == [ 1, 2, 4, 5, 6, 9])
    }
    
    func testMajorThanTwo() throws {
        let sut = sut()
        XCTAssertTrue(sut.count > 1)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    // MARK: HELPERS
    func sut() -> [Int] {
        return [4, 2, 5, 6, 1, 9]
    }

}
