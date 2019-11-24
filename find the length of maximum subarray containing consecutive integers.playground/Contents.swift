
// Given an array of unsorted positive integers, find the length of maximum subarray containing consecutive integers.
// Ex :[4,2,3,4,6,8,9,10,11]
// Result: 4

func maxSubArrLengthFrom( _ numbers: [Int]) -> Int? {
    
    let results = numbers.reduce((numbers[0], [1])) { (res, val) in
        if res.0 + 1 == val {
            let lastV = res.1.last ?? 0
            var newArr = res.1
            newArr.indices.last.map{ newArr[$0] = lastV + 1 }
            return (val, newArr)
        } else {
            var newArr = res.1
            newArr.append(1)
            return (val, newArr)
        }
    }
    return results.1.max()
}

print(maxSubArrLengthFrom([4,2,3,4,6,8,9,10,11]))
