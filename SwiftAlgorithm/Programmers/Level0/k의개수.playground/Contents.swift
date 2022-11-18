import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
var str = ""
for re in i...j {
    str += String(re)
}

var count = 0
for i in str.map({$0}) {
    if String(i) == String(k) {
        count += 1
    }
}
    
    return count
}
