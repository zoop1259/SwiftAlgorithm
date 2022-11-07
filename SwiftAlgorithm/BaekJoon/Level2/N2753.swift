/*
연도가 주어졌을 때, 윤년이면 1, 아니면 0을 출력하는 프로그램을 작성하시오.

윤년은 연도가 4의 배수이면서, 100의 배수가 아닐 때 또는 400의 배수일 때이다.

예를 들어, 2012년은 4의 배수이면서 100의 배수가 아니라서 윤년이다. 1900년은 100의 배수이고 400의 배수는 아니기 때문에 윤년이 아니다. 하지만, 2000년은 400의 배수이기 때문에 윤년이다.
*/
import Foundation

func N2753() {
    
    let a = readLine()!.split(separator:" ").map {Int(String($0))!}
    let b = Int(a[0])
    var count = 0

    if b % 4 == 0 {
      if b % 400 == 0 {
        print("1")
      } else if b % 100 == 0 {
        print("0")
      } else {
        print("1")
      }
    } else {
      print("0")
    }
    
}