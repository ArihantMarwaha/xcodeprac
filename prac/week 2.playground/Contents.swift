import UIKit

//Find max & min in an array
func minmax(_ input : [Int]) -> [Int] {
    
    var arr : Array<Int> = input
    var min : Int = 0
    var max : Int = 0
    
    for i in 0..<arr.count {
        if(arr[i]>max){
            max = arr[i]
        }
        
        if(arr[i]<min){
            min = arr[i]
        }
        
        
    }
    return [min,max]
}

var arr = [1,4,2,8,32,76,3,234,42,434,553,22,231,13,0,-5,323,-3]
var tone = minmax(arr)
print("min:\(tone[0]) ,max:\(tone[1])")


//Reverse an array without built-in functions
func swap(_ inp : [Int],_ ind1:Int,_ ind2:Int)->[Int]{
    
    var temp : Int = inp[ind1]
    var arr = inp.self
    arr[ind1]=arr[ind2]
    arr[ind2]=temp
    return arr
}

func reverse(_ inp : [Int])->[Int]{
    
    var arr = inp
    var i = 0
    var len : Int = inp.count-1
    
    while i<len{
        arr = swap(arr,i,len)
        i=i+1
        len=len-1
    }
    
    return arr
}
var pop : Array<Int> = [1,2,3,4,5,6,7,8,9,10]
var rev = reverse(pop)
print(rev)
//Remove duplicates from an array (using Set)
var tar : Array<Int> = [1,3,4,6,1,4,2,7]
var hpe = Set(tar)
print(hpe)

//Check if two arrays have common elements (Set intersection)
var set1 : Set<Int> = [1,4,7]
var set2 : Set<Int> = [1,9,3]
var common = set1.intersection(set2)
print(common)

//Count frequency of words in a sentence (Dictionary)
var sen : String = "Hello my name is arihant , arihant loves to find the meaning of the the name arihant because arihant is likely to be a good name"
var low : String = String(sen).lowercased()

var Words : Array<String> = []
var word : String = ""

for ch in low{
    
    if ch.isLetter{
        word.append(ch)
    }
    else{
        if !word.isEmpty{
            Words.append(word)
            word = ""
        }
    }
}

if !word.isEmpty{
    Words.append(word)
}

print(Words)


//count the frequency
var freq : [String : Int] = [:]

for free in Words{
    if let count = freq[free]{
        freq[free] = count+1
    }else{
        freq[free]=1
    }
}

print(freq)




//Two Sum Problem → Find two numbers in an array that add up to a target (Dictionary-based)
func twosum(_ input : [Int],_ target : Int)->(Int,Int)?{
    
    var Dict : [Int:Int] = [:]
    var len : Int = input.count
    
    for i in 0..<len{
        let nums = input[i]
        let comle = target - nums
        if let bone = Dict[comle]{
            return (bone,i)
        }
        Dict[nums] = i
    }
    
    return nil
    
}
var tool : Array<Int> = [1,4,5,6]
if let (i, j) = twosum(tool, 9) {
    print("Indices: \(i), \(j)")   // 0, 1
}

//Flatten a nested array (using recursion + loops)
enum NestedArray {
    case int(Int)
    case array([NestedArray])
}

func flatten(_ input: [NestedArray]) -> [Int] {
    var result: [Int] = []
    
    for element in input {
        switch element {
        case .int(let value):
            result.append(value)
        case .array(let subArray):
            let flatSub = flatten(subArray)   // recursion
            for v in flatSub {                // loop append
                result.append(v)
            }
        }
    }
    
    return result
}

let nested: [NestedArray] = [
    .int(1),
    .array([
        .int(2),
        .array([.int(3), .int(4)]),
        .int(5)
    ]),
    .int(6)
]

let flat = flatten(nested)
print(flat) 
