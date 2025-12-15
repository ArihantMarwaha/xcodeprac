import UIKit

var greeting = "Hello, playground"

fileprivate var arr = [32,5,32,12,9,43,4,56]
print(arr)

func SelectionSort(_ input : [Int])->[Int]{
    var arr = input
    let n = arr.count
    if n <= 1 {return arr}
    
    for i in 0..<n{
        var min = i

        for j in i+1..<n{
            if arr[j]<arr[min]{
                min = j
            }
        }
        arr.swapAt(i,min)
    }
    return arr
}

var sorted = SelectionSort(arr)
print(sorted)
