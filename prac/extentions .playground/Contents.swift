import UIKit

//Extensions let you add new functionality to an existing class, struct, enum, or protocol.

extension Int {
    var swr : Int  {return self*self}
    
    func times(_ task: () -> Void) {
            for _ in 0..<self {
                task()
            }
        }
}

print(5.swr)
3.times {
    print("Hello")
}

var top : Int = 6
top.swr
top.times {
    print("your mom")
}

extension String {
    var isPalindrome: Bool {
        return self == String(self.reversed())
    }
}

print("racecar".isPalindrome) // true
print("swift".isPalindrome)   // false


//safe access using extentions and closures
extension Array {
    func safeAccess(at index: Int, perform: (Element) -> Void) {
        if index >= 0 && index < count {
            perform(self[index])
        } else {
            print("Index out of range")
        }
    }
}

// Usage
let letters = ["A", "B", "C"]
letters.safeAccess(at: 1) { print($0) }
letters.safeAccess(at: 5) { print($0) }


//conditional execution
extension Int {
    func ifEven(_ action: () -> Void) {
        if self % 2 == 0 {
            action()
        }
    }
}

// Usage
4.ifEven { print("Even!") } // Prints "Even!"
5.ifEven { print("Even!") } // Does nothing


//custom filter
extension Array {
    func customFilter(_ isIncluded: (Element) -> Bool) -> [Element] {
        var result: [Element] = []
        for item in self {
            if isIncluded(item) {
                result.append(item)
            }
        }
        return result
    }
}

// Usage
let nums = [1, 2, 3, 4, 5, 6]
print(nums.customFilter { $0 % 2 == 0 }) // [2, 4, 6]

let names = ["Tom", "Alex", "Sam"]
print(names.customFilter { $0.count > 3 }) // ["Alex"]



