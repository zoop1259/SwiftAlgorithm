import Foundation

func solution(_ array:[Int]) -> Int {
    var count: [Int: Int] = [:]
    
    if array.count == 1 {
        return array[0]
    }
    
    for item in array {
        count[item] = (count[item] ?? 0) + 1
    }
    
    let dic = count.sorted {$0.1 > $1.1}
    if dic.count >= 2{
        if dic[0].value == dic[1].value {
            return -1
        }
    }
    return dic[0].key
}

//다른사람 풀이
func solution2(_ array: [Int]) -> Int {
    let sorted = Dictionary(grouping: array) { $0 }.sorted { $0.value.count > $1.value.count }
    return sorted.count > 1 && sorted[0].value.count == sorted[1].value.count ? -1 : sorted[0].key
}
