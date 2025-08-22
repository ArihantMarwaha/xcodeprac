func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
    var wordSet = Set(wordList)
    if !wordSet.contains(endWord) {
        return 0
    }

    var queue: [(String, Int)] = [(beginWord, 1)]

    while !queue.isEmpty {
        let (word, length) = queue.removeFirst()
        if word == endWord {
            return length
        }

        var chars = Array(word)
        for i in 0..<chars.count {
            let original = chars[i]
            for c in "abcdefghijklmnopqrstuvwxyz" {
                if c == original { continue }
                chars[i] = c
                let nextWord = String(chars)
                if wordSet.contains(nextWord) {
                    queue.append((nextWord, length + 1))
                    wordSet.remove(nextWord)
                }
            }
            chars[i] = original
        }
    }
    return 0
}

print(ladderLength("hit", "cog", ["hot","dot","dog","lot","log","cog"]))


print(ladderLength("hit", "cog", ["hot","dot","dog","lot","log"]))

//this is a comit to the file

