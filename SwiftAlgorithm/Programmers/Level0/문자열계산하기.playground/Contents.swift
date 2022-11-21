import UIKit

let my_string = "3 + 4  - 43"
//let strArr = my_string.split(separator: " ")
let strArr = my_string.components(separatedBy: " ")
//print(strArr)
var res = Int(strArr[0])!
//print(res)

for i in 0...strArr.count - 1 {
    if strArr[i] == "+" {
        res += Int(strArr[i + 1])!
    } else if strArr[i] == "-" {
        res -= Int(strArr[i + 1])!
    }
}
//print(res)

//흠.. 리턴코딩
let a = my_string.replacingOccurrences(of: "- ", with: "-")
    .replacingOccurrences(of: "+", with: "")
    .trimmingCharacters(in: .whitespacesAndNewlines)
    .split(separator: " ")
    .map { Int($0)! }
    .reduce(0, +)
print(a)
print(my_string.replacingOccurrences(of: "- ", with: "-")
    .replacingOccurrences(of: "+", with: ""))


//제출한 답
import Foundation

func solution(_ my_string:String) -> Int {
    let strArr = my_string.components(separatedBy: " ")
    var res = Int(strArr[0])!

    for i in 0...strArr.count - 1 {
    
        if strArr[i] == "+" {
           res += Int(strArr[i + 1])!
        } else if strArr[i] == "-" {
           res -= Int(strArr[i + 1])!
        }
    }
    return res
}
