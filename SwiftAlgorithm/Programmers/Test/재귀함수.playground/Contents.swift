import UIKit

/*
 그래 재귀함수는 자기자신을 다시 호출하는거.
 다른 자료구조를 공부하면서 어떻게 돌아가는지 디테일하게 알아보고 싶었다.
 
 */

func factorialWithLog(of number: Int) -> Int {
    if number == 0 {
        print("Returning 1 for 0!")
        return 1
    } else {
        let result = number * factorialWithLog(of: number - 1)
        print("Returning \(result) for \(number)!")
        return result
    }
}

factorialWithLog(of: 4)
/*
 마지막에 number가 0일 경우 factorialWithLog(of: 0)은 1을 반환하고 이는 다시 그 전의 결과에 곱해진다.
 그러므로 4 * factorialWithLog(of: 3) * factorialWithLog(of: 2) * factorialWithLog(of: 1)는 4 * (3 * (2 * (1))) 이 되어 24가 되는것.
 */
