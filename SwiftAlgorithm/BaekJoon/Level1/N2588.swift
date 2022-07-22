/*
 
 출력
 첫째 줄부터 넷째 줄까지 차례대로 (3), (4), (5), (6)에 들어갈 값을 출력한다.

 예제 입력 1
 472
 385
 예제 출력 1
 2360
 3776
 1416
 181720
 
 */

import Foundation

func N2588() {
    let num1 = Int(readLine()!)!
    let inputString = readLine()!
    let num2 = Int(inputString)!
    let num2Arr = Array(inputString)

    print(num1 * Int(String(num2Arr[2]))! )
    print(num1 * Int(String(num2Arr[1]))! )
    print(num1 * Int(String(num2Arr[0]))! )
    print(num1 * num2)
}
