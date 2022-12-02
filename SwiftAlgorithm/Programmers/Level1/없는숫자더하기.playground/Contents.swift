import Foundation

func solution(_ numbers:[Int]) -> Int {
    var arr = [Int]()
    for i in stride(from: 1, through: 9, by: 1) {
        if numbers.contains(i) == false {
            arr.append(i)
        }
    }
    return arr.reduce(0,+)
}
