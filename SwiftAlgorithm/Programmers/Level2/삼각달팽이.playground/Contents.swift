import UIKit

print( (33-18) * 600 + 5000 )

func solution(_ n:Int) -> [Int] {
  var arr = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
  var loop = n
  var x = 0
  var y = 0
  var count = 1
  
  var direction = 0
  
  while loop >= 1 {
    
    for i in 1...loop {
      if direction % 3 == 0 {
        arr[x][y] = count
        if i != loop {
          x += 1
        } else {
          y += 1
        }
        count += 1
      } else if direction % 3 == 1 {
        arr[x][y] = count
        if i != loop {
          y += 1
        } else {
          x -= 1
          y -= 1
        }
        count += 1
      } else {
        arr[x][y] = count
        if i != loop {
          x -= 1
          y -= 1
        } else {
          x += 1
        }
        count += 1
      }
    }
    loop -= 1
    direction += 1
  }
  
  let res = arr.flatMap{ $0 }.filter { $0 != 0 }
  
  return res
}

solution(4)
/*
 [1,2,9,3,10,8,4,5,6,7]
 n부터 시작하여 n-1씩 해서 돌아가게 된다.
 down부터 시작해서 4번
 그다음 right는 3번
 그다음 up은 2번
 그 다음 다시 down 1번
 그리고 0이므로 빠져나온다.
 
 1
 23
 456
 78910
 
 
 */
