import UIKit

func solution(_ n:Int) -> [Int] {
    var arr = [Int]()
    
    for i in 1...n {
        if n % i == 0 {
            arr.append(i)
        }
    }
    
    return arr
}
func solution2(_ n: Int) -> [Int] { (1...n).filter { n % $0 == 0 } }
