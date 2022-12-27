import UIKit

func solution(_ s:String) -> Int{
    var ss = s.map{ String($0) }
    var arr = [String]()
    //arr.append(ss[0])
    
    for i in 0..<ss.count {
        if arr.last == ss[i] {
            arr.removeLast()
        } else {
            arr.append(ss[i])
        }
    }
    return arr.isEmpty ? 1 : 0
}

solution("baabaa")
