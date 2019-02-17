import UIKit

//Maximum difference between two elements such that larger element appears after the smaller number
//Input : arr = {2, 3, 10, 6, 4, 8, 1}
//Output : 8
//Explanation : The maximum difference is between 10 and 2.

func maxDiff(a: [Int]) -> Int {
    let diff = a.reduce((a[0], 0), {(min($0.0, $1), max($0.1, $1 - $0.0))})
    return diff.1 > 0 ? diff.1 : -1
}

print(maxDiff(a: [2,3,10,6,4,8,1]))
