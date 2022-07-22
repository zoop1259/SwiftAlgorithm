import Foundation

func 자연수뒤집어배열로만들기(_ n:Int64) -> [Int] {
    //다시한번 말하지만 정렬이 아니다.. 말그대로 뒤집기...
    return String(n).map {String($0)}.reversed().map{Int($0)!}
}
