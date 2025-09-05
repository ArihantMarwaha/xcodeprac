import Foundation

func maxPoints(_ points: [[Int]]) -> Int {
    let n = points.count
    if n <= 2 { return n }
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        var a = abs(a), b = abs(b)
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }
    
    var result = 0
    
    for i in 0..<n {
        var slopeCount = [String: Int]()
        var samePoint = 0
        var maxSlope = 0
        let (x1, y1) = (points[i][0], points[i][1])
        
        for j in (i+1)..<n {
            let (x2, y2) = (points[j][0], points[j][1])
            var dx = x2 - x1
            var dy = y2 - y1
            
            if dx == 0 && dy == 0 {
                samePoint += 1
                continue
            }
            
            let g = gcd(dx, dy)
            dx /= g
            dy /= g
            
            // normalize slope direction
            if dx < 0 {
                dx = -dx
                dy = -dy
            } else if dx == 0 {
                dy = 1
            } else if dy == 0 {
                dx = 1
            }
            
            let key = "\(dx),\(dy)"
            slopeCount[key, default: 0] += 1
            maxSlope = max(maxSlope, slopeCount[key]!)
        }
        
        result = max(result, maxSlope + samePoint + 1)
    }
    
    return result
}


print(maxPoints([[1,1],[2,2],[3,3]]))
// Output: 3

print(maxPoints([[1,1],[3,2],[5,3],[4,1],[2,3],[1,4]]))
// Output: 4

