import Foundation

func imawaittoolong()async -> String {
    
    try? await Task.sleep(nanoseconds: 2_000_000_000) // 2 seconds
    return "User data loaded"
    
}

Task {
    let data = await imawaittoolong()
        print(data) // prints after 2 seconds
}


func fetchImages() async -> [String] {
    await withTaskGroup(of: String.self) { group in
        let urls = ["img1", "img2", "img3"]
        
        for url in urls {
            group.addTask {
                // simulate async image download
                try? await Task.sleep(nanoseconds: 1_000_000_000)
                return "\(url) downloaded"
            }
        }
        
        var results: [String] = []
        for await result in group {
            results.append(result)
        }
        return results
    }
}

Task {
    let images = await fetchImages()
    print(images) // ["img1 downloaded", "img2 downloaded", "img3 downloaded"]
}


DispatchQueue.global().async {
    // background task
    print("Downloading...")
    DispatchQueue.main.async {
        // update UI on main thread
        print("Done downloading")
    }
}


actor BankAccount {
    private var balance: Int = 0
    
    func deposit(amount: Int) {
        balance += amount
    }
    
    func getBalance() -> Int {
        balance
    }
}

let account = BankAccount()

Task {
    await account.deposit(amount: 100)
    let balance = await account.getBalance()
    print("Balance: \(balance)")
}


func loadFile() async throws {
    for i in 1...5 {
        try Task.checkCancellation()
        print("Loading chunk \(i)")
        try await Task.sleep(nanoseconds: 500_000_000)
    }
}

let task = Task {
    try await loadFile()
}

Task {
    try await Task.sleep(nanoseconds: 1_000_000_000)
    task.cancel() // cancel after 1 second
}
