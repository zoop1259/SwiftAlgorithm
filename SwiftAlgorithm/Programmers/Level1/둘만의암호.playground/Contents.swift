import UIKit

//let a = ["a", "b", "c", "d"]
//let b = ["c","e"]
//
//for i in b {
//    if a.contains(i) {
//        print(i)
//    }
//}


func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let sArr = s.map { String($0) }
    let skipArr = skip.map { String($0) }
    var res = ""
    var count = 0
    
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let alphabetArr = alphabet.map { String($0)}
    
    for i in 0..<s.count {
        guard var idx = alphabetArr.firstIndex(of: sArr[i]) else { return "" }
        count = 0
        while count <= index - 1 {
            if idx >= alphabetArr.count - 1 {
                idx = 0
            } else {
                idx += 1
            }
            if skipArr.contains(alphabetArr[idx]) {
                continue
            } else {
                count += 1
            }
        }
        res += alphabetArr[idx]
    }
    return res
}

//solution("aukks", "wbqd", 5)
solution("ybcde", "az", 1)
