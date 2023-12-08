//
//  SelectionSort.swift
//  DataStructureAndAlgorithms
//
//  Created by Raul quispe on 4/12/23.
//

import Foundation
struct SelectionSort {

    /// Sort the elements
    ///
    /// Selection sort is a simple and efficient sorting algorithm that
    /// works by repeatedly selecting the smallest (or largest)
    /// element from the unsorted portion of the list and moving it
    /// to the sorted portion of the list.
    ///
    /// - Parameter array: The collection it has more than two elements.
    /// - Returns: The new sorted array
    ///
    /// - Complexity: O(n^2) where *n* is the length of the sequence.
    func sort(_ array: inout [Int]) {
        guard array.count > 1 else {
            return
        }
        for current in 0..<(array.count - 1) {
            //Assume the current element is the smallest
            var lowest = current
            // Loop through the remaining elements of the array
            for other in (current + 1)..<array.count {
                // If a smaller element is found, update the lowest
                if array[lowest] > array[other] {
                    lowest = other
                }
            }
            // Swap the current element with the smallest element
            if lowest != current {
                array.swapAt(lowest, current)
            }
        }
    }
}
