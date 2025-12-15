import SwiftUI
import UIKit

var greeting = "Hello, playground"
print(greeting)


struct Queue<T>{
    fileprivate var array = [T]()
    
    
    public var count: Int{
        return array.count
    }
    
    public var isempty: Bool {
        return array.isEmpty
    }
    
    mutating func Enqueue(_ element : T){
        array.append(element)
    }
    
    mutating func Dequeue()-> T?{
        if array.isEmpty{
            return nil
        }else{
            return array.removeFirst()
        }
    }
    
    public var front: T?{
        return array.first
    }
}

var queueOfNames = Queue(array: ["Carl", "Lisa", "Stephanie", "Jeff", "Wade"])

for i in 0..<queueOfNames.count{
    if let names = queueOfNames.front{
        print(names)
    }
   queueOfNames.Dequeue()
}

print(queueOfNames.isempty)

for i in 0...10{
    queueOfNames.Enqueue("\(i)")
    if let names = queueOfNames.front{
        print(names)
    }
    queueOfNames.Dequeue()
}



