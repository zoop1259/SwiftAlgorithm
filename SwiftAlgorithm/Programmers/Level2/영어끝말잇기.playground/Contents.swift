import UIKit


func solution(_ n:Int, _ words:[String]) -> [Int] {
    var arr = [String]()
    arr.append(words[0])
    print(arr)
    
    for str in 1..<words.count {
        print(words[str - 1].suffix(1))
        print(words[str].prefix(1))
        
        if words[str - 1].suffix(1) == words[str].prefix(1) {
            print("같음")
            if arr.contains(words[str]) == false {
                arr.append(words[str])
            } else {
                print("중복단어")
                print(str / n + 1)
                print(str % n + 1)
                return [str % n + 1, str / n + 1]
            }
        } else {
            print("끝말잇기가 안됨")
            print(str / n + 1)
            print(str / n + 1)
            return [str % n + 1, str / n + 1]
        }
        
    }
    print("탈락자 없음")
    return [0,0]
}

//solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"])
//solution(5, ["hello", "observe", "effect", "take", "either", "recognize", "encourage", "ensure", "establish", "hang", "gather", "refer", "reference", "estimate", "executive"])
solution(2, ["hello", "one", "even", "never", "now", "world", "draw"]    )
