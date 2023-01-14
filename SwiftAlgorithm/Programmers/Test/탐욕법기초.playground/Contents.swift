import UIKit

var 거스름돈 = 1260
var 동전개수 = 0

let 동전종류 = [500, 100, 50, 10]

for 동전 in 동전종류 {
    동전개수 += 거스름돈 / 동전 //몫이 개수
    거스름돈 %= 동전         //나머지는 계산하고 남은 돈
}

print(동전개수) //500원 두개 100원 두개 50원 1개 10원 1개로 총 6개

///// 탐욕법 2번쨰 문제. N 을 1로 만들기
print("-=-==--=-==-==-=-=-=-=-=-")
let qu = [26, 5]
var N = qu[0]
var K = qu[1]
var count = 0
while N > 1 {
    if K > N {
        count += N
        break
    } else {
        count += 1
        let save = N % K
        N /= K
        N += save
    }
}
print(count)

////곱하기 더하기 문제 . 주어진 문자열을 왼쪽부터 차례대로 +과 * 중에 더 효율적인걸로.
print("-=-=-==-=-=-=-=-=-=-=-=-=-=")
let s = "02984" // (0 + 2) * 9 * 8 * 4 = 576 이렇게 되어야한다.
let a = s.map { Int(String($0)) ?? 0 }
var counts = a[0]

for i in 1..<a.count {
    let sum = counts + a[i]
    let mul = counts * a[i]
    counts = sum > mul ? sum : mul
}
print(counts)
