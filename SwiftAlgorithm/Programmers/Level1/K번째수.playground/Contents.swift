import UIKit

let arr = [1, 5, 2, 6, 3, 7, 4]
//print(arr.index(2, offsetBy: 5))
//let mapped = arr[2...5].map { $0 }
//print(mapped)

let command = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]

var res = [Int]()

for i in command {
    let a = i[0] - 1
//    print(a)
    let b = i[1] - 1
    
    //각 인덱스별로 배열에 매핑. 근데 이렇게하면 모든 수가 더해져버림.
    let mapped = arr[a...b].map { $0 }
//    print(mapped)
    
    //각 인덱스값으로 배열에 추가한후 정렬한다.
    let ar = arr[a...b].sorted()
//    print(ar)
    let c = i[2] - 1
//    print(c)
    
    //그리고 답을 뺴내고
    let ret = ar[c]
    //추가한다.
    res.append(ret)
}

print(res)

/*
 //배열 범위 append
 let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

 let subset = numbers[2..<5]
 let mappedSubset = subset.map { $0 * 2 }

 print(mappedSubset)  // [6, 8, 10]
 */

/*
 //map을 사용한 append
 let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

 let mappedSubset = numbers[2..<5].map { $0 * 2 }

 print(mappedSubset)  // [6, 8, 10]
 */

/*
 //리턴 코딩
 func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
      return commands.map({(key) in
          return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
      })

  }
 */
