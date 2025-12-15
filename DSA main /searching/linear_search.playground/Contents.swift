import UIKit

var greeting = "Hello, playground"


public func linearSearch<T: Equatable>(_ array : [T], _ value : T)->[Int]?{
    
    var arr : [Int]? = []
    
    for (index,object) in array.enumerated() where object == value{
        arr?.append(index)
    }
    return arr
}

fileprivate var arr = [32,4,1,32,6,11,78]

var index = linearSearch(arr, 32)
if let ind = index {
    print(ind)
}
