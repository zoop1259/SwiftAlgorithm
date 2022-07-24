/*
 
 입력
 첫째 줄에 두 정수 H와 M이 주어진다. (0 ≤ H ≤ 23, 0 ≤ M ≤ 59) 그리고 이것은 현재 상근이가 설정한 놓은 알람 시간 H시 M분을 의미한다.

 입력 시간은 24시간 표현을 사용한다. 24시간 표현에서 하루의 시작은 0:0(자정)이고, 끝은 23:59(다음날 자정 1분 전)이다. 시간을 나타낼 때, 불필요한 0은 사용하지 않는다.
 
 45분 일찍 설정
 
 */
import Foundation

func N2884() {
    
    let a = readLine()!.split(separator:" ").map {Int(String($0))!}
    let b = a[0]
    let c = a[1]

    var bb = b //시
    var cc = c //분

    cc -= 45

    if cc < 0 {
        cc = 60 - (-cc)
        bb -= 1
    }
    if bb < 0 {
        bb = 24 - (-bb)
    }
    print("\(bb) \(cc)")
    
}
