import UIKit

// Mini-Max Sum
// Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

// For example, arr = [1,3,5,7,9] . Our minimum sum is 1+3+5+7 = 16 and our maximum sum is 3+5+7+9 = 24 . We would print 16 24
// Hints: Beware of integer overflow! Use 64-bit Integer.


func minMaxSum(arr: [Int]) -> Void {
    let a = arr.reduce(arr[0], {$0 > $1 ? $1 : $0})
    let b = arr.reduce(arr[0], {$0 > $1 ? $0 : $1})
    let total = arr.reduce(0, +)
    
    print("\(total - b) \(total - a)")
    
}
print(minMaxSum(arr: [1,3,5,7,9]))
