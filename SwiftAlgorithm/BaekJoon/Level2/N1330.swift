/*
 
 출력
 첫째 줄에 다음 세 가지 중 하나를 출력한다.

 A가 B보다 큰 경우에는 '>'를 출력한다.
 A가 B보다 작은 경우에는 '<'를 출력한다.
 A와 B가 같은 경우에는 '=='를 출력한다.
 
 */
import Foundation

func N1330() {
    
    let a = readLine()!.split(separator:" ").map {Int(String($0))!}
    let b = Int(a[0])
    let c = Int(a[1])

    if b - c > 0 {
      print(">")
    } else if b - c < 0 {
      print("<")
    } else if b - c == 0 {
      print("==")
    }
    
}
