import UIKit

var greeting = "aAb1B2cC34oOp"
var numStr = ""

for i in greeting {
    
    if i.isNumber == true {
        numStr.append(i)
    } else {
        numStr.append(" ")
    }
}

//var numArr = numStr.split(separator: " ")
var numArr = numStr.components(separatedBy: " ")
print(numArr)

let intArr = numArr.compactMap { Int($0) }
print(intArr)

let res = intArr.reduce(0, +)

//제출한 답
import Foundation

func solution(_ my_string:String) -> Int {
    var numStr = ""

for i in my_string {
    if i.isNumber == true {
        numStr.append(i)
    } else {
        numStr.append(" ")
    }
}

var numArr = numStr.components(separatedBy: " ")
let intArr = numArr.compactMap { Int($0) }
    
    return intArr.reduce(0, +)
}

