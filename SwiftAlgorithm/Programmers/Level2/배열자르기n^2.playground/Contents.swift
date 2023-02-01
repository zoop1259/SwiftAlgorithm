import UIKit

let n = 4
var arr = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
print(arr)

for i in 0..<n {
    print(i)
    for j in 0..<n {
        var s = 0
        s = i >= j ? i + 1 : j + 1
        arr[i][j] = s
    }
}
print(arr)



func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    return []
}

/* 3은제대로 된다. 4부터는 원하는 결과가 나오지 않는다.
 let n = 3
 var arr = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
 print(arr)

 for i in 0..<n {
     print(i)
     for j in 0..<n {
         
         if i + j >= n {
             arr[i][j] = n
         } else if i == j {
             arr[i][j] = i + 1
         } else {
             arr[i][j] = i + j + 1
         }
     }
 }
 print(arr)
 */
