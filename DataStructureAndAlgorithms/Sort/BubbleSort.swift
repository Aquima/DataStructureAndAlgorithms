//
//  BubbleSort.swift
//  DataStructureAndAlgorithms
//
//  Created by Raul quispe on 4/12/23.
//

import Foundation

struct BubbleSort {

    /// Sort the elements
    ///
    /// In Bubble Sort algorithm,
    /// traverse from left and compare adjacent elements and the higher one is placed at right side.
    /// In this way, the largest element is moved to the rightmost end at first.
    /// This process is then continued to find the second largest and place it and so on until the data is sorted.
    ///
    /// - Parameter array: The collection it has more than two elements.
    /// - Returns: The new sorted array
    ///
    /// - Complexity: O(n^2) where *n* is the length of the sequence.
    func sort(_ array: inout [Int]) {
        guard array.count >= 2 else {
            return
        }
        let allValues = array.count
        for end in (0..<allValues).reversed() {
            var swapped = false
            //This loop performs a single pass; it compares adjacent values and swaps them if needed.
            for current in 0..<end {
              if array[current] > array[current+1] {
                  array.swapAt(current, current + 1)
                  swapped = true
              }
            }
            //if no values were swapped this pass, the collection must be sorted, and you can exit early.
            if !swapped {
                return
            }
          }
    }
}
