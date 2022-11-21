import Foundation

func solution(_ n:Int) -> Int {
    var add = 1
    var res = 1

    while res <= n {
        if res * add >= n {
           break
        }
        res += res * add
        add += 1
    }
    
    return add
}

