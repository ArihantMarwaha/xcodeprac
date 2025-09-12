func jump(_ nums: [Int]) -> Int {
    let n = nums.count
    if n <= 1 { return 0 }
    
    var jumps = 0
    var currentEnd = 0
    var farthest = 0
    
    for i in 0..<n-1 {
        farthest = max(farthest, i + nums[i])
        
        if i == currentEnd {
            jumps += 1
            currentEnd = farthest
        }
    }
    
    return jumps
}

print(jump([2,3,1,1,4]))   
print(jump([2,3,0,1,4]))
