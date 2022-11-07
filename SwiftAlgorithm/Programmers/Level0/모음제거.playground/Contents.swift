import UIKit

var greeting = "nice to meet you"

let a = greeting.replacingOccurrences(of: "a", with: "")
let b = a.replacingOccurrences(of: "e", with: "")
let c = b.replacingOccurrences(of: "i", with: "")
let d = c.replacingOccurrences(of: "o", with: "")
let e = d.replacingOccurrences(of: "u", with: "")

print(e)

func solution(_ my_string:String) -> String {
    return my_string.components(separatedBy: ["a", "e", "i", "o", "u"]).joined()
}

func solution2(_ my_string:String) -> String {
    return my_string.replacingOccurrences(of: "[aeiou]", with: "", options: .regularExpression)
}

func solution3(_ my_string:String) -> String {
    return my_string.filter { !["a", "e", "i", "o", "u"].contains($0)}
}
