import Foundation

func solution(_ answers:[Int]) -> [Int] {

    //문제에서 요구한 반복용 배열
    var a = [1, 2, 3, 4, 5]
    var b = [2, 1, 2, 3, 2, 4, 2, 5]
    var c = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

    //수포자들의 점수
    var aa = 0
    var bb = 0
    var cc = 0

    //수포자들의 점수를 위한 반복문
    for i in 0..<answers.count {
        if i >= a.count {
            if a[i % 5] == answers[i] {
                aa += 1
            }
        } else {
            if a[i] == answers[i] {
                aa += 1
            }
        }

        if i >= b.count {
            if b[i % 8] == answers[i] {
                bb += 1
            }
        } else {
            if b[i] == answers[i] {
                bb += 1
            }
        }

        if i >= c.count {
            if c[i % 10] == answers[i] {
                cc += 1
            }
        } else {
            if c[i] == answers[i] {
                cc += 1
            }
        }
    }

    //최고점수 알아보기.
    let high = max(aa, bb, cc)
    //반복을 위해 수포자들의 점수를 배열에 담음.
    let arr = [aa,bb,cc]
    //리턴하기 위한 배열.
    var res = [Int]()

    //high랑 같다면 append하여 출력.
    for i in 0..<arr.count {
        if arr[i] == high {
            res.append(i + 1)
        }
    }
    return res
}

//딕셔너리를 사용한 답
import Foundation

func solution2(_ answers:[Int]) -> [Int] {
    let answer = (
        a: [1, 2, 3, 4, 5], // index % 5
        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
    )
    var point = [1:0, 2:0, 3:0]

    for (i, v) in answers.enumerated() {
        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
    }

    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
}
