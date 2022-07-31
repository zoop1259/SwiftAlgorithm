/*
 
 문제 설명
 정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.

 제한 사항
 n은 0 이상 3000이하인 정수입니다.
 입출력 예
 n    return
 12    28
 5    6
 입출력 예 설명
 입출력 예 #1
 12의 약수는 1, 2, 3, 4, 6, 12입니다. 이를 모두 더하면 28입니다.

 입출력 예 #2
 5의 약수는 1, 5입니다. 이를 모두 더하면 6입니다.
 
 */


import Foundation

func 약수의합(_ n:Int) -> Int {

    var arr : [Int] = []

    //문제에서 0~3000이라고 했기 때문에 입력이 0인경우 바로 0으로 리턴해준다.
    if n == 0 {
        return 0
    }
    
    for i in 0...n {
        if n % i == 0 {
            //약수를 배열에 넣고
            arr.append(i)
        }
    }
    //배열요소를 더해서 리턴.
    return arr.reduce(0, +)
}


/*
 
 한줄코딩.
 func solution(_ n:Int) -> Int {
     return n != 0 ? (1...n).filter{n % $0 == 0}.reduce(0){$0 + $1} : 0
 }
 */

/*
 이건 0의 경우를 생각하지 않았을 때 발생했던 에러.
 /*
  Swift/x86_64-apple-macos.swiftinterface:5739: Fatal error: Range requires lowerBound <= upperBound
  2022-07-31 14:41:17.110466+0900 SwiftAlgorithm[30719:5374720] Swift/x86_64-apple-macos.swiftinterface:5739: Fatal error: Range requires lowerBound <= upperBound
  */

 이건 0...n 으로 했을떄 발생하는 에러. 0은 0으로 나눌수가 없다.
 /*
  ift/x86_64-apple-macos.swiftinterface:32282: Fatal error: Division by zero in remainder operation
  2022-07-31 14:42:14.448795+0900 SwiftAlgorithm[30765:5376337] Swift/x86_64-apple-macos.swiftinterface:32282: Fatal error: Division by zero in remainder operation
  */
 
 */
