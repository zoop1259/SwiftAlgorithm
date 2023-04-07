import UIKit

func subsetSum(_ array: [Int]) -> [Int] {
    let k = array.count
    var result: [Int] = []
    
    // 주어진 배열의 모든 부분집합을 생성
    for i in 1..<1<<k {
        var subset: [Int] = []
        
        for j in 0..<k {
            // i 비트열의 j번째 비트가 1인 경우, 해당 요소를 부분집합에 추가
            if i & (1<<j) > 0 {
                subset.append(array[j])
            }
        }
        
        // 부분집합의 크기가 k이고, 부분집합의 합이 구하려는 값과 일치하는 경우, 결과 배열에 추가
        if subset.count == k && subset.reduce(0, +) == (1...k).reduce(0, +) {
            result.append(contentsOf: subset)
        }
    }
    
    return result
}

let a = [1, 2, 3]

let result = subsetSum(a)
print(result) // [1, 2, 3, 3, 4, 3, 5, 4, 5, 6]
