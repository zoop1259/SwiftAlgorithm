import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
var arr = [Int]() //명예의전당용
var res = [Int]() //리턴용

for i in 0..<score.count {
    arr.sort()
    if arr.count >= k {
        if score[i] >= arr.min() ?? 0 {
            arr.removeFirst()
            arr.append(score[i])
            res.append(arr.min() ?? 0)
        } else {
            res.append(arr.min() ?? 0)
        }
    } else {
        arr.append(score[i])
        res.append(arr.min() ?? 0)
    }
}
    return res
}
