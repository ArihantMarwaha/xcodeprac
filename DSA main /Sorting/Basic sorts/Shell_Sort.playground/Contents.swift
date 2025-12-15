import UIKit

var greeting = "Hello, playground"

fileprivate var arr = [32,5,32,12,9,43,4,56,5,67,21,5,4,67,89,12,4]


func ShellSort(_ arr: [Int])->[Int]{
    var sorted = arr
    var n = arr.count
    var gap = n/2
    
    print(arr)
    while gap > 0{
        print("the gap: \(gap)")
        for i in gap..<n{
            var j = i
            print("\(sorted[j]) :  \(sorted[j-gap])")
            while j >= gap && sorted[j] < sorted[j-gap]  {
                sorted.swapAt(j, j-gap)
                j -= gap
            }
        }
        gap = gap/2
    }
    return sorted
}

var t = ShellSort(arr)

print(t)
