import Foundation

func solution(_ polynomial:String) -> String {
    var x = polynomial.components(separatedBy: " ").filter { $0.contains("x")}
var num = polynomial.components(separatedBy: " ").filter {$0.contains("x") == false }.filter{$0.contains("+") == false }.map { Int($0) ?? 0 }

var xStr = [String]()
for i in 0..<x.count {
    if x[i].count == 1 {
        xStr.append("1")
    } else {
        x[i] = x[i].replacingOccurrences(of: "x", with: "")
        xStr.append(x[i])
    }
}
let xInt = xStr.map { Int($0) ?? 0 }.reduce(0, +)
    var str = ""
    if xInt == 0 {
        str = ""
} else if xInt == 1 {
    str += "x"
} else {
    str += "\(xInt)x"
}
let numInt = num.reduce(0, +)
    
    if xInt == 0 {
    return "\(numInt)"
} else if numInt == 0 {
    return str
} else {
    return "\(str) + \(numInt)"
}
    
    return "0"
}
