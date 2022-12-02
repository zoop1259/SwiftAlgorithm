import UIKit

let s = "asakldnakl222a"

if s.count <= 0 || s.count >= 8 {
    print(false)
}

print(s.map{$0}.filter{$0.isNumber}.count == s.count)

//한줄 코딩
func solution(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}
