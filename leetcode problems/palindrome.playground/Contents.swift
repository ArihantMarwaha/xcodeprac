func longestPalindrome(_ s: String) -> String {
    let n = s.count
    if n == 0 { return "" }


    var chars: [Character] = []
    for c in s {
        chars.append(c)
    }

    var start = 0
    var maxLen = 1


    func expand(_ left: Int, _ right: Int) {
        var l = left
        var r = right
        while l >= 0 && r < n && chars[l] == chars[r] {
            l -= 1
            r += 1
        }
        let len = r - l - 1
        if len > maxLen {
            maxLen = len
            start = l + 1
        }
    }

    for i in 0..<n {
        expand(i, i)
        expand(i, i + 1)
    }

    var result = ""
    var end = start + maxLen
    var idx = start
    while idx < end {
        result.append(chars[idx])
        idx += 1
    }

    return result
}

// Tests
print(longestPalindrome("babad")) // "bab" or "aba"
print(longestPalindrome("cbbd"))  // "bb"
print(longestPalindrome("a"))     // "a"
print(longestPalindrome("ac"))    // "a" or "c"

