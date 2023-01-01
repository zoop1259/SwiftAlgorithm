import UIKit

let arr1 = [1, 2, 3, 4]
var answer = [[Int]](repeating: [Int](), count: arr1.count)
var answer2 = Array(repeating: [Int](), count: arr1.count)
var answer3 = Array(repeating: Int(), count: 3)
var answer4: [Int] = []
print(answer4)


func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = Array(repeating: [Int](), count: arr1.count)
    
    for i in 0..<arr1.count {
        for j in 0..<arr2[0].count{
            var value = 0
            for k in 0..<arr2.count{
                value += arr1[i][k] * arr2[k][j]
            }
            answer[i].append(value)
        }
    }
    return answer
}

//좀 더 깔끔한 코드
func solution3(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {

    var returnArr = [[Int]](repeating: [Int](repeating: 0, count: arr2[0].count), count: arr1.count)

    for i in 0..<arr1.count {
        for j in 0..<arr2[0].count {
            for k in 0..<arr1[i].count {
                returnArr[i][j] = returnArr[i][j] + arr1[i][k] * arr2[k][j]
            }
        }
    }
    return returnArr
}




func solution2(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
//    for i in arr1 {
//        for j in arr2 {
//            var a = [Int]()
//
//            for k in j {
//            }
//        }
//    }
// print(zip(arr1, arr2))
    
    var varArr2 = arr2
    var test = [[Int]]()
    var test2 = [Int]()
    var count = 0
    
    while count <= arr2.count - 1 {
        test2 = []
        for i in varArr2 {
            test2.append(i[count])
        }
        test.append(test2)
        count += 1
    }
    print(test)
    
    var b = 0
    var res = [[Int]]()
    for i in arr1 {
        
        var arr = [Int]()
        
        for j in test {
            
            let a = zip(i, j).map { $0 * $1 }
            print(a)
            b = a.reduce(0, +)
            arr.append(b)
        }
        
        res.append(arr)
    }
    print(res)
    
//    for i in arr1 {
//        test = []
//        for j in varArr2 {
//            for k in 0..<j.count {
//                test.append(j[k])
//            }
////            test.append(j[0])
////            varArr2.remove(at: varArr2[0])
////            print(test)
////            print(varArr2)
//        }
//    }
    //    print(zip(arr1,arr2).map{zip($0,$1)}, "\n")
    //let a = zip(i,j).reduce(0) { $0 + $1.0 * $1.1}
//    let a = zip(i, j).map { $0 * $1 }
    return []
}

//solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]])
solution([[2, 3, 2],
          [4, 2, 4],
          [3, 1, 4]]    , [[5, 4, 3],
                           [2, 4, 1], [
                            3, 1, 1]]    )
