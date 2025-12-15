import UIKit

var greeting = "Hello, playground"


fileprivate var array : [Int] = [23,54,32,67,43,3,21,56,89]


func BinarySearch<T : Comparable>(_ arr : [T],_ key : T, _ range : Range<Int>)-> Int? {
    
    if range.lowerBound >= range.upperBound{
        return nil
    }else{
        let middle = range.lowerBound + (range.upperBound-range.lowerBound)/2
        
        if arr[middle] > key{
            return BinarySearch(arr, key, range.lowerBound..<middle)
        } else if arr[middle] < key {
            return BinarySearch(arr, key, middle+1..<range.upperBound)
        }else{
            return middle
        }
    }
}
print(array.sorted())
print(BinarySearch(array.sorted(), 21, 0..<array.count))
