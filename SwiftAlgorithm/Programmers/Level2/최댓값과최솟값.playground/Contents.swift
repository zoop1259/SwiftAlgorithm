import UIKit

func solution(_ s:String) -> String {
    var arr = [Int]()
    for i in s {
        if i.isNumber == true {
            arr.append(Int(String(i)) ?? 0)
        }
    }
    return "\(arr.min() ?? 0) \(arr.max() ?? 0)"
}

solution("1 2 3 4")
