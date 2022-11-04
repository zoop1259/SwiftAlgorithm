import UIKit
import Foundation

//let dots = [[1, 4], [9, 2], [3, 8], [11, 6]]
let dots = [[1, 4], [9, 2], [3, 8], [-1, -9]]

//if dots[0] == dots[1] || dots[0] == dots[2] || dots[0] == dots[3] || dots[1] == dots[2] || dots[1] == dots[3] || dots[2] == dots[3] {
//    print("중복")
//}
print(dots[0], dots[3])
if dots[0] == dots[1] {
    if dots[2] == dots[3] {
        print("중복")
    }
}

if dots[0] == dots[2] {
    
}

var count = 0

//dots[0][0] = 1
//dots[0][1] = 4
//dots[1][0] = 9
//dots[1][1] = 2
//dots[2][0] = 3
//dots[2][1] = 8
//dots[3][0] = 11
//dots[3][1] = 6

let a1 = dots[0][0]
let a2 = dots[0][1]
let b1 = dots[1][0]
let b2 = dots[1][1]
let c1 = dots[2][0]
let c2 = dots[2][1]
let d1 = dots[3][0]
let d2 = dots[3][1]

if a1 - b1 == c1 - d1 {
    if a2 - b2 == c2 - d2 {
        count == 1
    }
}





/*
let arr1 = [dots[0][0], dots[1][0], dots[2][0], dots[3][0]]


let setarr1 = Set(arr1)

if arr1.count != setarr1.count {
    print("중복")
}

//func solution1(_ array:[Int], _ n:Int) -> Int { array.filter {$0 == n}.count }

//겹치는지 확인
let filt = dots.filter { dots.contains($0) }



//if a1 == b1 || a1 == c1 || a1 == d1 || b1 == c1 || b1 == d1 || c1 == d1 {
//    if a2 == b2 ||
//
//}

//각 선 비교.
for i in dots {
    
    //print(i.filter { dots.contains($0) })
}



//let a = abs(dots[0][0] - dots[2][0])
//let b = abs(dots[0][1] - dots[2][1])
//
//let c = abs(dots[1][0] - dots[3][0])
//let d = abs(dots[1][1] - dots[3][1])
//
//for i in 0..<dots.count-1 {
//
//    if dots[i] == dots[i+1] {
//        print("겹침")
//    }
//}

func solution(_ dots:[[Int]]) -> Int {
    var count = 0
    //중복검사?
    if dots[0] == dots[1] || dots[0] == dots[2] || dots[0] == dots[3] || dots[1] == dots[2] || dots[1] == dots[3] || dots[2] == dots[3] {
        return 1
    }
    
    let a1 = dots[0][0]
    let a2 = dots[0][1]
    let b1 = dots[1][0]
    let b2 = dots[1][1]
    let c1 = dots[2][0]
    let c2 = dots[2][1]
    let d1 = dots[3][0]
    let d2 = dots[3][1]

    if abs(a1 - b1) == abs(c1 - d1) {
        if abs(a2 - b2) == abs(c2 - d2) {
            return 1
        }
    }
    
    if abs(a1 - c1) == abs(b1 - d1) {
        if abs(a2 - c2) == abs(b2 - d2) {
            return 1
        }
    }
    
    if abs(a1 - d1) == abs(b1 - c1) {
        if abs(a2 - d2) == abs(b2 - c2) {
            return 1
        }
    }
    
    return 0
}

let a = -4
let b = 10
let c = -2

print(abs(a) + abs(c))


*/


//func solution(_ dots:[[Int]]) -> Int {
//
//    let x1 = Double(dots[0][0]), y1 = Double(dots[0][1])
//    let x2 = Double(dots[1][0]), y2 = Double(dots[1][1])
//    let x3 = Double(dots[2][0]), y3 = Double(dots[2][1])
//    let x4 = Double(dots[3][0]), y4 = Double(dots[3][1])
//
//    let px = (x1 * y2 - y1 * x2) * (x3 - x4) - (x1 - x2) * (x3 * y4 - y3 * x4)
//    let py = (x1 * y2 - y1 * x2) * (y3 - y4) - (y1 - y2) * (x3 * y4 - y3 * x4)
//    let p = (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4)
//
//    //평행
//    if p == 0 {
//        return 1
//    }
//    return 0
//}


