import UIKit

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
  var arr = [Int]()
  
  //일수를 계산
  for i in 0..<progresses.count {
    var count = 0
    var pro = progresses[i]
    while pro < 100 {
      pro += speeds[i]
      count += 1
    }
    arr.append(count)
  }
  print(arr)
  
  var first = arr[0]
  var res = [Int]()
  var count = 0
  //배열 맨 앞의 숫자를 기억해놓고 그거보다 낮은숫자들은 한번에 나간다. 그리고 append하고 나머지는 그다음에 계산한다.
  while !arr.isEmpty {
    
    if !arr.isEmpty {
      
      if arr[0] <= first {
        arr.removeFirst()
        count += 1
        if arr.isEmpty {
          res.append(count)
        }
      } else {
        res.append(count)
        count = 0
        first = arr[0]
      }
      
    } else {
      break
    }
    
  }
    return res
}

solution([95, 90, 99, 99, 80, 99]  , [1, 1, 1, 1, 1, 1]  )
//solution([93, 30, 55]  , [1, 30, 5]  )
