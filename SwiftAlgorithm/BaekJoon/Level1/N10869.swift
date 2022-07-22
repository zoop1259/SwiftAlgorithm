/*
 
 출력
 첫째 줄에 A+B, 둘째 줄에 A-B, 셋째 줄에 A*B, 넷째 줄에 A/B, 다섯째 줄에 A%B를 출력한다.
 
 */
import Foundation

func N10869() {
    //첫째 줄에 A+B, 둘째 줄에 A-B, 셋째 줄에 A*B, 넷째 줄에 A/B, 다섯째 줄에 A%B를 출력한다.
    let question = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = question[0]
    let b = question[1]
    
    print(a+b)
    print(a-b)
    print(a*b)
    print(a/b)
    print(a%b)
}
