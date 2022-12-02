import UIKit

let dd = [1,3,2,5,4]
var d = dd.sorted(by: <)
var budget = 9

var arr = [Int]()
var i = 0
var count = budget

//for i in 0..<d.count {
//
//    if budget - d[i] > 0 {
//        print("budget = ", budget - d[i])
//        arr.append(d[i])
//        budget = budget - d[i]
//
//    } else if budget - d[i] == 0 {
//        arr.append(d[i])
//        print("budget2 = ", budget - d[i])
//        break
//    } else if budget - d[i] < 0 {
//        print("budget = ", budget - d[i])
//        budget = budget + d[i - 1]
//        arr.removeLast()
//    }
//}
//print(arr)

while budget >= 0 {

//    for i in 0..<d.count {
//
//    }

    if budget - d[i] > 0 {
        budget = budget - d[i]
        arr.append(d[i])
        i += 1
    }
    if budget - d[i] == 0 {
        arr.append(d[i])
        break
    }
    if budget - d[i] < 0 {
        budget = budget + d[i - 1]
        arr.removeLast()
    }
    if i >= d.count - 1 {
        print("뭔가 잘못됨")
        break
    }

//    budget = budget - d[i]
//    arr.append(d[i])
//    i += 1

}
print(arr)
