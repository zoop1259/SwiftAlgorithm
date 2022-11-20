import Foundation

func solution(_ n:Int) -> [Int] {
    var num = n
    var arr = [Int]()

for i in stride(from: 2, to: num, by: 1) {
    while num % i == 0 {
        num /= i
        if arr.contains(i) == false {
            arr.append(i)
        }
    }
}
    
if num != 1 {
    arr.append(num)
}
    
    
    return arr
}
