/*
 
 출력
 불기 연도를 서기 연도로 변환한 결과를 출력한다.
 
 예제 입력 1
 2541
 예제 출력 1
 1998
 
 */

import Foundation

func N18108() {
    let years = readLine()!.split(separator:" ").map { Int(String($0))! }
    let answer = years[0]

    print(answer-543)
}
