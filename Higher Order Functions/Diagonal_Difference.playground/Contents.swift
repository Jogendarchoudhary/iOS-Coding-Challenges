import UIKit

// Diagonal Difference
// Given a square matrix, calculate the absolute difference between the sums of its diagonals.

// For example, the square matrix  arr is shown below:
// 1 2 3
// 4 5 6
// 9 8 9
//
//The left-to-right diagonal = 1+5+9 = 15. The right to left diagonal = 3+5+9 = 17. Their absolute difference is |15-17| = 2.

func diagonalDifference(arr: [[Int]]) -> Int {
    
    let a = (0..<arr.count).map({arr[$0][$0]}).reduce(0, +)
    let finalCalculation = arr.count - 1
    let b = (0..<arr.count).map({arr[finalCalculation - $0][$0]}).reduce(0, +)
    let difference = abs(a  - b)
    
    return difference
}
print(diagonalDifference(arr: [[1,2,3],[4,5,6],[9,8,9]]))
