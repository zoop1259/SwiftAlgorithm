import UIKit

func solution(_ t:String, _ p:String) -> Int {
    var res = [Int]()
    let arr = t.map { String($0) }
    for i in 0...arr.count - p.count {
        //print(arr[i])
        var str = ""
        for j in 0..<p.count {
            str += arr[j + i]
        }
        res.append(Int(str) ?? 0)
        print(str)
        print(res)
    }
    let asd = res.filter { $0 <= Int(p) ?? 0 }
    print(asd)
    return res.filter { $0 <= Int(p) ?? 0 }.count
}
solution("3141592", "271") // 2가 나와야함.
