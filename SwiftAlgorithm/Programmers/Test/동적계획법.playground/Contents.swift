import UIKit

//Dynamic Programming DP라고도 함.
//상향식 접근법으로, 가장 작은 부분의 해답을 구한 후, 이를 저장하여, 저장한 값을 이용해 상위 문제를 풀어가는 방식
//동적 계획의 핵심은 Memoization(메모이제이션)이라는 기법
//동일한 계산을 반복해야할 때, 이전에 계산한 값을 메모리에 저장하여 반복 수행을 제거하여 프로그램 실행 속도를 빠르게 한다는 말

//재귀함수를 이용해서 구하던 피보나치를 DP를 이용해서 구하면 조금더 빠른 계산이 가능하다.
//앞뒤의 값을 저장하면서 진행하기 떄문에 매우 빨라짐.
func fibo(_ n: Int) -> Int{
    var cache: [Int] = [0, 1] //이렇게 초기조건은 정해줘야한다.
    
    for num in 2...n {
        cache.append(cache[num - 1] + cache[num - 2])
        print(cache)
    }
    return cache[n]
}

fibo(10)

//정석 피보나치 구하기;;
func fibo2(_ n: Int) -> Int {
    if n <= 1 { return n }
    return fibo2(n - 1) + fibo2(n - 2)
}
