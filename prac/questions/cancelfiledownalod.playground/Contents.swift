func downloadFile() async throws {
    for i in 1...10 {
        try Task.checkCancellation()
        print("⬇️ Downloading chunk \(i)")
        try await Task.sleep(nanoseconds: 300_000_000) // 0.3s per chunk
    }
    print("✅ File Downloaded")
}

let downloadTask = Task {
    try await downloadFile()
}

Task {
    try await Task.sleep(nanoseconds: 1_000_000_000) // wait 1s
    downloadTask.cancel()
    print("❌ Download Cancelled")
}

