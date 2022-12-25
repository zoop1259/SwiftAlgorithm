import UIKit

//폰 번호 가리기
func solution(_ phone_number:String) -> String {
    let a = phone_number.map { String($0) }
    let lastnumber = a.suffix(4)
    var res = ""
    
    for _ in 0..<a.count - 4 {
        res += "*"
    }
    res += lastnumber.reduce("", +)
    return res
}
