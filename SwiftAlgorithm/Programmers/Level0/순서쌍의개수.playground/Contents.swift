import UIKit

// 이 단순한 방법은 부동소수점에 의해 높은 숫자가 주어지면 에러가 발생한다.
//let n = 999999
//var count = 0
//
//for i in 1...n {
//    for j in 1...i {
//
//        if i * j == n {
//            count += 1
//        }
//        if j * i == n {
//            count += 1
//            if j == i {
//                count -= 1
//            }
//        }
//    }
//}
//print(count)

let n = 100
var arr = [Int]()

for i in 1...n {

    if n % i == 0 {
        arr.append(i)
    }
//    if Int(Double(i) * sqrt(Double(n))) == 0 {
//        count += 2
//    }
//    if Double(n).truncatingRemainder(dividingBy: sqrt(Double(n))) == 0 {
//        count += 1
//    }
}
// 모든 약수의 수는 순서쌍의 수와 같음
print(arr.count)

print(Int(sqrt(Double(n)) * sqrt(Double(n))))

//이건 오래걸림.
//func solution(_ n:Int) -> Int {
//    return (1...n).filter{ n % $0 == 0 }.count
//}

//이게 명답이였다. 반으로 쪼개면 속도가 훨씬 빠르지..
//func solution(_ n:Int) -> Int {
//    let root = Int(sqrt(Double(n)))
//    var answer = (1...root).filter { n % $0 == 0 }.count
//    answer *= 2
//    if root * root == n {
//        answer -= 1
//    }
//
//    return answer
//}
