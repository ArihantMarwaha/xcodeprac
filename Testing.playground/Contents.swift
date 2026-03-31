import UIKit

var greeting = "Hello, playground"
print(greeting)


var s : String = "abc"

func longestSubstring(_ s : String)->Int{

    var char = Array(s)
    var longest : [Character: Int] = [:]
    var left = 0
    var maxlenght : Int = 0
    
    for i in 0..<char.count{
        let c = char[i]
        
        if let previous = longest[c],previous >= left{
            left = previous + 1
        }
        longest[c] = i
        maxlenght = max(i-left+1,maxlenght)
    }
    
    return maxlenght
}



print(longestSubstring(s))
