import UIKit

//print(10 % 6)

let n = 11 //6 12 18 24 30 36 42
var piece = 6
//시켜야하는 개수
var pizza = 0
var a = 0

if n % 6 == 0 {
    print( n / 6 )
} else if n >= 6 {
    a += n % 6 //만약 n이 10이면 4가 남겠지.
    a += n / 6
    print(a)
} else if n <= 5 {
    a = 6 - n
    print(a)
}


//let a = n * piece /
//var a = 0
//var maxA = max(n, 6)
//var minA = min(n, 6)
//while minA != 0 {
//    a = maxA
//    maxA = minA //최대공약수. 최소 2번곱해야 같은배수가 나온다.
//    minA = a % maxA
//}
//
//var b = n * 6 / maxA //최소공배수 곱해서 나오는 가장 낮은 값.
//print()
//

func solution1(_ n:Int, _ m:Int) -> [Int] {
    var max = 0 // 최대공약수
    var a = 0 // 입력받은 수 중에 더 큰 수
    
    // 더 큰 수를 변수 a에 넣음
    if n > m {
        a = n
    }
    else {
        a = m
    }
    
    // 최대공약수 구하는 반복문
    // 더 큰 수 a가 0이 될 때까지 1씩 -하며 n, m을 a로 나눠보다가 두 수 모두 나눠떨어질 때 종료
    while a > 0 {
        if (n%a == 0 && m%a == 0) {
            max = a
            break
        }
        else {
            a -= 1
        }
    }
    
    // 반복문을 통해 구한 최대공약수, 그리고 최대공약수를 이용한 최소공배수 구하는 공식을 사용하여 배열 리턴
    return [max, n*m/max]
}

solution1(6, 7)

func solution2(_ n:Int) -> Int {

    var max = 0 // 최대공약수
    var a = 0 // 입력받은 수 중에 더 큰 수
    
    // 더 큰 수를 변수 a에 넣음
    if n > 6 {
        a = n
    }
    else {
        a = 6
    }
    
    // 최대공약수 구하는 반복문
    // 더 큰 수 a가 0이 될 때까지 1씩 -하며 n, m을 a로 나눠보다가 두 수 모두 나눠떨어질 때 종료
    while a > 0 {
        if (n%a == 0 && 6%a == 0) {
            max = a
            break
        }
        else {
            a -= 1
        }
    }
    
    var ret = 0
    // 반복문을 통해 구한 최대공약수, 그리고 최대공약수를 이용한 최소공배수 구하는 공식을 사용하여 배열 리턴
    if n*6/max >= 6 {
        ret = n*6/max / 6
    } else {
        ret = n*6/max
    }
    
    return ret
}

//명답들...
func solution3(_ n:Int) -> Int {
    var answer = 1 //최소 피자는 1
    while (answer * 6) % n != 0 {
        answer += 1
    }

    return answer
}

func solution4(_ n:Int) -> Int {
    for i in 1...n where (6 * i % n) == 0 {
        return i
    }
    return 0
}
