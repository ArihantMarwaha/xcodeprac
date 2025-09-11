
import Foundation

func parallelSum(_ numbers: [Int], chunkSize: Int = 2) async -> Int {
    await withTaskGroup(of: Int.self) { group in
        // Split into chunks
        for chunk in stride(from: 0, to: numbers.count, by: chunkSize) {
            let slice = Array(numbers[chunk..<min(chunk + chunkSize, numbers.count)])
            
            // Add task to compute sum of this slice
            group.addTask {
                print("Computing sum for:", slice)
                return slice.reduce(0, +)
            }
        }
        
        // Collect results
        var total = 0
        for await partialSum in group {
            try? await Task.sleep(nanoseconds: 100_000_000)
            total += partialSum
        }
        return total
    }
}

Task {
    let numbers = Array(1...100)

    let result = await parallelSum(numbers, chunkSize: 5)
    print("Final sum:", result)
}

