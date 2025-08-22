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

//Two Sum Problem → Find two numbers in an array that add up to a target (Dictionary-based)
//Flatten a nested array (using recursion + loops)
