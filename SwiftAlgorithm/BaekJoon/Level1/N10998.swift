/*
 
 출력
 첫째 줄에 A×B를 출력한다.
 
 */
import Foundation

func N10998() {
    
    let question = readLine()!.split(separator: " ").map { Int(String($0))! }
    let a = question[0]
    let b = question[1]
    
    print(a*b)
    
}
