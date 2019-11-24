import UIKit


// In an integer array, find a pair of numbers which add up to a given number.


func pairOfNumbers(_ num: [Int], target: Int) -> (Int, Int){
    
    var arr = [Int]()
    for val in num.enumerated() {
        let ad = target - val.element
        if arr.contains(ad) {
            return (ad, val.element)
        } else {
            arr.append(val.element)
        }
        
    }
    return (0,0)
}

print(pairOfNumbers([3, 2, 9, 8], target: 10))
//pairOfNumbers([3, 2, 9, 8], target: 10) // expected output: indices 1 and 3
