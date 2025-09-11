import UIKit

var to : Array<Int> = [1,4,2,47,32,78,44]
var arr = [32,21,553,2]

to.append(12)
to+=[32,43]
to.count
to.insert(contentsOf: arr, at: 3)
to.replaceSubrange(1...5, with: arr)

//slicing

var hope = to[2...7]
print(hope)
var body = Array(hope)
print(body)

//$0 is the shorthand for the current element

body.remove(at: 3)
let square = body.map{$0*$0}
print(square)


//sets

var tone : Set<Int> = [1,2,46,3,56,78]
var toned : Set<Int> = [6,43,32,7,8,9,78]

tone.count
tone.contains(78)
tone.intersection(toned)
tone.insert(34)
tone.remove(46)
tone.isSubset(of: toned)
tone.union(toned)
tone.intersection(toned)
tone.subtracting(toned)
tone.symmetricDifference(toned)

