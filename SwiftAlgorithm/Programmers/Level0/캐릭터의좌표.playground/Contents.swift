import UIKit

//제출한답
import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {

var LR = 0
var UD = 0

let floor0 = board[0] / 2
let floor1 = board[1] / 2

for i in 0..<keyinput.count {
    if keyinput[i] == "left" {
        LR -= 1
    } else if keyinput[i] == "right" {
        LR += 1
    } else if keyinput[i] == "up" {
        UD += 1
    } else if keyinput[i] == "down" {
        UD -= 1
    }
    
    if LR >= floor0 {
        LR = floor0
    } else if LR <= -floor0 {
        LR = -floor0
    }

    if UD >= floor1 {
        UD = floor1
    } else if UD <= -floor1 {
        UD = -floor1
    }
}
    return [LR,UD]
}


/* 이동한 거리값을 한번에 더했던게 문제였다. 4에서 가도 4여야 하는데 5로 되었으니 계산실수가 날 수 밖에..
//let keyinput = ["left", "right", "up", "right", "right"]
//let board = [11, 11]

let keyinput = ["down", "down", "down", "down", "down"]
let board = [7,3]

var LR = 0
var UD = 0

for i in 0..<keyinput.count {
    if keyinput[i] == "left" {
        LR -= 1
    } else if keyinput[i] == "right" {
        LR += 1
    } else if keyinput[i] == "up" {
        UD += 1
    } else if keyinput[i] == "down" {
        UD -= 1
    }
}

print(UD)

let floor0 = board[0] / 2
let floor1 = board[1] / 2

if LR >= floor0 {
    LR = floor0
} else if LR <= -floor0 {
    LR = -floor0
}

UD = 1

if UD >= floor1 {
    UD = floor1
} else if UD <= -floor1 {
    UD = -floor1
}



print(UD)

let arr = [LR, UD]
print(arr)
*/
