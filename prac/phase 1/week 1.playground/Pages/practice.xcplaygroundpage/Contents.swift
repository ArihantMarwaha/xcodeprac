import Foundation
var ari : Int
var bol : String
var hop : Bool
let pi : Float
var tan : Double

ari = 8
bol = "Arihant"
hop = true
pi = 3.14
tan = 3.3344

var conv = Double(ari) //convertion of data


for i in 0...5{
    print(bol)
}

var hope : Array<Int?> = [1,2,5,1,9,3,nil,2,1,34,nil,32,21,3,2]

for (i,j) in hope.enumerated() {
    if let value = j{
        print("\(i) index has the value \(value)")
    }
    else{
        print("Index \(i) has the vlaue nil and thus is an invalid array element")
    }
   
}


var arr = [1,4,6,8,9]
var tap = [4,5]
var rep = [99,54,23]
arr.append(5)
arr += [5,3]
arr.insert(contentsOf: tap, at: 3)
arr.replaceSubrange(3..<5, with:rep)
arr.remove(at: 4)
arr.insert(45, at: 5)
for (i,j) in arr.enumerated(){
  print("Index \(i) , value : \(j)")
}

