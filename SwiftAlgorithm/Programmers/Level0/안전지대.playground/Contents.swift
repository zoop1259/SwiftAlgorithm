import UIKit


//var board = [[0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 0, 0, 0], [0, 0, 1, 0, 0], [0, 0, 0, 0, 0]]
//var board = [[0, 0, 0, 0, 1], [0, 1, 0, 1, 0], [0, 1, 0, 0, 0], [0, 0, 1, 0, 0], [0, 1, 0, 0, 0]]
//var board = [[0],[1]]
//var board = [[1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]]
//var board = [[0,0,0],[0,0,0],[0,0,1]]
//var board = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
var board = [[0,0],[1,0]]
//var board = [[0,1],[0,0]]


//var board = [[0,0,0],[0,0,0],[0,1,0]]
print(board)
var board2 = board
//board[0][0] = 0 , board[0][1] = 1
//[[0,1]]
//print(board[0][1]) //

for i in 0..<board.count {
    //print(board[i])
    for j in 0..<board[i].count {
        if board[i][j] == 1 {
//            왜 범위초과지...
            //board2[i+1][j] = 1
            
            //print(board[i][j])
            //board2[i][j] = 1
//            if i >= 1 && j >= 1 && i < board2.count - 1 && j < board2.count - 1 {
//                board2[i-1][j+1] = 1
//                board2[i+1][j-1] = 1
//            }

            if i < board2.count - 1 && j >= 1{
                board2[i+1][j-1] = 1
            }
            if i >= 1 && j < board2.count - 1 {
                board2[i-1][j+1] = 1
            }
            
            if i >= 1 && j >= 1 {
                board2[i-1][j-1] = 1
            }
            if i < board2.count - 1 && j < board2.count - 1 {
                board2[i+1][j+1] = 1
            }
            
            if i >= 1 {
                board2[i-1][j] = 1
            }
            if j >= 1 {
                board2[i][j-1] = 1
            }

            if i < board2.count - 1 {
                board2[i+1][j] = 1
            }
            if j < board2.count - 1 {
                board2[i][j+1] = 1
            }
        }
    }
}

print(board2)
print(board2[0][1])
var count = 0
for i in 0..<board2.count {
    for j in 0..<board2[i].count {
        if board2[i][j] == 0 {
            count += 1
        }
    }
}

print(count)

