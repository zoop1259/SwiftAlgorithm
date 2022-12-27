import UIKit

let a = "aaa"

if Set(a).count == 1 {
    print("죄다같음.")
}




func solution(_ s:String) -> Int {
    var arr = Set(s).sorted(by: <).map{ String($0) }
    print(arr)
    var counting = 1
    
    var dic = [String : [Int]]()
    for i in 0..<arr.count {
        dic[arr[i]] = [0, 0] //list를 통해 key값으로 사전생성
    }
    
    var ss = s.map { String($0) }
    for i in 0..<ss.count {
        dic[ss[i]]? = [ss.firstIndex(of: ss[i])!, ss.lastIndex(of: ss[i])!]
    }
    print(dic)
    print(dic["a"]?[1])
    
    while counting <= ss.count {
        for i in counting..<ss.count {
            //현재 인덱스가 전 인덱스의
        }
        counting += 1
    }
    
    return -1
}

solution("asdfa")
