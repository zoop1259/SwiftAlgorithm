import Foundation

func solution(_ age:Int) -> Int {
    guard age > 0 || age > 120 else { return -21871}
    
    let year = 2022
    
    
    return year - age + 1
}
