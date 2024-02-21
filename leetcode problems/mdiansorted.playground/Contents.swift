func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    // ensure nums1 is smaller
    var A = nums1
    var B = nums2
    if A.count > B.count {
        swap(&A, &B)
    }

    let m = A.count
    let n = B.count
    var low = 0
    var high = m

    while low <= high {
        let i = (low + high) / 2
        let j = (m + n + 1) / 2 - i

        let maxLeftA = (i == 0) ? Int.min : A[i - 1]
        let minRightA = (i == m) ? Int.max : A[i]

        let maxLeftB = (j == 0) ? Int.min : B[j - 1]
        let minRightB = (j == n) ? Int.max : B[j]

        if maxLeftA <= minRightB && maxLeftB <= minRightA {
            // correct partition
            if (m + n) % 2 == 0 {
                return Double(max(maxLeftA, maxLeftB) + min(minRightA, minRightB)) / 2.0
            } else {
                return Double(max(maxLeftA, maxLeftB))
            }
        } else if maxLeftA > minRightB {
            high = i - 1
        } else {
            low = i + 1
        }
    }

    return 0.0 // should never reach
}


print(findMedianSortedArrays([1, 3], [2]))      
print(findMedianSortedArrays([1, 2], [3, 4]))
print(findMedianSortedArrays([0, 0], [0, 0]))
print(findMedianSortedArrays([], [1]))
print(findMedianSortedArrays([2], []))
