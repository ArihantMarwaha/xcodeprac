import UIKit

//struct
struct form{
    var name : String
    var age  : Int
    
    func introduction(){
        print("Hi \(name), according to my calcuation your age is \(age)")
    }
}

var arihant = form(name:"Arihant", age: 21)
arihant.introduction()

struct form2 {
    var counter : Int = 0
    
    //computed properties
    var contersq : Int{
        return counter*counter
    }
    
    //mutating function to change the method
    mutating func increment(){
        counter+=1
        const+=3
    }
    
    //ovserve changes to a paticular variable
    var const : Int = 0 {
        willSet{print("The value is going to be set to \(newValue)")}
        didSet{print("the value has been set from \(oldValue) to \(const)")}
    }
    
}

var former = form2()
var toast = form2()
for i in 0..<5{
    former.increment()
    if i%3 == 0 {
        continue
    }
    toast.increment()
}
print(toast.counter)
print(former.counter)
print(toast.contersq)
toast.const *= 3




struct initialise {
    var total : Int
    
    //computed values
    var area  : Int {
        return total*4
    }
    
    init(total totals: Int) {
        total = totals * 34
    }
}

var to = initialise(total: 5)
print(to.total)
print(to.area)

//generics 
func maxValue<T: Comparable>(_ a: T, _ b: T) -> T {
    return a > b ? a : b
}

print(maxValue(10, 20))      // 20
print(maxValue("A", "B"))    // B


protocol Togglable {
    mutating func toggle()
}

enum Switch: Togglable {
    case on, off
    
    mutating func toggle() {
        self = (self == .on) ? .off : .on
    }
}

class Developer {
    var name: String
    init(name: String) { self.name = name }
    deinit { print("\(name) is deallocated") }

    lazy var printName: () -> Void = {
        print("Developer: \(self.name)") // ❌ captures self strongly
    }
}

var dev: Developer? = Developer(name: "Lord Hanta")
dev?.printName()
dev = nil // deinit not called → leak


