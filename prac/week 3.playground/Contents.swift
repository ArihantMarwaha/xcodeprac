import UIKit

func prints (_ inp: String = "Hello") {
    print("Wassup \(inp)")
}

prints("Arihant")

//vardic parameters
func hoop(_ num : Int...){
    
    for i in num{
        print(i)
    }
}

hoop(1,3,5,7,9)

//Write a function that takes a list of strings and returns the longest and shortest string as a tuple.
func lonngshort(_ inp : [String])->(long: String,short: String)?{
    
    var longsize : Int = 0
    var shortsize: Int = 0
    var longstring : String = inp[0]
    var shortstring : String = inp[0]

    
    
    for i in inp {
        if  i.count > longsize {
            longstring = i
            longsize = i.count
        }
        if i.count < shortsize {
            shortstring = i
            shortsize = i.count
        }
    }
    
    return (longstring,shortstring)
}

var str : [String] = ["Ari","Arihant","Tanahiras","pop"]
if let lon = lonngshort(str) {
    print("short : \(lon.short) , long: \(lon.long)")
}

//Write a function applyTwice that applies a given function twice to an integer.
func applyTwice (_ inp: Int,using operation :(Int)->Int)->Int{
    return operation(operation(inp))
}

func square (_ inp : Int)->Int{
    return inp*inp
}

print(applyTwice(3, using: square(_:)))
//Write functions that return tuples (like min and max of an array).
func minmax(_ inp : [Int])->(min : Int,max : Int)? {
    
    guard !inp.isEmpty else{
        return nil
    }
    var min : Int = inp[0]
    var max : Int = inp[0]
    for i in inp {
        if i < min{
            min = i
        }
        if i > max{
            max = i
        }
    }
    
    return (min,max)
}

var art : [Int] = [1,5,2,8,0,-2,65,32,78]
if let go = minmax(art){
    print("The min value: \(go.min) \nThe max value: \(go.max)")
}

//Create higher-order functions (a function that accepts another function).
func applyThrice (_ inp: Int,using operation :(Int)->Int)->Int{
    return operation(operation(operation(inp)))
}

func cubed (_ inp : Int)->Int{
    return inp*inp*inp
}

print(applyTwice(3, using: cubed(_:)))

//inout acts as a pointer
func hold (_ inp : inout Int){
    inp = inp*inp
}

var cold : Int = 5
hold(&cold)
print(cold)

//closure
let add = { (a: Int, b: Int) -> Int in
    return a + b
}

let add2 : (Int,Int)-> Int = { a,b in
    a+b
}

let add3 : (Int,Int)-> Int = { $0+$1 }

var gone = add(1,3)
var hole = add2(1,5)
var pope = add3(1,9)

print("\(gone),\(hole),\(pope)")


//Write a closure to sort an array in custom order.


//assending
var goals : [Int] = [1,6,3,9,2,0,3]
var top = goals.sorted { a,b  in
    return a < b
}
print(top)

//decending
var goal = goals.sorted {$0 > $1}
print(goal)

//custom

var custom = goals.sorted{
    if $0%2 == 0 && $1%2 != 0 {
        return false
    }else if $0%2 != 0 && $1%2 == 0 {
        return true
    }else{
       return $0 > $1
    }
}
print(custom)

//Use do–try–catch to read a file safely.
//Implement a small calculator using closures.
//Practice interview-style problems (like: implement map manually, write safe division with error handling).
