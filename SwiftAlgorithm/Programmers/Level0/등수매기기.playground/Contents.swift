import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var a = score.map { redu in
        redu.reduce(0, +)
    }
    
    var b = a.sorted(by: >)
    var arr = [Int]()

    for i in 0..<a.count {
        let indexOfA = b.firstIndex(of: a[i])
        arr.append(indexOfA ?? i)
    }
    
    return arr.map { $0 + 1}
}



/* //삽질
import UIKit

//let score = [[80, 70], [90, 50], [40, 70], [50, 80]]
//let score = [[80, 70], [90, 50], [50, 80], [40, 70]]
let score = [[80, 70], [70, 80], [30, 50], [90, 100], [100, 90], [100, 100], [10, 30]]
//[4, 4, 6, 2, 2, 1, 7]


var a = score.map { red in
    red.reduce(0, +)
}
//print(a)
//[150, 150, 80, 190, 190, 200, 40]


var b = a.sorted(by: >)
//[200,190,190,150,150,80,40]

//for (idx, sco) in a.enumerated() {
//
////    print(idx, sco)
//
//    let indexOfA = a.firstIndex(of: b[idx])
//    print(indexOfA)
//}

var arr = [Int]()

for i in 1..<a.count {
    if arr.isEmpty == true {
        arr.append(a.firstIndex(of: b[0])!)
    }
    
    if b[i] == b[i - 1] {
        arr.append(a.firstIndex(of: b[i - 1])!)
    } else {
        arr.append(a.firstIndex(of: b[i])!)
    }
}

//print(arr)

var arr2 = [Int]()
for i in 0..<a.count {
        let indexOfA = b.firstIndex(of: a[i])
    print(a[i])     //200 190 190 150 150 80 40
    //    let indexOfA = a.firstIndex(where: {$0 == b[i]})
    //    print(indexOfA ?? i)
    arr2.append(indexOfA ?? i)
        
}

print(arr2)

var res = [Int]()
for i in arr2 {
    res.append(i + 1)
}

print(res)
//[150, 150, 80, 190, 190, 200, 40] //a
//[200, 190,190, 150, 150,  80, 40] //b   //0 1 1 3 3 5 6 // 1 2 2 4 4 6 7
//[4, 4, 6, 2, 2, 1, 7]


*/
