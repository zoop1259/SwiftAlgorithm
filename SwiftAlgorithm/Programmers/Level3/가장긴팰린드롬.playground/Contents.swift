import UIKit

/*
 효율성 관련
 1. 만약 10개 중에 eqa값이 5이상에서 실패하면 그즉시 break.
 2. 즉, 남은 count수보다 eqa값이 높은 상태에서 일치하지 않으면 그냥 break.
 
 알고리즘 관련
 1. 우선 같다면 양쪽의 index값을 알아내야겠지.
 2. 그리고 서로 index값을 늘려가면서 같으면 eqa를 늘려간다.
 3. 같지 않으면 현재 max값과 eqa를 비교해서 eqa가 높으면 max는 eqa다.
 4. 마지막까지 같다면 그냥 eqa를 리턴하면 될 것.
 
 
 */


func solution(_ s:String) -> Int {
    //만약 길이가 1보다 작다면..
    if s.count <= 1 {
        return s.count
    }
    
    let arr = s.map { String($0) }
    let count = arr.count
    
    for len in (1...count).reversed() {
        for left in (0...count - len) {
            let end = left + len - 1
            var ok = true
                        
            //반으로
            for i in 0..<len / 2 {
                if arr[left + i] != arr[end - i] { // 팰린드롬 아님
                    ok = false
                    break
                }
            }
            if ok { // 팰린드롬이라면
                return len
            }
        }
    }
    return 1
}

//solution("abcdcba")
//solution("abacde")
solution("a")

/*
 문제 예시처럼 중간값으로 서로를 비교해가면서 해야할지...
 2중 루프로 돌려야할지...
 
 
 
 그냥 단순히 reverse해서 같은값만 구했...
 func solution(_ s:String) -> Int {
     let ss = s.map { String($0) }
     let rss = Array(ss.reversed())
     print(ss, rss)
     var max = 0
     var eqa = 0
     for i in 0..<ss.count {
         if ss[i] == rss[i] {
             eqa += 1
         } else {
             if eqa > max {
                 max = eqa
                 eqa = 0
             } else {
                 eqa = 0
             }
         }
     }
     return max > eqa ? max : eqa
 }
 
 
 이것도 로직이 아니야
 for (idx, val) in ss.enumerated() {
     
     if i > rss.count - 1 {
         break
     } else {
         if val == rss[i] {
             eqa += 1
             i += 1
         } else {
             i += 1
             if eqa > max {
                 max = eqa
                 eqa = 0
             } else {
                 eqa = 0
             }
         }
     }
 }
 
 이렇게하니 값이 같으면 그냥 증가해버려서 안됨.
 func solution(_ s:String) -> Int {
     let ss = s.map { String($0) }
     let rss = Array(ss.reversed())
     print(ss, rss)
     var max = 0
     var eqa = 0
     var i = 0
     var j = 0
     
     while j <= rss.count - 1 {
         j += 1
         if ss[i] == rss[j] {
             i += 1
             j += 1
             eqa += 1
         } else {
             j += 1
             if eqa >= (ss.count - 1) / 2  { //효율성.
                 return eqa
             } else {
                 if eqa > max {
                     max = eqa
                     eqa = 0
                 } else {
                     eqa = 0
                 }
             }
         }
     }
     return max > eqa ? max : eqa
 }
 
 
 */
