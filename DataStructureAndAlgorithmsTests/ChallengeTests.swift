//
//  ChallengeTests.swift
//  DataStructureAndAlgorithmsTests
//
//  Created by Raul Quispe  on 26/10/23.
//

import XCTest
@testable import DataStructureAndAlgorithms

func checkParentheses(_ string: String) -> Bool {
    //TODO: Check for balanced parentheses in a given string.
    var stack: Stack<Character> = []
    for letter in string {
        if letter == "(" {
            stack.push(letter)
        } else if letter == ")" {
            if stack.isEmpty {
                return false
            } else {
               let _ = stack.pop()
            }
        }
    }
    return stack.isEmpty
}

final class ChallengeTestCase: XCTestCase {
    
    func test_checkBadPositionParens() {
        XCTAssertFalse( checkParentheses(")(") )
    }
    
    func test_checkParens() {
        XCTAssertTrue( checkParentheses("()") )
    }
    
    func test_checkParens1() {
        XCTAssertTrue( checkParentheses("hello(world)()") )
    }
    
    func test_checkParens2() {
        XCTAssertFalse( checkParentheses("(hello world") )
    }
    
    func test_checkParens3() {
        XCTAssertFalse( checkParentheses("((())(meow)))()))") )
    }
    
}

