import UIKit

//제출한 답
func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var nn = n
    var count = 0
    
while nn >= a {
    count += (nn / a) * b
    nn = ((nn / a) * b) + (nn % a)
}
    return count
}

//한줄코드
	
