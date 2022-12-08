import UIKit

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var answer: Int = 0

    for num in 1...number {
        let powerOfNum: Int = getPower(of: num)
        
        if powerOfNum > limit {
            answer += power
        } else {
            answer += powerOfNum
        }
    }
    
    return answer
}

// 테스트 11-16, 18, 24, 25 시간 초과.
// getPower(of:) 메소드의 알고리즘을 간략화 하니 시간 초과된 테스트가 모두 실패가 되었다.(시간 초과는 아니라는 뜻.)
// -> 약수 구하는 알고리즘의 시간 복잡도의 문제라고 판단.

func getPower(of num: Int) -> Int {
    var power: Int = 0
    
    if num == 1 {
        power = 1
    } else if num == 2 {
        power = 2
    } else if num == 3 {
        power = 2
    } else {
        for i in 1...Int(sqrt(Double(num))) {
            if num % i == 0 {
                if (i * i) == num {
                    power += 1
                } else {
                    power += 2
                }
            }
        }
    }
    
    return power
}

print(solution(10, 3, 2))


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
