import UIKit

var greeting = "Hello, playground"

func Palindrome(_ str : String)->Bool{
    
    var cleanstring = str.lowercased().filter{$0.isLetter || $0.isNumber}
    
    return cleanstring == String(cleanstring.reversed())
    
    
}

Palindrome(greeting)
