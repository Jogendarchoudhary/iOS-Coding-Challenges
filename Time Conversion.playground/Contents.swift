import UIKit

// Given a time in -hour AM/PM format, convert it to military (24-hour) time.
// Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, and 12:00:00 on a 24-hour clock.
// Input: 07:05:45 PM
// Output: 19:05:45

func timeConversion(s: String) -> String {

    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "hh:mm:ssa"
    
    let date = dateFormatter.date(from: s)
    dateFormatter.dateFormat = "HH:mm:ss"
    let datestr = dateFormatter.string(from: date!)
    return datestr
}
print(timeConversion(s: "07:05:45PM"))
