import UIKit

//제출한 답
import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {

var key = [["*","0","#"],
           ["7","8","9"],
           ["4","5","6"],
           ["1","2","3"]]

var l = [0,0]
var r = [0,2]

var res = ""
    
for i in numbers {
    for (idx, str) in key.enumerated() {
        for (idx2, str2) in str.enumerated() {
            if String(i) == str2 {
                var placeArr = [idx,idx2]
                if i == 1 || i == 4 || i == 7 {
                    res += "L"
                    l = [idx,idx2]
                } else if i == 3 || i == 6 || i == 9 {
                    res += "R"
                    r = [idx,idx2]
                } else {
                    if l == placeArr {
                        res += "L"
                    } else if r == placeArr {
                        res += "R"
                    } else if abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]) < abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]) {
                        res += "L"
                        l = [idx,idx2]
                    } else if abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]) > abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]) {
                        res += "R"
                        r = [idx,idx2]
                    } else {
                        if hand == "left" {
                            res += "L"
                            l = [idx,idx2]
                        } else {
                            res += "R"
                            r = [idx, idx2]
                        }
                    }
                }
            }
        }
    }
}
    return res
}

//var key = [["1","2","3"], // [0][2]
//           ["4","5","6"], // [1][0] [1][1]
//           ["7","8","9"], //7로 가면 left 는 [2][0]  0은 [3][1]  8은 [2][1]
//           ["*","0","#"]]

var key = [["*","0","#"],
           ["7","8","9"], //7로 가면 left 는 [2][0]  0은 [3][1]  8은 [2][1]
           ["4","5","6"],
           ["1","2","3"]]

//4에 있고 9에 있고 5를 눌러야함
//[2,0] [1,2]
//[2,1]

//let numbers = [1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5]
//let numbers = [7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2]
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
//let numbers = [7, 0]

//기본값에 인덱스만을 더해서...
var l = [0,0]
var r = [0,2]

var left = l.reduce(0, +)
var right = r.reduce(0, +)

var hand = "right"
//let hand = "left"
var res = ""


for i in numbers {
    for (idx, str) in key.enumerated() {
        for (idx2, str2) in str.enumerated() {
            
            if String(i) == str2 {
                //print("찾았다.", i, idx, idx2)
                
                var place = idx + idx2
                var placeArr = [idx,idx2]
                //print(place)
                
                if i == 1 || i == 4 || i == 7 {
                    print(i, left, right, l, r, placeArr, abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]), abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]), key[l[0]][l[1]], key[r[0]][r[1]])
                    res += "L"
                    //left = place
                    l = [idx,idx2]
                    left = l.reduce(0, +)
                    
                    
                    
                } else if i == 3 || i == 6 || i == 9 {
                    res += "R"
                    //right = place
                    r = [idx,idx2]
                    right = r.reduce(0, +)
                    print(i, left, right, l, r, placeArr, abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]), abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]), key[l[0]][l[1]], key[r[0]][r[1]])
                } else {
                    if l == placeArr {
                        res += "L"
                    } else if r == placeArr {
                        res += "R"
                    } else if abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]) < abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]) {
                        res += "L"
                        l = [idx,idx2]
                        left = l.reduce(0, +)
                        //left = place
                        print(i, left, right, l, r, placeArr, abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]), abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]), key[l[0]][l[1]], key[r[0]][r[1]])
                    } else if abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]) > abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]) {
                        res += "R"
                        r = [idx,idx2]
                        right = r.reduce(0, +)
                        //right = place
                        print(i, left, right, l, r, placeArr, abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]), abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]), key[l[0]][l[1]], key[r[0]][r[1]])
                        //                    } else if l == r {
                    } else {
                        if hand == "left" {
                            print(i, left, right, l, r, placeArr, abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]), abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]), key[l[0]][l[1]], key[r[0]][r[1]])
                            res += "L"
                            //left = place
                            l = [idx,idx2]
                            left = l.reduce(0, +)
                        } else {
                            res += "R"
                            //right = place
                            r = [idx, idx2]
                            right = r.reduce(0, +)
                            print(i, left, right, l, r, placeArr, abs(l[0] - placeArr[0]) + abs(l[1] - placeArr[1]), abs(r[0] - placeArr[0]) + abs(r[1] - placeArr[1]), key[l[0]][l[1]], key[r[0]][r[1]])
                        }
                    }
                }
            }
//            print(str2)
        }
    }
}
print(res)
//LRLLLRLLRRL 이게 나와야함.
//LRLLLRLLRRL

//case 2
//LRLLRRLLLRR dlrp
//LRLLRRLLLRR

//case 3
//LLRLLRLLRL dlrp
//LLRLLRLLRL
//7에있고 #에있고 0을 눌러야함.
//[1,0] [0,2]
//[0,1]
