/*
 
 문제
 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
 
 */

import Foundation

func N1000() {
    let question = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = question[0]
    let b = question[1]

    print(a+b)
}
