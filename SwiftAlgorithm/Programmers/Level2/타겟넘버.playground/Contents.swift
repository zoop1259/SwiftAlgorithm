import UIKit

var numbersCopy = [Int]()
var targetCopy = 0
var count = 0
 
func dfs(_ depth: Int, _ sum: Int) {
  print("depth: \(depth), sum: \(sum), count: \(count)")

    if depth == numbersCopy.count {
        if sum == targetCopy {
            count += 1
        }
        return
    }
//  print("depth: \(depth), sum: \(sum), count: \(count)")
    dfs(depth + 1, sum + numbersCopy[depth]) //먼저 +가 쭉 진행됨. 5까지.
    dfs(depth + 1, sum - numbersCopy[depth])
//  print("계산후depth: \(depth), sum: \(sum), count: \(count)")
 
  
  
}

func solution(_ numbers:[Int], _ target:Int) -> Int {
    numbersCopy = numbers
    targetCopy = target
    dfs(0, 0)
    return count
}


solution([1, 1, 1, 1, 1], 3)
//solution([4, 1, 2, 1]    , 4)

/*
 depth: 0, sum: 0, count: 0
 depth: 1, sum: 1, count: 0
 depth: 2, sum: 2, count: 0
 depth: 3, sum: 3, count: 0
 depth: 4, sum: 4, count: 0
 계산후depth: 4, sum: 4, count: 1
 depth: 4, sum: 2, count: 1
 계산후depth: 4, sum: 2, count: 2
 계산후depth: 3, sum: 3, count: 2
 depth: 3, sum: 1, count: 2
 depth: 4, sum: 2, count: 2
 계산후depth: 4, sum: 2, count: 3
 depth: 4, sum: 0, count: 3
 계산후depth: 4, sum: 0, count: 3
 계산후depth: 3, sum: 1, count: 3
 계산후depth: 2, sum: 2, count: 3
 depth: 2, sum: 0, count: 3
 depth: 3, sum: 1, count: 3
 depth: 4, sum: 2, count: 3
 계산후depth: 4, sum: 2, count: 4
 depth: 4, sum: 0, count: 4
 계산후depth: 4, sum: 0, count: 4
 계산후depth: 3, sum: 1, count: 4
 depth: 3, sum: -1, count: 4
 depth: 4, sum: 0, count: 4
 계산후depth: 4, sum: 0, count: 4
 depth: 4, sum: -2, count: 4
 계산후depth: 4, sum: -2, count: 4
 계산후depth: 3, sum: -1, count: 4
 계산후depth: 2, sum: 0, count: 4
 계산후depth: 1, sum: 1, count: 4
 depth: 1, sum: -1, count: 4
 depth: 2, sum: 0, count: 4
 depth: 3, sum: 1, count: 4
 depth: 4, sum: 2, count: 4
 계산후depth: 4, sum: 2, count: 5
 depth: 4, sum: 0, count: 5
 계산후depth: 4, sum: 0, count: 5
 계산후depth: 3, sum: 1, count: 5
 depth: 3, sum: -1, count: 5
 depth: 4, sum: 0, count: 5
 계산후depth: 4, sum: 0, count: 5
 depth: 4, sum: -2, count: 5
 계산후depth: 4, sum: -2, count: 5
 계산후depth: 3, sum: -1, count: 5
 계산후depth: 2, sum: 0, count: 5
 depth: 2, sum: -2, count: 5
 depth: 3, sum: -1, count: 5
 depth: 4, sum: 0, count: 5
 계산후depth: 4, sum: 0, count: 5
 depth: 4, sum: -2, count: 5
 계산후depth: 4, sum: -2, count: 5
 계산후depth: 3, sum: -1, count: 5
 depth: 3, sum: -3, count: 5
 depth: 4, sum: -2, count: 5
 계산후depth: 4, sum: -2, count: 5
 depth: 4, sum: -4, count: 5
 계산후depth: 4, sum: -4, count: 5
 계산후depth: 3, sum: -3, count: 5
 계산후depth: 2, sum: -2, count: 5
 계산후depth: 1, sum: -1, count: 5
 계산후depth: 0, sum: 0, count: 5
 */
