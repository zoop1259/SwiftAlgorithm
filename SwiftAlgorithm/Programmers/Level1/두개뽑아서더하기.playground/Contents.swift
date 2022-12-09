import UIKit

let numbers = [2,1,3,4,1]
//let numbers = [5,0,2,7]
var arr = [Int]()

//1.하나를 뽑는다.
//2.뽑힌거 제외하고 하나를 뽑는다.
//3.두개를 더해 중복제거하여 저장한다.
//4.오름차순으로 정렬한다.

for i in 0..<numbers.count {
    for j in i+1..<numbers.count {
        var ij = numbers[i] + numbers[j]

        if arr.contains(ij) == false {
            arr.append(ij)
            print(arr.count)
        }
    }
}
print(arr.sorted())

//삽질
//for i in numbers {
//
//    for j in num.remove(at: i) {
//
//    }
//
//
//}


//for i in 0..<numbers.count {
//    var count = 1
//    for j in 1..<numbers.count {
//        count += 1
//        if count == 2 {
//            let ij = numbers[i] + numbers[j]
//            //print(ij)
//            if arr.contains(ij) == false {
//                arr.append(ij)
//                print(arr.count)
//            }
//        }
//    }
//
//}
//print(arr)
