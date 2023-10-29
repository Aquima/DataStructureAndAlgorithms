//
//  Stack.swift
//  DataStructureAndAlgorithms
//
//  Created by Raul Quispe  on 26/10/23.
//

import Foundation

struct Stack<Element: Equatable> : Equatable {

    private var storage: [Element] = []
    
    init() {}
    
    init(_ storage: [Element]) {
        self.storage = storage
    }

    mutating func push(_ element: Element) {
        storage.append(element)
    }

    mutating func pop() -> Element? {
        storage.popLast()
    }

    func peek() -> Element? {
        storage.last
    }

    var isEmpty: Bool {
        peek() == nil
    }
    
}

extension Stack: CustomStringConvertible {
    var description: String {
        storage
            .map{"\($0)"}
            .joined(separator: " ")
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
