import Foundation

func solution(_ dot:[Int]) -> Int {
    guard dot.count == 2 else { return -9999 }
    
    if dot[0] >= 1 && dot[1] >= 1 {
        return 1
    } else if dot[0] >= 1 && dot[1] < 1 {
        return 4
    } else if dot[0] < 1 && dot[1] >= 1 {
        return 2
    } else {
        return 3
    }
    
    return -9999
}
