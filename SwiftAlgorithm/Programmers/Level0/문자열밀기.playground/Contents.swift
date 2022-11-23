import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var a = A.map { $0 }
    var b = B.map { $0 }

    var equal = [Int]()

    //A와 B가 같으면 0리턴
    if A == B {
        return 0
    }
    
    for i in 0..<a.count {
        
        let add = a[a.count - 1]
        a.insert(add, at: 0)
        a.remove(at: a.count - 1)
        
        if a == b {
            equal.append(1)
        } else {
            equal.append(-1)
        }
        
    }
    
    var res = equal.firstIndex(of: 1) ?? -1
    
    if res != -1 {
        res += 1
    }
    
    return res
}
