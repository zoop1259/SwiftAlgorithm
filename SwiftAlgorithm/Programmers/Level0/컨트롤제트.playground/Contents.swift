import UIKit

//let s = "1 2 Z 3"
//let s = "10 20 30 40"
//let s = "10 Z 20 Z 1"
let s = "10 10 Z Z 1"


//var a = s.split(separator: " ") //[String.SubSequence]
var a = s.components(separatedBy: " ") //[String]
print(a)

var arr = [String]()

for i in 0..<a.count {
    if a[i] == "Z" {
        if arr.isEmpty == false {
            arr.removeLast()
        }
    } else {
        arr.append(a[i])
    }
}

print(arr)
