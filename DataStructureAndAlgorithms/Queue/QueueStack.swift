//
//  QueueStack.swift
//  DataStructureAndAlgorithms
//
//  Created by Raul Quispe  on 29/10/23.
//

import Foundation
struct QueueStack<T>: Queue {
    
    private var dequeueStack: [T] = []
    private var enqueueStack: [T] = []
    
    var isEmpty: Bool {
        return dequeueStack.isEmpty && enqueueStack.isEmpty
    }
    
    var peek: T? {
        !dequeueStack.isEmpty ? dequeueStack.last : enqueueStack.first
    }
    
    @discardableResult
    mutating func dequeue() -> Element? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }
    
    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }
}
