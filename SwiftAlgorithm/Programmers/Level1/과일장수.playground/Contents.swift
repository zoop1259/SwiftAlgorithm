import UIKit

//k 과일 최대 품질
//m 상자당 과일 수
//score 각 과일 점수

var res = 0

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    //k보다 높은건 잘라보자.. 왜 k가 주어졌는지 모르겠지만... 그리고 정렬하자.
    let sortScore = score.filter{$0 <= k }.sorted(by: >)
    print(sortScore)
    
    var arr = [Int]()
    var price = 0
    var count = sortScore.count
    
    for i in stride(from: 0, to: sortScore.count, by: m) {
        arr = []
        if count >= m {
            for j in i..<i+m {
                arr.append(sortScore[j])
            }
            print(arr)
            price += (arr.min() ?? 0) * m
        }
        count -= m
        print(price)
        
    }
    
    return price
}

solution(3, 4, [1, 2, 3, 1, 2, 3, 1]    )

//괜찮은답..
func solution2(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0, sorted = score.sorted(by: >)

    for K in stride(from: m - 1, to: sorted.count, by: m) {
        if sorted[K] <= k {
            result += sorted[K] * m
        }
    }

    return result
}


//리턴코딩
func solution3(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let s = score.sorted(by: >)
    return stride(from: m-1, to: score.count, by: m)
        .reduce(0) { $0 + s[$1] * m }
}
