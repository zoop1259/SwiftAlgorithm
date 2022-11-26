import Foundation

func solution(_ n:Int) -> Int {
var answer = 1

for i in 1...n {
    while(answer % 3 == 0 || answer % 10 == 3 || answer / 10 == 3 || answer / 10 == 13){
        answer += 1
    }
    answer += 1
}

    return answer - 1
}

//다른사람풀이.

func solution2(_ n:Int) -> Int {
    var answer = 0

    for i in 1...n {
        answer += 1

        while answer % 3 == 0 || String(answer).contains("3") {
            answer += 1
        }
    }

    return answer
}
