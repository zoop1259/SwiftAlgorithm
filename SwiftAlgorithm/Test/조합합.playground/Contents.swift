import UIKit

//조합은 순서를 고려하지 않음. 예를들어 [1,2]면 [1,2,12] 이렇게 됨.
let rawData = "0123"
let data = rawData.map { String($0) }
var visit = [Bool](repeating: false, count: data.count)

dfs_comb(data: data, curInd: 0, curCnt: 0, targetCnt: 2, answer: "")

func dfs_comb(data: [String], curInd: Int, curCnt: Int, targetCnt: Int, answer: String) {
    if curCnt == targetCnt {
        print(answer)
    }

    for i in curInd..<data.count {
        if !visit[i] {
            visit[i] = true
            dfs_comb(data: data, curInd: i, curCnt: curCnt + 1, targetCnt: targetCnt, answer: answer + data[i])
            visit[i] = false
        }
    }
}


func combi(arr: [Int]) -> Int {
    
    var sosu = [[Int]]()
    var count = 0
    
    func dfs(start: Int, combination: [Int]) {
        sosu.append(combination)
        for i in start..<arr.count {
            dfs(start: i + 1, combination: combination + [arr[i]])
        }
    }
    
    dfs(start: 0, combination: [])
    
    print(sosu)
    
    for i in sosu {
        if i.reduce(0, +) <= 3 {
            count += 1
        } else if i.reduce(0, +) % 2 != 0 {
            count += 1
        }
    }
    
    return count
    
}
combi(arr: [1,2,3])


func combinationsDFS<T>(_ arr: [T]) -> [[T]] {
    var result: [[T]] = []
    let n = arr.count
    
    func dfs(start: Int, combination: [T]) {
        result.append(combination)
        for i in start..<n {
            dfs(start: i + 1, combination: combination + [arr[i]])
        }
    }
    
    dfs(start: 0, combination: [])
    return result
}

let a = [1, 2, 3]
let result = combinationsDFS(a)
print("Combinations of \(a): \(result)")

/*
 위 코드에서 combinationsDFS 함수는 입력으로 주어진 배열 arr의 모든 조합을 찾아 2차원 배열로 반환합니다.

 함수 내부에서는 결과를 저장할 result 배열과 배열의 크기를 저장할 n 변수를 초기화합니다. 그리고 dfs 함수를 정의합니다.

 dfs 함수는 시작 인덱스 start와 현재까지 선택된 원소의 조합 combination을 인자로 받으며, 재귀적으로 모든 조합을 찾아 result 배열에 추가합니다.

 dfs 함수 내부에서는 combination을 result 배열에 추가한 후, 시작 인덱스부터 끝까지 반복하면서 combination 배열에 원소를 추가한 새로운 조합을 만들어 dfs 함수를 재귀적으로 호출합니다. 호출할 때는 start를 1 증가시키고, 새로운 조합을 전달합니다.

 마지막으로, combinationsDFS 함수를 호출하여 주어진 배열의 모든 조합을 계산하고, 결과를 출력합니다.

 위 코드를 실행하면 아래와 같은 결과가 출력됩니다.
 */
