/*
 
 출력
 첫째 줄에 (A+B)%C, 둘째 줄에 ((A%C) + (B%C))%C, 셋째 줄에 (A×B)%C, 넷째 줄에 ((A%C) × (B%C))%C를 출력한다.
 
 */
import Foundation

func N10430() {
    
    let question = readLine()!.split(separator:" ").map {Int(String($0))!}
    let a = question[0]
    let b = question[1]
    let c = question[2]

    print((a+b)%c)
    print(((a%c) + (b%c))%c)
    print((a*b)%c)
    print(((a%c) * (b%c))%c)
    
}
