import UIKit

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var b = 0
    var res = [[Int]]()
    for i in arr1 {
        
        var arr = [Int]()
        
        for j in arr2 {
            
            let a = zip(i, j).map { $0 * $1 }
            print(a)
            b = a.reduce(0, +)
            arr.append(b)
        }
        
        res.append(arr)
    }
    print(res)
    
    /*
     for i in arr1 {
         for j in arr2 {
             let a = zip(i,j).reduce(0) { $0 + $1.0 * $1.1}
             print(a)
         }
     }

     */
    
    return []
}

solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]])

