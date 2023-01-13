import UIKit

func solution(_ str1:String, _ str2:String) -> Int {
    
    let a = str1.lowercased().map { String($0) }.map { Character($0) }
    var aa = [String]()
    for i in 0..<a.count - 1 {
        if a[i].isLetter, a[i + 1].isLetter {
            let str = String(a[i]) + String(a[i+1])
            aa.append(str)
        }
    }
    print(aa)
    
    let b = str2.lowercased().map { String($0) }.map { Character($0) }
    var bb = [String]()
    for i in 0..<b.count - 1 {
        if b[i].isLetter, b[i+1].isLetter {
            let str = String(b[i]) + String(b[i+1])
            bb.append(str)
        }
    }
    print(bb)
    
    var count = aa.count + bb.count
    var inter = 0
//    for i in aa.indices { //이렇게하면 2배로 돌려버리기 때문에
//        if bb.contains(aa[i]) {
//            inter += 1
//        }
//    } 
    
    for i in aa.indices{
        for j in bb.indices{
            if aa[i] == bb[j]{
                inter += 1
                bb.remove(at: j) //겹치면 삭제해줘야 계산이 맞는다.
                break
            }
        }
    }
    
    count -= inter //중복제거를 하는게 이렇게 해줘야한다니...
    
    if count == 0 {
        return 65536
    } else if inter == 0 {
        return 0
    }
    return Int(Double(inter) / Double(count) * 65536.0)
}

solution("FRANCE", "french")
//solution("handshake", "shake hands")
//solution("aa1+aa2", "AAAA12")
//solution("E=M*C^2", "e=m*c^2")
