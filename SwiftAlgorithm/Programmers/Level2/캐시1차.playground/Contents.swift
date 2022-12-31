import UIKit

//LRU캐시란 운영체제의 페이지 교체 알고리즘 중 하나이다. 페이지를 교체할 때
//가장 오랫동안 사용되지 않은 페이지를 교체 대상으로 삼는 기법이다.

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var arr = [String](repeating: "", count: cacheSize)
    var count = 0
    
    if cacheSize == 0 {
        return cities.count * 5
    }
    
    for i in cities {
        if arr.count < cacheSize {
            arr.append(i.lowercased())
        } else if arr.contains(i.lowercased()) {
            print(arr)
            guard let index = arr.firstIndex(of: i.lowercased()) else { return 1 }
            print(index)
            arr.remove(at: index) //인덱스를 가져와서 최근으로 보내줘야한다.
            arr.append(i.lowercased())
            count += 1
        } else if arr.contains(i.lowercased()) == false {
            arr.removeFirst()
            arr.append(i.lowercased())
            count += 5
        }
    }
    return count
}

//solution(3, ["Jeju", "Pangyo", "Seoul", "NewYork", "LA", "Jeju", "Pangyo", "Seoul", "NewYork", "LA"])
solution(3, ["Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul", "Jeju", "Pangyo", "Seoul"])
