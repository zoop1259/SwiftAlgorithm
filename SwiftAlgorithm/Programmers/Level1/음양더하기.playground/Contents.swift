import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var ab = absolutes
    
    for i in 0..<signs.count {
        if signs[i] == false {
            ab[i] = -ab[i]
        }
    }
    
    return ab.reduce(0,+)
}
