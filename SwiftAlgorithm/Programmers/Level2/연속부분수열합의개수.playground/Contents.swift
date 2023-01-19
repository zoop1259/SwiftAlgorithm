import Foundation

func solution(_ elements:[Int]) -> Int {
    var result = [Int]()
    for i in 1...elements.count {
        for j in 0..<elements.count {
            if i+j <= elements.count {
                result.append(elements[j..<i+j].reduce(0, +))
            }
        }
    }
    result = Array(Set(result)).sorted()
    return result.count
}

solution([7,9,1,1,4])
