import UIKit

let n = 45

//var a = Int(String(n, radix: 3)) ?? 0
//print(a)
//var b = Int(String(a), radix: <#T##Int#>)

var a = String(n, radix: 3)
var b = String(a.reversed())
print(b)

var c = Int(String(b), radix: 3) ?? 0
print(c)

var aa = String(String(n, radix: 3).reversed())
print(aa)

var aaa = Int(String(aa), radix: 3) ?? 0

//제출한 답
import Foundation

func solution(_ n:Int) -> Int {
    var reverseN = String(String(n, radix: 3).reversed())
    return Int(String(reverseN), radix: 3) ?? 0
}
