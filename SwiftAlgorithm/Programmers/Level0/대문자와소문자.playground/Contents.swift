import UIKit

var greeting = "Hello, playground"
var cased = ""

for i in greeting {
    
    if String(i) == i.lowercased() {
        cased += String(i).uppercased()
    } else {
        cased += String(i).lowercased()
    }
    
}
print(cased)


func solution(_ my_string:String) -> String {
    return my_string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }.joined()
}

func solution2(_ my_string:String) -> String {
    return my_string.map { $0.isLowercase ? $0.uppercased() : $0.lowercased() }.reduce("", +)
}
