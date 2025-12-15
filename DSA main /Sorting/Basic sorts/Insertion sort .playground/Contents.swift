import UIKit

var greeting = "Hello, playground"

fileprivate var random = [Int]()

for i in 0...10{
    random.append(Int.random(in: 0...50))
}

var n = random.count

for i in 1..<n{
    var key : Int = random[i]
    var j = i-1
    
    while j >= 0 && random[j] > key {
        random[j+1] = random[j]
        j-=1
    }
    random[j+1] = key
}
 print(random)
