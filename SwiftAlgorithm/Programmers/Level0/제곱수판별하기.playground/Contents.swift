import Foundation

func solution(_ n:Int) -> Int {
    let sqrts = Int(sqrt(Double(n)))
    return sqrts * sqrts == n ? 1 : 2
}
