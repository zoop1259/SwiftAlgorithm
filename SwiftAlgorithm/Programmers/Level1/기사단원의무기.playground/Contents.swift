import UIKit

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var arr = [Int]()
    var pow = 0
    
    for i in 1...number {
        if i == 1 {
            pow = 1
        } else if i == 2 {
            pow = 2
        } else if i == 3 {
            pow = 2 //3까지는 기본적으로 약수가 2개니까.
        } else {
            pow = 0
            for j in 1...Int(sqrt(Double(i))) {
                if i % j == 0 {
                    if j * j == i {
                        pow += 1
                    } else {
                        pow += 2
                    }
                }
            }
        }
        if pow > limit {
            arr.append(power)
        } else {
            arr.append(pow)
        }
    }
    print(arr)
    return arr.reduce(0, +)
}

print(solution(10, 3, 2))

//맘에드는 답.
import Foundation

func solution2(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var attack = [Int](repeating: 0, count: number+1)

    for i in 1...number {
        var c = i

        while c <= number {
            attack[c] += 1
            c += i
        }
    }
    attack = attack.map { $0 > limit ? power : $0 }
    return attack.reduce(0, +)
}


//삽질들
// 테스트 11-16, 18, 24, 25 시간 초과.
//시간초과 이것 나름 1/2로 줄긴했지만 여전히..
//func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
//    var num = [Int]()
//    for i in 2...number {
//        var divisor = 0
//
//        for j in 1...i / 2 {
//
//            if i % j == 0 {
//                divisor += 1
//            }
//
//        }
////        if divisor > limit {
////            num.append(power)
////        } else {
//            num.append(divisor + 1)
////        }
//    }
//    print(num)
//
//    for i in 0..<num.count {
//        if num[i] > limit {
//            num[i] = power
//        }
//    }
//    print(num)
//    return num.reduce(0, +) + 1
//}
//solution(10, 3, 2)

//func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
//    var answer = 0
//    func count_nums(_ a:Int) -> Int {
//        var cnt = 0
//        for i in 1...Int(a/2)+1 {
//            if a % i == 0 {
//                cnt += 1
//                if i * 2 != a {
//                    cnt += 1
//                }
//            }
//            if cnt > limit {
//                return power
//            }
//        }
//        return cnt
//    }
//
//    for i in 1...number {
//        var k = count_nums(i)
//        print(k)
//        if k > limit {
//            answer += power
//        } else {
//            answer += k
//        }
//    }
//
////    def count_nums(a):
////        cnt = 0
////        for i in range(1, int(a**(1/2))+1):
////            if a%i == 0:
////                cnt += 1
////                if ((i**2) != a) :
////                    cnt +=1
////            if cnt > limit:
////                return power
////        return cnt
////    for i in range(1, number+1):
////        k = count_nums(i)
////        if k > limit:
////            k = power
////        answer += k
//
//
//    return answer
//}
//
//solution(5, 3, 2)

//let a = 5
//let limit = 3
//let power = 2
//
//var count = 0
//var kg = 0
//완전 오래걸림
//var arr = [Int]()
//for i in 1...a {
//    for j in 1...i {
//        if a % j == 0 {
//            arr.append(j)
//        }
//    }
//
//}
//print(arr)

//var arr2 = [Int]()
//for j in 1...Int(sqrt(Double(a))) {
//    count = 0
//    for i in 1...j {
//        if a % i == 0 {
//            arr2.append(i)
//            count += 1
//            if i != a / i {
//                arr2.append(a/i)
//                count += 1
//            }
//        }
//        if count > limit {
//            kg += power
//        } else {
//            kg += count
//        }
//    }
//}
//print(kg)
//print(arr2)

//시간초과
//func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
//    var count = 0
//    var kg = 0
//
//    for i in 1...number {
//        count = 0
//        for j in 1...i {
//
//            if i % j == 0 {
//                count += 1
//                if count > limit {
//                    break
//                }
//            }
//        }
//        if count > limit {
//            kg += power
//        } else {
//            kg += count
//        }
//    }
//    return kg
//}



//let a = 4
//
//for i in 1...4 {
//    for j in 1...i {
//        if i % j == 0 {
//            print(j)
//        }
//    }
//}
