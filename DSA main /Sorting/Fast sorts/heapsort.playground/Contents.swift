import UIKit

var greeting = "Hello, playground"


func heapify(_ arr: inout [Int], _ i: Int, _ n: Int) {
    let left = 2 * i + 1
    let right = 2 * i + 2
    var largest = i

    if left < n && arr[left] > arr[largest] {
        largest = left
    }

    if right < n && arr[right] > arr[largest] {
        largest = right
    }

    if largest != i {
        arr.swapAt(i, largest)
        heapify(&arr, largest, n)
    }
}

func heapSort(_ arr: inout [Int]) {
    let n = arr.count


    for i in stride(from: n/2 - 1, through: 0, by: -1) {
        heapify(&arr, i, n)
    }
    
    for i in stride(from: n - 1, through: 1, by: -1) {
        arr.swapAt(0, i)
        heapify(&arr, 0, i)
    }
}
