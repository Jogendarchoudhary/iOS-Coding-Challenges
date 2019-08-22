 // Given a string s, find the longest palindromic substring in s.
 // Example1:
 // Input: "baabaaaabb"
 //  Output: "baaaab"
 
 func findPalindrome(_ arr: Array<Character>, left: Int, right: Int) -> String {
    var leftIndex = left
    var rightIndex = right
    while leftIndex >= 0 && rightIndex < arr.count {
        if arr[leftIndex] != arr[rightIndex] {
            break
        }
        leftIndex -= 1
        rightIndex += 1
    }
    return String(arr[leftIndex + 1..<rightIndex])
 }
 
 func longestPalindrome(_ s: String) -> String {
    var result = String()
    var palindrome = String()
    let arr: Array<Character> = Array(s)
    var index = 0
    
    while index < arr.count {
        if result.count >= (arr.count - index) * 2 {
            break
        }
        
        palindrome = findPalindrome(arr, left: index, right: index)
        if palindrome.count > result.count {
            result = palindrome
        }
        
        palindrome = findPalindrome(arr, left: index, right: index + 1)
        if palindrome.count > result.count {
            result = palindrome
        }
        index += 1
    }
    return result
 }

 print(longestPalindrome("baabaaaabb"))
