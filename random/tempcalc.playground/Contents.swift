import UIKit
import SwiftUI

var greeting = "Hello, playground"


func CelcToFar(_ input : Double)->Float{
    
    return Float((input * 9/5)+32)
}


func farToCel(_ input : Double)->Float{
    
    return Float((input-32)*5/9)
}

var tool = farToCel(42)
var fool = CelcToFar(34)

print("Farhenite to celcius: \(tool)")
print("Celcius to farhentie: \(fool)")


