import UIKit

var greeting = 29423
var count = 0

for i in String(greeting) {
    
    if i == "3" {
        count += 1
    } else if i == "6" {
        count += 1
    } else if i == "9" {
        count += 1
    }
    
}

//한줄
func solution(_ order:Int) -> Int {
    return String(order).filter { "369".contains($0) }.count
}
