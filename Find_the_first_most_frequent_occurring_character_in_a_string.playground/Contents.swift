import UIKit

// Find the first most frequent occurring character in a string
// Input: "abbac"
// Output: a

func findOutFirstMostFrequentOccurringCharacterIn(str: String) -> Character {
    let strArr = Array(str)
    var tupleArr = [(Character, Int)]()
    for char in strArr {
        
        if let ind = tupleArr.firstIndex(where: {$0.0 == char}) {
            tupleArr[ind].1 += 1
        } else {
            tupleArr.append((char, 1))
        }
    }
    
    let frequentOccurringCharacter = tupleArr.reduce(tupleArr[0], {$1.1 > $0.1 ? $1 : $0})
    return frequentOccurringCharacter.0
}

print(findOutFirstMostFrequentOccurringCharacterIn(str: "abbac"))
