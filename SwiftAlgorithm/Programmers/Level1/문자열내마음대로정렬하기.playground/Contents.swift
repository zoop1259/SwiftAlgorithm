//제출한답
func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by: <).sorted { Array($0)[n] < Array($1)[n] }
}

//삽질
import UIKit

//var strings = ["sun", "bed", "car"]
//let n = 1

let strings = ["abce", "abcd", "cdx"]
let n = 2

var a = strings.firstIndex(of: strings[n])

var b = strings[n]

var c = strings.index(strings.startIndex, offsetBy: n)

//var d = strings.sorted(by: { $0.index(strings.startIndex, offsetBy: n) > $1.index(strings.startIndex, offsetBy: n)})
var d = strings.sorted(by: <).sorted { Array($0)[n] < Array($1)[n] }


print(d)
