/*
 
 출력
 점 (x, y)의 사분면 번호(1, 2, 3, 4 중 하나)를 출력한다.
 
 */
import Foundation

func N14681() {
    
    let a = readLine()!
    let b = readLine()!

    let aa = Int(a)!
    let bb = Int(b)!

    //print(b, c)
    if aa != 0 , bb != 0 {
        if aa > 0, bb > 0 {
            print("1")
        } else if aa < 0 , bb > 0 {
            print("2")
        } else if aa > 0 , bb < 0 {
            print("4")
        } else {//if aa < 0 , bb < 0 {
            print("3")
        }
    }
    
}
