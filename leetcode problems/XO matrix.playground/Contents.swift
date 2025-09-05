import UIKit

class Solution {
    func solve(_ board: inout [[Character]]) {
        let m = board.count
        let n = board[0].count
        if m == 0 || n == 0 { return }
        
        func dfs(_ r: Int, _ c: Int) {
            if r < 0 || r >= m || c < 0 || c >= n || board[r][c] != "O" {
                return
            }
            board[r][c] = "S"  // temporary marker for safe region
            dfs(r+1, c)
            dfs(r-1, c)
            dfs(r, c+1)
            dfs(r, c-1)
        }
        
        // Step 1: Mark all border-connected "O" as safe
        for i in 0..<m {
            if board[i][0] == "O" { dfs(i, 0) }
            if board[i][n-1] == "O" { dfs(i, n-1) }
        }
        for j in 0..<n {
            if board[0][j] == "O" { dfs(0, j) }
            if board[m-1][j] == "O" { dfs(m-1, j) }
        }
        
        // Step 2: Flip the board
        for i in 0..<m {
            for j in 0..<n {
                if board[i][j] == "O" {
                    board[i][j] = "X"  // captured
                } else if board[i][j] == "S" {
                    board[i][j] = "O"  // restore safe
                }
            }
        }
    }
}


var board: [[Character]] = [
    ["X","X","X","X"],
    ["X","O","O","X"],
    ["X","X","O","X"],
    ["X","O","X","X"]
]

let solver = Solution()
solver.solve(&board)

print(board)
// Output:
// [["X","X","X","X"],
//  ["X","X","X","X"],
//  ["X","X","X","X"],
//  ["X","O","X","X"]]
