//A message containing letters from A-Z is being encoded to numbers using the following mapping:
//
//'A' -> 1
//'B' -> 2
//'C' -> 3
//...
//'Z' -> 26
//
//Given a non-empty string containing only digits, determine the total number of ways to decode it.
//Explanation
//Like if we've 123 as input the we can decode it into following way -
//- 123 -> ABC  where 1 -> 'A', 2 -> 'B' and 3 -> 'C'
//- 123 -> LC where 12 -> 'L' and 3 -> 'C'
//- 123 -> AW where 1 -> 'A' and 23 -> 'W'

func numDecodings(_ s: String) -> Int {
    guard s.count > 0 else { return 0 }
    let arS = Array(s)
    var tmp: Int = 0
    var n1: Int = arS[arS.count - 1] == "0" ? 0 : 1
    var n2: Int = 1
    var index = arS.count - 1 - 1

    while index >= 0 {
        if arS[index] == "0" || arS[index] > "2" || (arS[index] == "2" && arS[index + 1] > "6") {
            // No 2-digit number
            if n1 == 0 { return 0}
            n2 = n1
            if arS[index] == "0" { n1 = 0 }
        } else {
            tmp = n1
            n1 += n2
            n2 = tmp
        }
        index -= 1
    }

    return n1
}
print(numDecodings("123"))
