import UIKit

//순열은 순서도 고려한 것. 모든 경우를 계산한다.

let rawData = "0123"
let data = rawData.map { String($0) }
var visit = [Bool](repeating: false, count: data.count)
print(visit)

dfs(data: data, curInd: 0, curCnt: 0, targetCnt: 2, answer: "")

func dfs(data: [String], curInd: Int, curCnt: Int, targetCnt: Int, answer: String) {
    if curCnt == targetCnt {
        print(answer)
        return
    }

    for i in 0..<data.count {
        if !visit[i] {
            visit[i] = true
            dfs(data: data, curInd: i, curCnt: curCnt + 1, targetCnt: targetCnt, answer: answer + data[i])
            visit[i] = false
        }
    }
}
