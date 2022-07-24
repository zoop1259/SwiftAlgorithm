/*
 
 문제
 시험 점수를 입력받아 90 ~ 100점은 A, 80 ~ 89점은 B, 70 ~ 79점은 C, 60 ~ 69점은 D, 나머지 점수는 F를 출력하는 프로그램을 작성하시오.
 
 */
import Foundation

func N9498() {
    
    let a = readLine()!.split(separator:" ").map {Int(String($0))!}

    let b = Int(a[0])

    if b >= 90 {
      print("A")
    } else if b >= 80 {
      print("B")
    } else if b >= 70 {
      print("C")
    } else if b >= 60 {
      print("D")
    } else {
      print("F")
    }

    
}
