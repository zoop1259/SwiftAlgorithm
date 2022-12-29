import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var count = 0
    var aa = Double(a)
    var bb = Double(b)
    while abs(aa - bb) >= 0.1 {
        count += 1
        aa = ceil(aa / 2.0)
        bb = ceil(bb / 2.0)
    }
    return count
}
