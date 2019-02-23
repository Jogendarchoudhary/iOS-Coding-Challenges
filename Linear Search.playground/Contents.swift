import UIKit

// Linear Search
// Find a particular value in an array.
// - Complexity: O(n), where n is the length of the collection.


func firstIndexOfObjectByLinearSearch(_ array: Array<Int>, _ object: Int) -> Int? {
    
   return array.firstIndex(of: object)
}
func lastIndexOfObjectByLinearSearch(_ array: Array<Int>, _ object: Int) -> Int? {
    
    return array.lastIndex(of: object)
}

func simpleLinearSearch(_ array: Array<Int>, _ object: Int) -> Int? {
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}

// lastIndex(of:) or firstIndex(of:) function performs a linear search. In code that looks something like this
func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}
let array = [1, 3, 2, 11,11]
firstIndexOfObjectByLinearSearch(array, 11)
lastIndexOfObjectByLinearSearch(array, 11)
simpleLinearSearch(array, 11)
linearSearch(array, 11)
