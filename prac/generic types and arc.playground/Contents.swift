import UIKit

//heneric swap
var greeting = "Hello, playground"
func swap<H>(_ a : inout H, _ b : inout H){
    
    let temp = a
    a = b
    b = temp
    
}


var a = 5
var b = 9
swap(&a,&b)

print("a:\(a) ,b: \(b)")


//generic find max element in an array
func findmax<T: Comparable>(_ a : [T])-> T? {
    if a.isEmpty {return nil}
    var maxVal = a[0]
    
    for item in a {
        if item >= maxVal{
            maxVal = item
        }
    }
    return maxVal
}

print(findmax([3, 5, 2, 9, 1])!)   // 9
print(findmax(["apple", "pear", "banana"])!)

//generic stack
struct Stack<Element>{
    private var items: [Element] = []
       
       mutating func push(_ item: Element) {
           items.append(item)
       }
       
       mutating func pop() -> Element? {
           return items.popLast()
       }
}

var intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
print(intStack.pop()!) // 2

var stringStack = Stack<String>()
stringStack.push("Swift")
stringStack.push("Rocks")
print(stringStack.pop()!) // Rocks


func findmin<T:Comparable>(_ a : [T])->T?{
    if a.isEmpty {return nil}
    var min = a[0]
    for item in a {
        if item <= min{
            min = item
        }
    }
    return min
}

//generic minimum
var arri = [2,5,2,8,6,3,-1,-34]
var arrs = ["arihant","Hope","peaches","jolly"]
print(findmin(arri) ?? 0)
print(findmax(arrs) ?? 0)

func myContains <T:Equatable>(_ a : [T],_ item : T)->Bool?{
    
    if a.isEmpty {return false}
    for tastyElement in a {
        if tastyElement == item {
            return true
            }
    }
    return false
}

var mast = myContains(arri,9)
if mast == true{
    print("the value exists")
}else{print("the value doesn't exist")}

//generic reverser

func reverse<T>(_ ar :[T])->[T]?{
    if ar.isEmpty {return nil}
    var art = ar
    var temp = art[0]
    var count = art.count
    for i in 0..<(count/2){
        temp = art[i]
        art[i] = art[count-1-i]
        art[count-1-i] = temp
    }
    return art
}

var top = reverse(arrs)
print(top ?? 0)


//generic queue

struct Queue<Element> {
    private var items: [Element] = []
    
    init(items: [Element] = []) {
        self.items = items
    }
    
    mutating func enqueue(_ item: Element) {
        items.append(item)
    }
    
    mutating func dequeue() -> Element? {
        guard !items.isEmpty else { return nil }
        return items.removeFirst()
    }
    
    func peek() -> Element? {
        return items.first
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
}

var q = Queue<String>()
q.enqueue("A")
q.enqueue("B")
q.enqueue("C")

print(q.dequeue()!)
print(q.peek()!)
print(q.isEmpty)
print(q.dequeue()!)
print(q.peek()!)
print(q.dequeue()!)
print(q.isEmpty)
