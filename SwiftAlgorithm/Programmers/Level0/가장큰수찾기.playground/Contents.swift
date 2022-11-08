import UIKit

func solution(_ array:[Int]) -> [Int] {
    guard array.count >= 1 else { return [0]}
    let arr = array.sorted(by: >)
    return [arr.first ?? 0, array.firstIndex(of: arr.first ?? 0) ?? 0]
}

func solution2(_ array: [Int]) -> [Int] { [array.max() ?? 0, array.firstIndex(of: array.max() ?? 0) ?? 0] }
