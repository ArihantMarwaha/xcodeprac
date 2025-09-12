func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
    let n = s1.count
    let m = s2.count
    
    if n + m != s3.count {
        return false
    }
    
    let arr1 = Array(s1)
    let arr2 = Array(s2)
    let arr3 = Array(s3)
    
    var dp = Array(repeating: Array(repeating: false, count: m + 1), count: n + 1)
    dp[0][0] = true
    
    for i in 0...n {
        for j in 0...m {
            if i > 0 && arr1[i - 1] == arr3[i + j - 1] && dp[i - 1][j] {
                dp[i][j] = true
            }
            if j > 0 && arr2[j - 1] == arr3[i + j - 1] && dp[i][j - 1] {
                dp[i][j] = true
            }
        }
    }
    
    return dp[n][m]
}


print(isInterleave("abc", "def", "adbcef"))      
print(isInterleave("aabcc", "dbbca", "aadbbcbcac"))
print(isInterleave("aabcc", "dbbca", "aadbbbaccc"))

