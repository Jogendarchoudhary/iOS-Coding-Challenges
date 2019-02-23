import UIKit

// Binary Search
// Find a particular value in an array.
// - Complexity: O(log n), where n is the length of the collection.
// - example if you trying binary search on an array with 1,000,000 then complexity is log_2(1,000,000) = 19.9 so you can find out the value in max 20 steps
// Logic: The classic way to speed this up is to use a binary search. The trick is to keep splitting the array in half until the value is found.
// Need: the array must be sorted

func binarySearch(_ arr: [Int], key: Int, range: Range<Int>) -> Int? {
    
    if range.lowerBound >= range.upperBound {
        return nil
    } else {
        let midInd = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        // search key in the left half?
        if arr[midInd] > key {
            return binarySearch(arr, key: key, range: range.lowerBound ..< midInd)
            
            // search key in the right half?
        } else if arr[midInd] < key {
            return binarySearch(arr, key: key, range: midInd + 1 ..< range.upperBound)
            
            // If we get here, then we've found the search key!
        } else {
            return midInd
        }
    }
}
let arr = [1, 2, 4, 6, 10, 12, 17, 19, 21, 29, 31, 32, 41, 43, 44, 53, 59, 65, 67]

binarySearch(arr, key: 43, range: 0 ..< arr.count)

