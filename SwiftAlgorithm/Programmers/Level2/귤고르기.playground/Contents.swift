import UIKit

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    let changeArray = tangerine.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    //[(key: 2, value: 2), (key: 3, value: 2), (key: 5, value: 2), (key: 4, value: 1), (key: 1, value: 1)] // 밸류순으로 정렬arr
        .sorted { $0.value > $1.value }
    //"[2, 2, 5, 5, 3, 3, 1, 4]" //키값으로 밸류만큼 어레이로 추가
        .flatMap { Array(repeating: $0.key, count: $0.value) }
    print(changeArray)
    var res = Set<Int>()
    
    for i in 0..<k {
        res.insert(changeArray[i])
        print(changeArray[i])
    }
    print(res)
    
    return res.count
}

solution(6, [1, 3, 2, 5, 4, 5, 2, 3]) //종류의 개수가 적은건 일단 뒤로 보내야 할듯.
//solution(6, [1, 3, 2, 5, 4, 5, 2, 3, 3, 2, 5, 4, 5, 2, 3, 3, 2, 5, 4, 5, 2, 3, 3, 2, 5, 4, 5, 2, 3])

/* 시간초과
 func solution(_ k:Int, _ tangerine:[Int]) -> Int {
     
     if k > tangerine.count {
         return 0
     }
     let changeArray = tangerine.reduce(into: [:]) { $0[$1, default: 0] += 1 }
     //[(key: 2, value: 2), (key: 3, value: 2), (key: 5, value: 2), (key: 4, value: 1), (key: 1, value: 1)] // 밸류순으로 정렬arr
         .sorted { $0.value > $1.value }
     //"[2, 2, 5, 5, 3, 3, 1, 4]" //키값으로 밸류만큼 어레이로 추가
         .flatMap { Array(repeating: $0.key, count: $0.value) }

     print(changeArray)
     
     var res = [Int]()
     
     for i in 1...k {
         if res.contains(changeArray[i - 1]) == false {
             res.append(changeArray[i - 1])
         }
     }

     return res.count
 }
 */
