import Foundation

func solution(_ n:Int) -> Int {
    guard n >= 1, n <= 100 else {return -1289372189}
    
    return Int(ceil(Double(n) / 7.0))
}
