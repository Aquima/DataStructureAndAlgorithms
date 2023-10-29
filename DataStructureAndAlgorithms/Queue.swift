//
//  Queue.swift
//  DataStructureAndAlgorithms
//
//  Created by Raul Quispe  on 28/10/23.
//

import Foundation

protocol Queue {
    associatedtype Element
    
    mutating func enqueue(_ element: Element)
    mutating func dequeue() -> Element?
    var isEmpty: Bool { get }
    var peek: Element? { get }
}

struct QueueArray<T>: Queue {
    
    private var array: [T] = []
    
    var isEmpty: Bool {
        array.isEmpty
    }
    
    var peek: T? {
        array.first
    }
    
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        isEmpty ? nil : array.removeFirst()
    }
}
