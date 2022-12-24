import UIKit

//abaabc 이런 구조라면 a-1개, b-1개, (중지), a-2개, bc-2개 (중지)

func solution(_ s:String) -> Int {
    var pre = 0
    var nex = 0
    var count = 0
    var start = ""
    
    for i in s {
        
        if start == "" {
            start = String(i)
        }
        
        if String(i) == start {
            pre += 1
        } else {
            nex += 1
        }
        
        if pre == nex {
            count += 1
            pre = 0
            nex = 0
            start = ""
        }
    }
    
    if start.count != 0 {
        count += 1
    }
    
    return count
}

solution("banana")
