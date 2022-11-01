import Foundation

func solution(_ babbling:[String]) -> Int {
    //제한사항1 체크
    guard babbling.count <= 100 else { return 0}
    var count = 0
    
    //배열 루프
    for var i in babbling {
        //제한사항2 체크
        guard i.count <= 15 else { return 0 }
        
        //배열 순회하면서 있는지 검사 후 -로 교체
        i = i.replacingOccurrences(of: "aya", with: "-")
        i = i.replacingOccurrences(of: "ye", with: "-")
        i = i.replacingOccurrences(of: "woo", with: "-")
        i = i.replacingOccurrences(of: "ma", with: "-")
        //-는 빈값으로 교체
        i = i.replacingOccurrences(of: "-", with: "")
        //-교체후에 값이 비었다면 count값 증가.
        if i.isEmpty {
            count += 1
        }
    }
    
    return count
}


