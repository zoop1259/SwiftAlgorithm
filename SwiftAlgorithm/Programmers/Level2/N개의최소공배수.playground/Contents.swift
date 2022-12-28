import UIKit

var arr = [2,6,8,14].sorted(by: <)
var GCD = 2 //최대공약수
var LCM = 1 //최소공배수
print(arr[arr.count - 1])


while arr[arr.count - 2] != arr[arr.count - 1] {
    LCM += 1
    var a = arr[arr.count - 2]
    var b = arr[arr.count - 1]
    
    
    
    
}

 
//while Set(arr).count != 1 {
//    var i = 0
//    if arr[arr.count - 2] != arr[arr.count - 1] {
//    }
//}


/*
 최대공약수와 최소공배수의 성질을 이용하면 쉽게 구할 수 있습니다.
 GCD = 최대공약수
 LCM = 최소공배수
 두 수 (a, b)의 최송공배수는 어떻게 구하는가?
 a x b = GCD * LCM입니다.

 [유클리드 호제법]
 두 수 a, b가 있을 때 (a > b)
 a % b == 0이면 b가 GCD입니다.
 a % b != 0이면 (c = a % b라고 할 때)

 b % c를 구해서 0이 나올때까지 반복합니다.

 ex)
 10, 12의 최대공약수는??
 12 % 10 = 2 (!= 0)
 10 % 2 = 0(0이므로)
 최대 공약수는 2입니다.

 (13, 17)의 최대공약수는?
 17 % 13 = 4
 13 % 4 = 1
 4 % 1 = 0이므로
 최대공약수는 1입니다.
 */
