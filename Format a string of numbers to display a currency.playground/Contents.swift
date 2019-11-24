import UIKit

func getformatedString(_ num: NSNumber) -> String {
    
    let numberFormatter = NumberFormatter()
    numberFormatter.usesGroupingSeparator = true
    numberFormatter.numberStyle = .currency
    
    return numberFormatter.string(from: num) ?? ""
}

print(getformatedString(1234.678))
