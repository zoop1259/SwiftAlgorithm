import Foundation

func solution(_ s:String) -> [Int] {
    var ss = s
    var count = 0
    var reRoll = 0

while ss.count != 1 {
    reRoll += 1
    var sCount = ss.count
    
    ss = ss.filter { $0 != "0" }
    count += sCount - ss.count
    
    ss = String(ss.count, radix: 2)
    
    //print(s)
}

    return [reRoll, count]
}
