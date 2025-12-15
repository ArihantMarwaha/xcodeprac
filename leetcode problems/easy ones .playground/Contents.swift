import UIKit

var greeting = "Hello, playground"

fileprivate var arr : [Int] = [1,4,32,43,2,56,78,543,223,46,22,213,11,21,23,78,65,88,432]

//Largest element
func largest(_ arr : [Int])->Int{
    var max = arr[0]
    for i in arr{
        if i > max{
            max = i
        }
    }
    return max
}

//print(largest(arr))

//Second largest
//func secondLargest(_ arr : [Int])->Int{
//    var max = arr[0]
//    var secMax = arr[0]
//    
//    for i in 0..<arr.count-1{
//        if arr[i] > max{
//            max = arr[i]
//        }
//    }
//    
//    for i in arr{
//        if i > secMax && i < max {
//            secMax = i
//        }
//    }
//    return secMax
//}

func secondLargest(_ arr : [Int])->Int{
    var max = arr[0]
    var secMax = arr[0]
    
    for i in arr{
        if i > max{
            secMax = max
            max = i
        }
        else if i < max && i > secMax{
            secMax = i
        }
    }
    
    return secMax
}

//print(secondLargest(arr))

//Count frequency
private func countFrequency(_ arr : [Int])->[Int:Int]{
    var freq : [Int:Int] =  [:]
    for i in arr{
        freq[i, default: 0] += 1
    }
    return freq
}
//print(countFrequency(arr))

//Min/max element
func minMax(_ array : [Int])->(Int,Int){
    
    var min = array[0]
    var max = array[0]
    
    for i in array{
        if min >= i {
            min = i
        }else if max <= i  {
            max = i
        }
    }
    return (max,min)
}

//print(minMax(arr))

//Rotate array
func rotate(_ arr : [Int],_ by : Int)->[Int]{
    var rotate : [Int] = arr
    let count = arr.count
    var k = by % count
    rotate.reverse()
    rotate[0..<k].reverse()
    rotate[k..<count].reverse()
    return rotate
}
print(arr)
//print(rotate(arr,3))

//optimal reversal of an array
func Arrayreverse(_ arr: [Int])->[Int]{
    var reversedArray = arr
    var left = 0
    var rigt = reversedArray.count-1
    while left <= rigt{
        reversedArray.swapAt(left, rigt)
        left += 1
        rigt -= 1
    }
    return reversedArray
}
//print(Arrayreverse(arr))



//2 sum
func twoSum(_ arr : [Int],_ target :Int)->(Int,Int)?{
    var array = arr
    
    var tupple : [Int:Int] = [:]
    
    for (index,value) in array.enumerated(){
        let complement = value - target
        if let complementTarget = tupple[complement]{
            return (complement,index)
        }
        tupple[value] = index
    }
    
    return nil
}
var array : [Int] = [1,3,5,67]

//Longest subarray sum

