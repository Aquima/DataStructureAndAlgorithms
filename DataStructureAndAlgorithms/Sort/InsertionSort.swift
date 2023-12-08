//
//  InsertionSort.swift
//  DataStructureAndAlgorithms
//
//  Created by Raul quispe on 4/12/23.
//

import Foundation
struct InsertionSort {

    /// Sort the elements
    ///
    /// Selection sort is a simple and efficient sorting algorithm that
    /// works by repeatedly selecting the smallest (or largest)
    /// element from the unsorted portion of the list and moving it
    /// to the sorted portion of the list.
    ///
    /// - Parameter array: The collection it has more than two elements.
    ///
    /// - Complexity: O(n^2) where *n* is the length of the sequence.
    func sort(_ array: inout [Int]) {
        guard array.count > 1 else {
            return
        }
        for current in 1..<array.count {
            for shifthing in (1...current).reversed() {
                if array[shifthing] < array[shifthing - 1] {
                    array.swapAt(shifthing, shifthing - 1)
                } else {
                    break
                }
            }
        }
    }
}
