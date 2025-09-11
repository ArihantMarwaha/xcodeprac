import Foundation

var greeting = "Hello, playground"
print("eloo : \(greeting)")


enum gg : Error {
    case bore
}


func bore(_ age : Int) throws -> String {
    
    if age < 18 {
        throw gg.bore
    }else {
        return "BORE"
    }
        
}

do {
    let bost = try bore(13)
    print(bost)
    
}catch gg.bore {
    print("This age is not appropriate")
}


func checks() async throws {
    for i in 0...5{
        try Task.checkCancellation()
        print("Loading chunk \(i)")
        try await Task.sleep(nanoseconds: 500_000_000)
    }
}

let yess = Task{
    try await checks()
}

let fort = Task {
    try await Task.sleep(nanoseconds: 1_000_000_000)
    yess.cancel() // cancel after 1 second
}

func downloadFiles() async -> [String] {
    await withTaskGroup(of: String.self) { group in
        let files = ["a.pdf", "b.pdf", "c.pdf"]
        
        // Add tasks to the group
        for file in files {
            group.addTask {
                try? await Task.sleep(nanoseconds: 1_000_000_000)
                return "\(file) downloaded"
            }
        }
        
        // Collect results
        var results = [String]()
        for await result in group {
            results.append(result)
        }
        
        return results
    }
}

Task {
    let downloads = await downloadFiles()
    print(downloads) // ["a.pdf downloaded", "b.pdf downloaded", "c.pdf downloaded"]
}
