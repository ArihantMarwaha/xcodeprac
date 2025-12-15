import UIKit

var greeting = "Hello, playground"

var arr = [Int]()

for i in 0...10{
    var t = Int.random(in:0...100)
    arr.append(t)
}
print(arr)

var i = arr.count

for i in 0..<arr.count{
    for j in 1..<arr.count-1{
        if arr[j]<arr[j-1]{
            let tmp = arr[j-1]
            arr[j-1] = arr[j]
            arr[j] = tmp
        }
    }
}

print(arr)

