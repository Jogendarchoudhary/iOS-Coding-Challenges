import UIKit

// Birthday Cake Candles
// You are in charge of the cake for your niece's birthday and have decided the cake will have one candle for each year of her total age. When she blows out the candles, she’ll only be able to blow out the tallest ones. Your task is to find out how many candles she can successfully blow out.
//
// For example, if your niece is turning 4 years old, and the cake will have 4 candles of height 4,4,1,3, she will be able to blow out 2 candles successfully, since the tallest candles are of height 4 and there are 2 such candles.

// Input: 3 2 1 3
// output: 2
// Explanation: We have one candle of height 1, one candle of height 2, and two candles of height 3. Your niece only blows out the tallest candles, meaning the candles where height =m3 . Because there are 2 such candles, we print 2 on a new line.

func birthdayCakeCandles(candleArr: [Int]) -> Int {
    
    // Tuple (candleArr[0],0)
    // candleArr[0] is a first object of candleArr
    // 0 is a count of max height candle
    let maxHeightCandleTuple =  candleArr.reduce((candleArr[0],0), { (result, item) in
        if item > result.0 {
            return (item,1)
        } else if item == result.0 {
            return (result.0, result.1 + 1)
        }
        return result
    })
    return maxHeightCandleTuple.1
}
print(birthdayCakeCandles(candleArr: [3,2,1,3]))
