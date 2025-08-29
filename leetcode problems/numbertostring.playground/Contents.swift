import UIKit

class NumberToWords {
    private let below20 = ["", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten",
                           "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen",
                           "Seventeen", "Eighteen", "Nineteen"]
    
    private let tens = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    
    private let thousands = ["", "Thousand", "Million", "Billion"]

    func numberToWords(_ num: Int) -> String {
        if num == 0 { return "Zero" }
        var num = num
        var result = ""
        var i = 0
        
        while num > 0 {
            if num % 1000 != 0 {
                result = helper(num % 1000) + thousands[i] + (result.isEmpty ? "" : " " + result)
            }
            num /= 1000
            i += 1
        }
        return result
    }
    
    private func helper(_ num: Int) -> String {
        if num == 0 { return "" }
        else if num < 20 { return below20[num] + " " }
        else if num < 100 { return tens[num / 10] + " " + helper(num % 10) }
        else { return below20[num / 100] + " Hundred " + helper(num % 100) }
    }
}

let converter = NumberToWords()
print(converter.numberToWords(123))    
print(converter.numberToWords(12345))
print(converter.numberToWords(1234567))

