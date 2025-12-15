import SwiftUI
import UIKit

var greeting = "Hello, playground"
print(greeting)


struct Stack<T>{
    fileprivate var array = [T]()
    
    public var isempty : Bool {
        return array.isEmpty
    }
    
    public var count : Int {
        return array.count
    }
    
    public mutating func push(_ element : T){
        array.append(element)
    }
    
    mutating func pop()-> T?{
        return array.popLast()
    }
    
    public var top : T? {
        return array.last
    }
}

var GenStack : Stack<Int> = Stack(array: [1,4,7,3,7,4,3])
print(GenStack.array)
print(GenStack.count)

for i in 0..<GenStack.count{
    print("Current count : \(GenStack.count)")
          if let valaue = GenStack.top {
        print("Next element to be dropped \(valaue)")
    }

    GenStack.pop()
}


