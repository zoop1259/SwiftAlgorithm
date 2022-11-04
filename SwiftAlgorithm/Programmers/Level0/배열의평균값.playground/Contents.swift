import Foundation

func solution(_ numbers:[Int]) -> Double {
    
    var reducer = numbers.reduce(0, +)
    var cul: Double = Double(reducer) / Double(numbers.count)
    
    
    return cul
}
