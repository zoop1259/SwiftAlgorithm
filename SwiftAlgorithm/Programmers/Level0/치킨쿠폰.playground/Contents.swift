import Foundation

func solution(_ chicken:Int) -> Int {
    
    if chicken <= 9 {
        return 0
    }
    
    var chicken2 = chicken
    var leftChik = 0
    var count = 0
    while chicken2 >= 10 {
        count += chicken2 / 10
        leftChik += chicken2 % 10
        chicken2 = chicken2 / 10
    }
    leftChik += chicken2
    
    while leftChik >= 10 {
        count += leftChik / 10
        leftChik = (leftChik / 10) + (leftChik % 10)
    }
    return count
}


//하..
import Foundation

func solution2(_ chicken:Int) -> Int {
    var c = chicken
    var s = 0

    while c >= 10 {
        s += c/10
        c = c/10+c%10
    }
    return s
}
